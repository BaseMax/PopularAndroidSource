package com.mapbox.android.a;

import android.content.Context;
import java.io.File;
import java.util.Arrays;
import java.util.Comparator;

public final class a {

    /* renamed from: com.mapbox.android.a.a$a  reason: collision with other inner class name */
    public static final class C0092a implements Comparator<File> {
        public final int compare(File file, File file2) {
            long lastModified = file.lastModified();
            long lastModified2 = file2.lastModified();
            if (lastModified < lastModified2) {
                return -1;
            }
            return lastModified == lastModified2 ? 0 : 1;
        }
    }

    private a() {
    }

    public static File getFile(Context context, String str) {
        return new File(context.getFilesDir(), str);
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:6:0x001f */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String readFromFile(java.io.File r4) throws java.io.FileNotFoundException {
        /*
            java.io.FileInputStream r0 = new java.io.FileInputStream
            r0.<init>(r4)
            java.io.InputStreamReader r4 = new java.io.InputStreamReader
            r4.<init>(r0)
            java.io.StringWriter r0 = new java.io.StringWriter
            r0.<init>()
            r1 = 4096(0x1000, float:5.74E-42)
            char[] r1 = new char[r1]     // Catch:{ IOException -> 0x001f, all -> 0x0023 }
        L_0x0013:
            int r2 = r4.read(r1)     // Catch:{ IOException -> 0x001f, all -> 0x0023 }
            r3 = -1
            if (r2 == r3) goto L_0x001f
            r3 = 0
            r0.write(r1, r3, r2)     // Catch:{ IOException -> 0x001f, all -> 0x0023 }
            goto L_0x0013
        L_0x001f:
            r4.close()     // Catch:{ IOException -> 0x0028 }
            goto L_0x0028
        L_0x0023:
            r0 = move-exception
            r4.close()     // Catch:{ IOException -> 0x0027 }
        L_0x0027:
            throw r0
        L_0x0028:
            java.lang.String r4 = r0.toString()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.android.a.a.readFromFile(java.io.File):java.lang.String");
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:12:0x001b */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void writeToFile(java.io.File r2, java.lang.String r3) throws java.io.IOException {
        /*
            java.io.OutputStreamWriter r0 = new java.io.OutputStreamWriter
            java.io.FileOutputStream r1 = new java.io.FileOutputStream
            r1.<init>(r2)
            java.lang.String r2 = "UTF-8"
            r0.<init>(r1, r2)
            r0.write(r3)     // Catch:{ IOException -> 0x001b, all -> 0x0016 }
            r0.flush()     // Catch:{ IOException -> 0x001b, all -> 0x0016 }
            r0.close()     // Catch:{ IOException -> 0x0015 }
        L_0x0015:
            return
        L_0x0016:
            r2 = move-exception
            r0.close()     // Catch:{ IOException -> 0x001a }
        L_0x001a:
            throw r2
        L_0x001b:
            r0.close()     // Catch:{ IOException -> 0x001e }
        L_0x001e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.android.a.a.writeToFile(java.io.File, java.lang.String):void");
    }

    public static void deleteFile(File file) {
        if (!file.delete()) {
            new StringBuilder("Could not delete file: ").append(file);
        }
    }

    public static File[] listAllFiles(File file) {
        if (file == null) {
            return new File[0];
        }
        File[] listFiles = file.listFiles();
        return listFiles != null ? listFiles : new File[0];
    }

    public static void deleteFirst(File[] fileArr, Comparator<File> comparator, int i) {
        Arrays.sort(fileArr, comparator);
        int min = Math.min(fileArr.length, i);
        for (int i2 = 0; i2 < min; i2++) {
            if (!fileArr[i2].delete()) {
                new StringBuilder("Failed to delete file: ").append(fileArr[i2]);
            }
        }
    }
}
