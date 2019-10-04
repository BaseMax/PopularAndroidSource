package com.getkeepsafe.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.getkeepsafe.a.c;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public final class a implements c.a {

    /* renamed from: com.getkeepsafe.a.a$a  reason: collision with other inner class name */
    static class C0051a {
        public ZipEntry zipEntry;
        public ZipFile zipFile;

        public C0051a(ZipFile zipFile2, ZipEntry zipEntry2) {
            this.zipFile = zipFile2;
            this.zipEntry = zipEntry2;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:71:0x00a7 A[SYNTHETIC, Splitter:B:71:0x00a7] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void installLibrary(android.content.Context r11, java.lang.String[] r12, java.lang.String r13, java.io.File r14, com.getkeepsafe.a.d r15) {
        /*
            r10 = this;
            r0 = 0
            com.getkeepsafe.a.a$a r11 = a(r11, r12, r13, r15)     // Catch:{ all -> 0x00a3 }
            if (r11 == 0) goto L_0x009b
            r12 = 0
            r1 = 0
        L_0x0009:
            int r2 = r1 + 1
            r3 = 5
            if (r1 >= r3) goto L_0x0089
            java.lang.String r1 = "Found %s! Extracting..."
            r3 = 1
            java.lang.Object[] r4 = new java.lang.Object[r3]     // Catch:{ all -> 0x00a1 }
            r4[r12] = r13     // Catch:{ all -> 0x00a1 }
            r15.log(r1, r4)     // Catch:{ all -> 0x00a1 }
            boolean r1 = r14.exists()     // Catch:{ IOException -> 0x0087 }
            if (r1 != 0) goto L_0x0026
            boolean r1 = r14.createNewFile()     // Catch:{ IOException -> 0x0087 }
            if (r1 != 0) goto L_0x0026
            goto L_0x0087
        L_0x0026:
            java.util.zip.ZipFile r1 = r11.zipFile     // Catch:{ FileNotFoundException -> 0x0081, IOException -> 0x007b, all -> 0x0072 }
            java.util.zip.ZipEntry r4 = r11.zipEntry     // Catch:{ FileNotFoundException -> 0x0081, IOException -> 0x007b, all -> 0x0072 }
            java.io.InputStream r1 = r1.getInputStream(r4)     // Catch:{ FileNotFoundException -> 0x0081, IOException -> 0x007b, all -> 0x0072 }
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch:{ FileNotFoundException -> 0x0070, IOException -> 0x006e, all -> 0x006c }
            r4.<init>(r14)     // Catch:{ FileNotFoundException -> 0x0070, IOException -> 0x006e, all -> 0x006c }
            long r5 = a(r1, r4)     // Catch:{ FileNotFoundException -> 0x0083, IOException -> 0x007d, all -> 0x0069 }
            java.io.FileDescriptor r7 = r4.getFD()     // Catch:{ FileNotFoundException -> 0x0083, IOException -> 0x007d, all -> 0x0069 }
            r7.sync()     // Catch:{ FileNotFoundException -> 0x0083, IOException -> 0x007d, all -> 0x0069 }
            long r7 = r14.length()     // Catch:{ FileNotFoundException -> 0x0083, IOException -> 0x007d, all -> 0x0069 }
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 == 0) goto L_0x004d
            a(r1)     // Catch:{ all -> 0x00a1 }
        L_0x0049:
            a(r4)     // Catch:{ all -> 0x00a1 }
            goto L_0x0087
        L_0x004d:
            a(r1)     // Catch:{ all -> 0x00a1 }
            a(r4)     // Catch:{ all -> 0x00a1 }
            r14.setReadable(r3, r12)     // Catch:{ all -> 0x00a1 }
            r14.setExecutable(r3, r12)     // Catch:{ all -> 0x00a1 }
            r14.setWritable(r3)     // Catch:{ all -> 0x00a1 }
            if (r11 == 0) goto L_0x0068
            java.util.zip.ZipFile r12 = r11.zipFile     // Catch:{ IOException -> 0x0068 }
            if (r12 == 0) goto L_0x0068
            java.util.zip.ZipFile r11 = r11.zipFile     // Catch:{ IOException -> 0x0068 }
            r11.close()     // Catch:{ IOException -> 0x0068 }
        L_0x0068:
            return
        L_0x0069:
            r12 = move-exception
            r0 = r4
            goto L_0x0074
        L_0x006c:
            r12 = move-exception
            goto L_0x0074
        L_0x006e:
            r4 = r0
            goto L_0x007d
        L_0x0070:
            r4 = r0
            goto L_0x0083
        L_0x0072:
            r12 = move-exception
            r1 = r0
        L_0x0074:
            a(r1)     // Catch:{ all -> 0x00a1 }
            a(r0)     // Catch:{ all -> 0x00a1 }
            throw r12     // Catch:{ all -> 0x00a1 }
        L_0x007b:
            r1 = r0
            r4 = r1
        L_0x007d:
            a(r1)     // Catch:{ all -> 0x00a1 }
            goto L_0x0049
        L_0x0081:
            r1 = r0
            r4 = r1
        L_0x0083:
            a(r1)     // Catch:{ all -> 0x00a1 }
            goto L_0x0049
        L_0x0087:
            r1 = r2
            goto L_0x0009
        L_0x0089:
            java.lang.String r12 = "FATAL! Couldn't extract the library from the APK!"
            r15.log((java.lang.String) r12)     // Catch:{ all -> 0x00a1 }
            if (r11 == 0) goto L_0x009a
            java.util.zip.ZipFile r12 = r11.zipFile     // Catch:{ IOException -> 0x009a }
            if (r12 == 0) goto L_0x009a
            java.util.zip.ZipFile r11 = r11.zipFile     // Catch:{ IOException -> 0x009a }
            r11.close()     // Catch:{ IOException -> 0x009a }
        L_0x009a:
            return
        L_0x009b:
            com.getkeepsafe.a.b r12 = new com.getkeepsafe.a.b     // Catch:{ all -> 0x00a1 }
            r12.<init>(r13)     // Catch:{ all -> 0x00a1 }
            throw r12     // Catch:{ all -> 0x00a1 }
        L_0x00a1:
            r12 = move-exception
            goto L_0x00a5
        L_0x00a3:
            r12 = move-exception
            r11 = r0
        L_0x00a5:
            if (r11 == 0) goto L_0x00b0
            java.util.zip.ZipFile r13 = r11.zipFile     // Catch:{ IOException -> 0x00b0 }
            if (r13 == 0) goto L_0x00b0
            java.util.zip.ZipFile r11 = r11.zipFile     // Catch:{ IOException -> 0x00b0 }
            r11.close()     // Catch:{ IOException -> 0x00b0 }
        L_0x00b0:
            goto L_0x00b2
        L_0x00b1:
            throw r12
        L_0x00b2:
            goto L_0x00b1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.getkeepsafe.a.a.installLibrary(android.content.Context, java.lang.String[], java.lang.String, java.io.File, com.getkeepsafe.a.d):void");
    }

    private static long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
                j += (long) read;
            } else {
                outputStream.flush();
                return j;
            }
        }
    }

    private static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private static C0051a a(Context context, String[] strArr, String str, d dVar) {
        String[] strArr2;
        String[] strArr3 = strArr;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        char c = 0;
        int i = 1;
        if (Build.VERSION.SDK_INT < 21 || applicationInfo.splitSourceDirs == null || applicationInfo.splitSourceDirs.length == 0) {
            strArr2 = new String[]{applicationInfo.sourceDir};
        } else {
            strArr2 = new String[(applicationInfo.splitSourceDirs.length + 1)];
            strArr2[0] = applicationInfo.sourceDir;
            System.arraycopy(applicationInfo.splitSourceDirs, 0, strArr2, 1, applicationInfo.splitSourceDirs.length);
        }
        int length = strArr2.length;
        ZipFile zipFile = null;
        int i2 = 0;
        while (i2 < length) {
            String str2 = strArr2[i2];
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (i3 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), i);
                    break;
                } catch (IOException unused) {
                    i3 = i4;
                }
            }
            if (zipFile != null) {
                int i5 = 0;
                while (true) {
                    int i6 = i5 + 1;
                    if (i5 < 5) {
                        int length2 = strArr3.length;
                        int i7 = 0;
                        while (i7 < length2) {
                            String str3 = strArr3[i7];
                            String str4 = "lib" + File.separatorChar + str3 + File.separatorChar + str;
                            Object[] objArr = new Object[2];
                            objArr[c] = str4;
                            objArr[i] = str2;
                            dVar.log("Looking for %s in APK %s...", objArr);
                            ZipEntry entry = zipFile.getEntry(str4);
                            if (entry != null) {
                                return new C0051a(zipFile, entry);
                            }
                            i7++;
                            c = 0;
                            i = 1;
                        }
                        String str5 = str;
                        d dVar2 = dVar;
                        i5 = i6;
                        i = 1;
                    } else {
                        String str6 = str;
                        d dVar3 = dVar;
                        try {
                            zipFile.close();
                            break;
                        } catch (IOException unused2) {
                        }
                    }
                }
            } else {
                String str7 = str;
                d dVar4 = dVar;
            }
            i2++;
            c = 0;
            i = 1;
        }
        return null;
    }
}
