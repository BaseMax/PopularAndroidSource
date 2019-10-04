package androidx.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import b.v.c;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
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

public final class MultiDexExtractor implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public final File f734a;

    /* renamed from: b  reason: collision with root package name */
    public final long f735b;

    /* renamed from: c  reason: collision with root package name */
    public final File f736c;

    /* renamed from: d  reason: collision with root package name */
    public final RandomAccessFile f737d;

    /* renamed from: e  reason: collision with root package name */
    public final FileChannel f738e;

    /* renamed from: f  reason: collision with root package name */
    public final FileLock f739f;

    private static class ExtractedDex extends File {
        public long crc = -1;

        public ExtractedDex(File file, String str) {
            super(file, str);
        }
    }

    public MultiDexExtractor(File file, File file2) {
        Log.i("MultiDex", "MultiDexExtractor(" + file.getPath() + ", " + file2.getPath() + ")");
        this.f734a = file;
        this.f736c = file2;
        this.f735b = b(file);
        File file3 = new File(file2, "MultiDex.lock");
        this.f737d = new RandomAccessFile(file3, "rw");
        try {
            this.f738e = this.f737d.getChannel();
            try {
                Log.i("MultiDex", "Blocking on lock " + file3.getPath());
                this.f739f = this.f738e.lock();
                Log.i("MultiDex", file3.getPath() + " locked");
            } catch (IOException e2) {
                e = e2;
                a((Closeable) this.f738e);
                throw e;
            } catch (RuntimeException e3) {
                e = e3;
                a((Closeable) this.f738e);
                throw e;
            } catch (Error e4) {
                e = e4;
                a((Closeable) this.f738e);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e5) {
            a((Closeable) this.f737d);
            throw e5;
        }
    }

    public static long b(File file) {
        long a2 = c.a(file);
        return a2 == -1 ? a2 - 1 : a2;
    }

    public List<? extends File> a(Context context, String str, boolean z) {
        List<ExtractedDex> list;
        Log.i("MultiDex", "MultiDexExtractor.load(" + this.f734a.getPath() + ", " + z + ", " + str + ")");
        if (this.f739f.isValid()) {
            if (z || a(context, this.f734a, this.f735b, str)) {
                if (z) {
                    Log.i("MultiDex", "Forced extraction must be performed.");
                } else {
                    Log.i("MultiDex", "Detected that extraction must be performed.");
                }
                list = t();
                a(context, str, a(this.f734a), this.f735b, list);
            } else {
                try {
                    list = a(context, str);
                } catch (IOException e2) {
                    Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", e2);
                    list = t();
                    a(context, str, a(this.f734a), this.f735b, list);
                }
            }
            Log.i("MultiDex", "load found " + list.size() + " secondary dex files");
            return list;
        }
        throw new IllegalStateException("MultiDexExtractor was closed");
    }

    public void close() {
        this.f739f.release();
        this.f738e.close();
        this.f737d.close();
    }

    public final void s() {
        File[] listFiles = this.f736c.listFiles(new b(this));
        if (listFiles == null) {
            Log.w("MultiDex", "Failed to list secondary dex dir content (" + this.f736c.getPath() + ").");
            return;
        }
        for (File length : listFiles) {
            Log.i("MultiDex", "Trying to delete old file " + length.getPath() + " of size " + length.length());
            if (!listFiles[r3].delete()) {
                Log.w("MultiDex", "Failed to delete old file " + length.getPath());
            } else {
                Log.i("MultiDex", "Deleted old file " + length.getPath());
            }
        }
    }

    public final List<ExtractedDex> t() {
        ExtractedDex extractedDex;
        boolean z;
        String str = this.f734a.getName() + ".classes";
        s();
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.f734a);
        try {
            ZipEntry entry = zipFile.getEntry("classes" + 2 + ".dex");
            int i2 = 2;
            while (entry != null) {
                extractedDex = new ExtractedDex(this.f736c, str + i2 + ".zip");
                arrayList.add(extractedDex);
                Log.i("MultiDex", "Extraction is needed for file " + extractedDex);
                int i3 = 0;
                boolean z2 = false;
                while (i3 < 3 && !z2) {
                    int i4 = i3 + 1;
                    a(zipFile, entry, (File) extractedDex, str);
                    extractedDex.crc = b(extractedDex);
                    z = true;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Extraction ");
                    sb.append(z ? "succeeded" : "failed");
                    sb.append(" '");
                    sb.append(extractedDex.getAbsolutePath());
                    sb.append("': length ");
                    int i5 = i4;
                    sb.append(extractedDex.length());
                    sb.append(" - crc: ");
                    sb.append(extractedDex.crc);
                    Log.i("MultiDex", sb.toString());
                    if (!z) {
                        extractedDex.delete();
                        if (extractedDex.exists()) {
                            Log.w("MultiDex", "Failed to delete corrupted secondary dex '" + extractedDex.getPath() + "'");
                        }
                    }
                    z2 = z;
                    i3 = i5;
                }
                if (z2) {
                    i2++;
                    entry = zipFile.getEntry("classes" + i2 + ".dex");
                } else {
                    throw new IOException("Could not create zip file " + extractedDex.getAbsolutePath() + " for secondary dex (" + i2 + ")");
                }
            }
            try {
                zipFile.close();
            } catch (IOException e2) {
                Log.w("MultiDex", "Failed to close resource", e2);
            }
            return arrayList;
        } catch (IOException e3) {
            Log.w("MultiDex", "Failed to read crc from " + extractedDex.getAbsolutePath(), e3);
            z = false;
        } catch (Throwable th) {
            Throwable th2 = th;
            try {
                zipFile.close();
            } catch (IOException e4) {
                Log.w("MultiDex", "Failed to close resource", e4);
            }
            throw th2;
        }
    }

    public final List<ExtractedDex> a(Context context, String str) {
        String str2 = str;
        Log.i("MultiDex", "loading existing secondary dex files");
        String str3 = this.f734a.getName() + ".classes";
        SharedPreferences a2 = a(context);
        int i2 = a2.getInt(str2 + "dex.number", 1);
        ArrayList arrayList = new ArrayList(i2 + -1);
        int i3 = 2;
        while (i3 <= i2) {
            ExtractedDex extractedDex = new ExtractedDex(this.f736c, str3 + i3 + ".zip");
            if (extractedDex.isFile()) {
                extractedDex.crc = b(extractedDex);
                long j2 = a2.getLong(str2 + "dex.crc." + i3, -1);
                if (a2.getLong(str2 + "dex.time." + i3, -1) == extractedDex.lastModified()) {
                    String str4 = str3;
                    SharedPreferences sharedPreferences = a2;
                    if (j2 == extractedDex.crc) {
                        arrayList.add(extractedDex);
                        i3++;
                        a2 = sharedPreferences;
                        str3 = str4;
                    }
                }
                throw new IOException("Invalid extracted dex: " + extractedDex + " (key \"" + str2 + "\"), expected modification time: " + r9 + ", modification time: " + r13 + ", expected crc: " + j2 + ", file crc: " + extractedDex.crc);
            }
            throw new IOException("Missing extracted secondary dex file '" + extractedDex.getPath() + "'");
        }
        return arrayList;
    }

    public static boolean a(Context context, File file, long j2, String str) {
        SharedPreferences a2 = a(context);
        if (a2.getLong(str + "timestamp", -1) == a(file)) {
            if (a2.getLong(str + "crc", -1) == j2) {
                return false;
            }
        }
        return true;
    }

    public static long a(File file) {
        long lastModified = file.lastModified();
        return lastModified == -1 ? lastModified - 1 : lastModified;
    }

    public static void a(Context context, String str, long j2, long j3, List<ExtractedDex> list) {
        SharedPreferences.Editor edit = a(context).edit();
        edit.putLong(str + "timestamp", j2);
        edit.putLong(str + "crc", j3);
        edit.putInt(str + "dex.number", list.size() + 1);
        int i2 = 2;
        for (ExtractedDex next : list) {
            edit.putLong(str + "dex.crc." + i2, next.crc);
            edit.putLong(str + "dex.time." + i2, next.lastModified());
            i2++;
        }
        edit.commit();
    }

    public static SharedPreferences a(Context context) {
        return context.getSharedPreferences("multidex.version", Build.VERSION.SDK_INT < 11 ? 0 : 4);
    }

    public static void a(ZipFile zipFile, ZipEntry zipEntry, File file, String str) {
        ZipOutputStream zipOutputStream;
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File createTempFile = File.createTempFile("tmp-" + str, ".zip", file.getParentFile());
        Log.i("MultiDex", "Extracting " + createTempFile.getPath());
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
                Log.i("MultiDex", "Renaming to " + file.getPath());
                if (createTempFile.renameTo(file)) {
                    a((Closeable) inputStream);
                    createTempFile.delete();
                    return;
                }
                throw new IOException("Failed to rename \"" + createTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
            }
            throw new IOException("Failed to mark readonly \"" + createTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
        } catch (Throwable th) {
            a((Closeable) inputStream);
            createTempFile.delete();
            throw th;
        }
    }

    public static void a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e2) {
            Log.w("MultiDex", "Failed to close resource", e2);
        }
    }
}
