package androidx.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

final class MultiDexExtractor implements Closeable {
    private static final int BUFFER_SIZE = 16384;
    private static final String DEX_PREFIX = "classes";
    static final String DEX_SUFFIX = ".dex";
    private static final String EXTRACTED_NAME_EXT = ".classes";
    static final String EXTRACTED_SUFFIX = ".zip";
    private static final String KEY_CRC = "crc";
    private static final String KEY_DEX_CRC = "dex.crc.";
    private static final String KEY_DEX_NUMBER = "dex.number";
    private static final String KEY_DEX_TIME = "dex.time.";
    private static final String KEY_TIME_STAMP = "timestamp";
    private static final String LOCK_FILENAME = "MultiDex.lock";
    private static final int MAX_EXTRACT_ATTEMPTS = 3;
    private static final long NO_VALUE = -1;
    private static final String PREFS_FILE = "multidex.version";
    private static final String TAG = "MultiDex";
    private final FileLock cacheLock;
    private final File dexDir;
    private final FileChannel lockChannel;
    private final RandomAccessFile lockRaf;
    private final File sourceApk;
    private final long sourceCrc;

    static class ExtractedDex extends File {
        public long crc = -1;

        public ExtractedDex(File file, String str) {
            super(file, str);
        }
    }

    MultiDexExtractor(File file, File file2) throws IOException {
        StringBuilder sb = new StringBuilder("MultiDexExtractor(");
        sb.append(file.getPath());
        sb.append(", ");
        sb.append(file2.getPath());
        sb.append(")");
        this.sourceApk = file;
        this.dexDir = file2;
        this.sourceCrc = getZipCrc(file);
        File file3 = new File(file2, LOCK_FILENAME);
        this.lockRaf = new RandomAccessFile(file3, "rw");
        try {
            this.lockChannel = this.lockRaf.getChannel();
            try {
                new StringBuilder("Blocking on lock ").append(file3.getPath());
                this.cacheLock = this.lockChannel.lock();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(file3.getPath());
                sb2.append(" locked");
            } catch (IOException e) {
                e = e;
                closeQuietly(this.lockChannel);
                throw e;
            } catch (RuntimeException e2) {
                e = e2;
                closeQuietly(this.lockChannel);
                throw e;
            } catch (Error e3) {
                e = e3;
                closeQuietly(this.lockChannel);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e4) {
            closeQuietly(this.lockRaf);
            throw e4;
        }
    }

    /* access modifiers changed from: package-private */
    public final List<? extends File> load(Context context, String str, boolean z) throws IOException {
        List<ExtractedDex> list;
        StringBuilder sb = new StringBuilder("MultiDexExtractor.load(");
        sb.append(this.sourceApk.getPath());
        sb.append(", ");
        sb.append(z);
        sb.append(", ");
        sb.append(str);
        sb.append(")");
        if (this.cacheLock.isValid()) {
            if (!z && !isModified(context, this.sourceApk, this.sourceCrc, str)) {
                try {
                    list = loadExistingExtractions(context, str);
                } catch (IOException unused) {
                }
                StringBuilder sb2 = new StringBuilder("load found ");
                sb2.append(list.size());
                sb2.append(" secondary dex files");
                return list;
            }
            List<ExtractedDex> performExtractions = performExtractions();
            putStoredApkInfo(context, str, getTimeStamp(this.sourceApk), this.sourceCrc, performExtractions);
            list = performExtractions;
            StringBuilder sb22 = new StringBuilder("load found ");
            sb22.append(list.size());
            sb22.append(" secondary dex files");
            return list;
        }
        throw new IllegalStateException("MultiDexExtractor was closed");
    }

    public final void close() throws IOException {
        this.cacheLock.release();
        this.lockChannel.close();
        this.lockRaf.close();
    }

    private List<ExtractedDex> loadExistingExtractions(Context context, String str) throws IOException {
        String str2 = str;
        String str3 = this.sourceApk.getName() + EXTRACTED_NAME_EXT;
        SharedPreferences multiDexPreferences = getMultiDexPreferences(context);
        int i = multiDexPreferences.getInt(str2 + KEY_DEX_NUMBER, 1);
        ArrayList arrayList = new ArrayList(i + -1);
        int i2 = 2;
        while (i2 <= i) {
            ExtractedDex extractedDex = new ExtractedDex(this.dexDir, str3 + i2 + EXTRACTED_SUFFIX);
            if (extractedDex.isFile()) {
                extractedDex.crc = getZipCrc(extractedDex);
                long j = multiDexPreferences.getLong(str2 + KEY_DEX_CRC + i2, -1);
                if (multiDexPreferences.getLong(str2 + KEY_DEX_TIME + i2, -1) == extractedDex.lastModified()) {
                    String str4 = str3;
                    SharedPreferences sharedPreferences = multiDexPreferences;
                    if (j == extractedDex.crc) {
                        arrayList.add(extractedDex);
                        i2++;
                        multiDexPreferences = sharedPreferences;
                        str3 = str4;
                    }
                }
                throw new IOException("Invalid extracted dex: " + extractedDex + " (key \"" + str2 + "\"), expected modification time: " + r9 + ", modification time: " + r13 + ", expected crc: " + j + ", file crc: " + extractedDex.crc);
            }
            throw new IOException("Missing extracted secondary dex file '" + extractedDex.getPath() + "'");
        }
        return arrayList;
    }

    private static boolean isModified(Context context, File file, long j, String str) {
        SharedPreferences multiDexPreferences = getMultiDexPreferences(context);
        if (multiDexPreferences.getLong(str + "timestamp", -1) == getTimeStamp(file)) {
            if (multiDexPreferences.getLong(str + KEY_CRC, -1) == j) {
                return false;
            }
        }
        return true;
    }

    private static long getTimeStamp(File file) {
        long lastModified = file.lastModified();
        return lastModified == -1 ? lastModified - 1 : lastModified;
    }

    private static long getZipCrc(File file) throws IOException {
        long zipCrc = ZipUtil.getZipCrc(file);
        return zipCrc == -1 ? zipCrc - 1 : zipCrc;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(2:12|13) */
    /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
        new java.lang.StringBuilder("Failed to read crc from ").append(r6.getAbsolutePath());
        r8 = false;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:12:0x006c */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.List<androidx.multidex.MultiDexExtractor.ExtractedDex> performExtractions() throws java.io.IOException {
        /*
            r12 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.io.File r1 = r12.sourceApk
            java.lang.String r1 = r1.getName()
            r0.append(r1)
            java.lang.String r1 = ".classes"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r12.clearDexDir()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.zip.ZipFile r2 = new java.util.zip.ZipFile
            java.io.File r3 = r12.sourceApk
            r2.<init>(r3)
            r3 = 2
            java.lang.String r4 = "classes2.dex"
            java.util.zip.ZipEntry r4 = r2.getEntry(r4)     // Catch:{ all -> 0x0113 }
        L_0x002d:
            if (r4 == 0) goto L_0x010f
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x0113 }
            r5.<init>()     // Catch:{ all -> 0x0113 }
            r5.append(r0)     // Catch:{ all -> 0x0113 }
            r5.append(r3)     // Catch:{ all -> 0x0113 }
            java.lang.String r6 = ".zip"
            r5.append(r6)     // Catch:{ all -> 0x0113 }
            java.lang.String r5 = r5.toString()     // Catch:{ all -> 0x0113 }
            androidx.multidex.MultiDexExtractor$ExtractedDex r6 = new androidx.multidex.MultiDexExtractor$ExtractedDex     // Catch:{ all -> 0x0113 }
            java.io.File r7 = r12.dexDir     // Catch:{ all -> 0x0113 }
            r6.<init>(r7, r5)     // Catch:{ all -> 0x0113 }
            r1.add(r6)     // Catch:{ all -> 0x0113 }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x0113 }
            java.lang.String r7 = "Extraction is needed for file "
            r5.<init>(r7)     // Catch:{ all -> 0x0113 }
            r5.append(r6)     // Catch:{ all -> 0x0113 }
            r5 = 0
            r7 = 0
            r8 = 0
        L_0x005a:
            r9 = 3
            if (r7 >= r9) goto L_0x00cd
            if (r8 != 0) goto L_0x00cd
            int r7 = r7 + 1
            extract(r2, r4, r6, r0)     // Catch:{ all -> 0x0113 }
            long r8 = getZipCrc(r6)     // Catch:{ IOException -> 0x006c }
            r6.crc = r8     // Catch:{ IOException -> 0x006c }
            r8 = 1
            goto L_0x007b
        L_0x006c:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ all -> 0x0113 }
            java.lang.String r9 = "Failed to read crc from "
            r8.<init>(r9)     // Catch:{ all -> 0x0113 }
            java.lang.String r9 = r6.getAbsolutePath()     // Catch:{ all -> 0x0113 }
            r8.append(r9)     // Catch:{ all -> 0x0113 }
            r8 = 0
        L_0x007b:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ all -> 0x0113 }
            java.lang.String r10 = "Extraction "
            r9.<init>(r10)     // Catch:{ all -> 0x0113 }
            if (r8 == 0) goto L_0x0087
            java.lang.String r10 = "succeeded"
            goto L_0x0089
        L_0x0087:
            java.lang.String r10 = "failed"
        L_0x0089:
            r9.append(r10)     // Catch:{ all -> 0x0113 }
            java.lang.String r10 = " '"
            r9.append(r10)     // Catch:{ all -> 0x0113 }
            java.lang.String r10 = r6.getAbsolutePath()     // Catch:{ all -> 0x0113 }
            r9.append(r10)     // Catch:{ all -> 0x0113 }
            java.lang.String r10 = "': length "
            r9.append(r10)     // Catch:{ all -> 0x0113 }
            long r10 = r6.length()     // Catch:{ all -> 0x0113 }
            r9.append(r10)     // Catch:{ all -> 0x0113 }
            java.lang.String r10 = " - crc: "
            r9.append(r10)     // Catch:{ all -> 0x0113 }
            long r10 = r6.crc     // Catch:{ all -> 0x0113 }
            r9.append(r10)     // Catch:{ all -> 0x0113 }
            if (r8 != 0) goto L_0x005a
            r6.delete()     // Catch:{ all -> 0x0113 }
            boolean r9 = r6.exists()     // Catch:{ all -> 0x0113 }
            if (r9 == 0) goto L_0x005a
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ all -> 0x0113 }
            java.lang.String r10 = "Failed to delete corrupted secondary dex '"
            r9.<init>(r10)     // Catch:{ all -> 0x0113 }
            java.lang.String r10 = r6.getPath()     // Catch:{ all -> 0x0113 }
            r9.append(r10)     // Catch:{ all -> 0x0113 }
            java.lang.String r10 = "'"
            r9.append(r10)     // Catch:{ all -> 0x0113 }
            goto L_0x005a
        L_0x00cd:
            if (r8 == 0) goto L_0x00ea
            int r3 = r3 + 1
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0113 }
            java.lang.String r5 = "classes"
            r4.<init>(r5)     // Catch:{ all -> 0x0113 }
            r4.append(r3)     // Catch:{ all -> 0x0113 }
            java.lang.String r5 = ".dex"
            r4.append(r5)     // Catch:{ all -> 0x0113 }
            java.lang.String r4 = r4.toString()     // Catch:{ all -> 0x0113 }
            java.util.zip.ZipEntry r4 = r2.getEntry(r4)     // Catch:{ all -> 0x0113 }
            goto L_0x002d
        L_0x00ea:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x0113 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x0113 }
            java.lang.String r4 = "Could not create zip file "
            r1.<init>(r4)     // Catch:{ all -> 0x0113 }
            java.lang.String r4 = r6.getAbsolutePath()     // Catch:{ all -> 0x0113 }
            r1.append(r4)     // Catch:{ all -> 0x0113 }
            java.lang.String r4 = " for secondary dex ("
            r1.append(r4)     // Catch:{ all -> 0x0113 }
            r1.append(r3)     // Catch:{ all -> 0x0113 }
            java.lang.String r3 = ")"
            r1.append(r3)     // Catch:{ all -> 0x0113 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0113 }
            r0.<init>(r1)     // Catch:{ all -> 0x0113 }
            throw r0     // Catch:{ all -> 0x0113 }
        L_0x010f:
            r2.close()     // Catch:{ IOException -> 0x0112 }
        L_0x0112:
            return r1
        L_0x0113:
            r0 = move-exception
            r2.close()     // Catch:{ IOException -> 0x0117 }
        L_0x0117:
            goto L_0x0119
        L_0x0118:
            throw r0
        L_0x0119:
            goto L_0x0118
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.multidex.MultiDexExtractor.performExtractions():java.util.List");
    }

    private static void putStoredApkInfo(Context context, String str, long j, long j2, List<ExtractedDex> list) {
        SharedPreferences.Editor edit = getMultiDexPreferences(context).edit();
        edit.putLong(str + "timestamp", j);
        edit.putLong(str + KEY_CRC, j2);
        edit.putInt(str + KEY_DEX_NUMBER, list.size() + 1);
        int i = 2;
        for (ExtractedDex next : list) {
            edit.putLong(str + KEY_DEX_CRC + i, next.crc);
            edit.putLong(str + KEY_DEX_TIME + i, next.lastModified());
            i++;
        }
        edit.commit();
    }

    private static SharedPreferences getMultiDexPreferences(Context context) {
        return context.getSharedPreferences(PREFS_FILE, Build.VERSION.SDK_INT < 11 ? 0 : 4);
    }

    private void clearDexDir() {
        File[] listFiles = this.dexDir.listFiles(new FileFilter() {
            public boolean accept(File file) {
                return !file.getName().equals(MultiDexExtractor.LOCK_FILENAME);
            }
        });
        if (listFiles == null) {
            StringBuilder sb = new StringBuilder("Failed to list secondary dex dir content (");
            sb.append(this.dexDir.getPath());
            sb.append(").");
            return;
        }
        for (File file : listFiles) {
            StringBuilder sb2 = new StringBuilder("Trying to delete old file ");
            sb2.append(file.getPath());
            sb2.append(" of size ");
            sb2.append(file.length());
            if (!file.delete()) {
                new StringBuilder("Failed to delete old file ").append(file.getPath());
            } else {
                new StringBuilder("Deleted old file ").append(file.getPath());
            }
        }
    }

    private static void extract(ZipFile zipFile, ZipEntry zipEntry, File file, String str) throws IOException, FileNotFoundException {
        ZipOutputStream zipOutputStream;
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File createTempFile = File.createTempFile("tmp-".concat(String.valueOf(str)), EXTRACTED_SUFFIX, file.getParentFile());
        new StringBuilder("Extracting ").append(createTempFile.getPath());
        try {
            zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(createTempFile)));
            ZipEntry zipEntry2 = new ZipEntry("classes.dex");
            zipEntry2.setTime(zipEntry.getTime());
            zipOutputStream.putNextEntry(zipEntry2);
            byte[] bArr = new byte[16384];
            for (int read = inputStream.read(bArr); read != -1; read = inputStream.read(bArr)) {
                zipOutputStream.write(bArr, 0, read);
            }
            zipOutputStream.closeEntry();
            zipOutputStream.close();
            if (createTempFile.setReadOnly()) {
                new StringBuilder("Renaming to ").append(file.getPath());
                if (createTempFile.renameTo(file)) {
                    closeQuietly(inputStream);
                    createTempFile.delete();
                    return;
                }
                throw new IOException("Failed to rename \"" + createTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
            }
            throw new IOException("Failed to mark readonly \"" + createTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
        } catch (Throwable th) {
            closeQuietly(inputStream);
            createTempFile.delete();
            throw th;
        }
    }

    private static void closeQuietly(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }
}
