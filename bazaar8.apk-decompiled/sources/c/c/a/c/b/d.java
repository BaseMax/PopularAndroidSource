package c.c.a.c.b;

import c.c.a.c.c.a;
import h.f.b.j;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.math.BigInteger;

/* compiled from: FileExt.kt */
public final class d {
    public static final boolean a(File file, BigInteger bigInteger) {
        j.b(file, "$this$hashIsSameWith");
        return bigInteger == null || j.a((Object) bigInteger, (Object) b(file));
    }

    public static final BigInteger b(File file) {
        j.b(file, "$this$hash");
        try {
            return new BigInteger(1, a(file, new byte[16384]));
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x002e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final byte[] a(java.io.File r3, byte[] r4) {
        /*
            java.lang.String r0 = "SHA-1"
            java.security.MessageDigest r0 = java.security.MessageDigest.getInstance(r0)
            r1 = 0
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch:{ all -> 0x002a }
            r2.<init>(r3)     // Catch:{ all -> 0x002a }
            int r3 = r2.read(r4)     // Catch:{ all -> 0x0028 }
        L_0x0010:
            if (r3 <= 0) goto L_0x001b
            r1 = 0
            r0.update(r4, r1, r3)     // Catch:{ all -> 0x0028 }
            int r3 = r2.read(r4)     // Catch:{ all -> 0x0028 }
            goto L_0x0010
        L_0x001b:
            r2.close()
            byte[] r3 = r0.digest()
            java.lang.String r4 = "hash.digest()"
            h.f.b.j.a((java.lang.Object) r3, (java.lang.String) r4)
            return r3
        L_0x0028:
            r3 = move-exception
            goto L_0x002c
        L_0x002a:
            r3 = move-exception
            r2 = r1
        L_0x002c:
            if (r2 == 0) goto L_0x0031
            r2.close()
        L_0x0031:
            goto L_0x0033
        L_0x0032:
            throw r3
        L_0x0033:
            goto L_0x0032
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.c.b.d.a(java.io.File, byte[]):byte[]");
    }

    public static final boolean b(File file, File file2) {
        j.b(file, "$this$moveTo");
        j.b(file2, "destination");
        try {
            if (file2.getParentFile() == null) {
                return false;
            }
            a(file2);
            FileInputStream fileInputStream = new FileInputStream(file);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[1024];
            for (int read = fileInputStream.read(bArr); read != -1; read = fileInputStream.read(bArr)) {
                fileOutputStream.write(bArr, 0, read);
            }
            fileInputStream.close();
            fileOutputStream.flush();
            fileOutputStream.close();
            file.delete();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static final boolean a(File file, File file2) {
        j.b(file, "$this$copyTo");
        j.b(file2, "destination");
        try {
            if (file2.getParentFile() == null) {
                return false;
            }
            a(file2);
            FileInputStream fileInputStream = new FileInputStream(file);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[1024];
            for (int read = fileInputStream.read(bArr); read != -1; read = fileInputStream.read(bArr)) {
                fileOutputStream.write(bArr, 0, read);
            }
            fileInputStream.close();
            fileOutputStream.flush();
            fileOutputStream.close();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static final void a(File file) {
        j.b(file, "$this$createParentFileIfNeeded");
        try {
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
        } catch (Exception e2) {
            a.f4699b.b(e2);
        }
    }
}
