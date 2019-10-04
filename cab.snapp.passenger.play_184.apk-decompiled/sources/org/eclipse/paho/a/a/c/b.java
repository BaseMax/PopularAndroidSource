package org.eclipse.paho.a.a.c;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;
import org.eclipse.paho.a.a.a.j;
import org.eclipse.paho.a.a.m;
import org.eclipse.paho.a.a.r;
import org.eclipse.paho.a.a.s;

public final class b implements m {
    private static FilenameFilter d;

    /* renamed from: a  reason: collision with root package name */
    private File f8780a;

    /* renamed from: b  reason: collision with root package name */
    private File f8781b;
    private j c;

    private static FilenameFilter a() {
        if (d == null) {
            d = new d(".msg");
        }
        return d;
    }

    public b() {
        this(System.getProperty("user.dir"));
    }

    public b(String str) {
        this.f8781b = null;
        this.c = null;
        this.f8780a = new File(str);
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(10:21|22|(2:24|(1:26))|27|28|(1:30)|31|32|33|34) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:32:0x0081 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void open(java.lang.String r6, java.lang.String r7) throws org.eclipse.paho.a.a.s {
        /*
            r5 = this;
            java.io.File r0 = r5.f8780a
            boolean r0 = r0.exists()
            if (r0 == 0) goto L_0x0017
            java.io.File r0 = r5.f8780a
            boolean r0 = r0.isDirectory()
            if (r0 == 0) goto L_0x0011
            goto L_0x0017
        L_0x0011:
            org.eclipse.paho.a.a.s r6 = new org.eclipse.paho.a.a.s
            r6.<init>()
            throw r6
        L_0x0017:
            java.io.File r0 = r5.f8780a
            boolean r0 = r0.exists()
            if (r0 != 0) goto L_0x002e
            java.io.File r0 = r5.f8780a
            boolean r0 = r0.mkdirs()
            if (r0 == 0) goto L_0x0028
            goto L_0x002e
        L_0x0028:
            org.eclipse.paho.a.a.s r6 = new org.eclipse.paho.a.a.s
            r6.<init>()
            throw r6
        L_0x002e:
            java.io.File r0 = r5.f8780a
            boolean r0 = r0.canWrite()
            if (r0 == 0) goto L_0x00ab
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            r1 = 0
            r2 = 0
        L_0x003d:
            int r3 = r6.length()
            if (r2 < r3) goto L_0x009b
            java.lang.String r6 = "-"
            r0.append(r6)
        L_0x0048:
            int r6 = r7.length()
            if (r1 < r6) goto L_0x008b
            monitor-enter(r5)
            java.io.File r6 = r5.f8781b     // Catch:{ all -> 0x0088 }
            if (r6 != 0) goto L_0x006d
            java.lang.String r6 = r0.toString()     // Catch:{ all -> 0x0088 }
            java.io.File r7 = new java.io.File     // Catch:{ all -> 0x0088 }
            java.io.File r0 = r5.f8780a     // Catch:{ all -> 0x0088 }
            r7.<init>(r0, r6)     // Catch:{ all -> 0x0088 }
            r5.f8781b = r7     // Catch:{ all -> 0x0088 }
            java.io.File r6 = r5.f8781b     // Catch:{ all -> 0x0088 }
            boolean r6 = r6.exists()     // Catch:{ all -> 0x0088 }
            if (r6 != 0) goto L_0x006d
            java.io.File r6 = r5.f8781b     // Catch:{ all -> 0x0088 }
            r6.mkdir()     // Catch:{ all -> 0x0088 }
        L_0x006d:
            org.eclipse.paho.a.a.a.j r6 = r5.c     // Catch:{ Exception -> 0x0081 }
            if (r6 == 0) goto L_0x0076
            org.eclipse.paho.a.a.a.j r6 = r5.c     // Catch:{ Exception -> 0x0081 }
            r6.release()     // Catch:{ Exception -> 0x0081 }
        L_0x0076:
            org.eclipse.paho.a.a.a.j r6 = new org.eclipse.paho.a.a.a.j     // Catch:{ Exception -> 0x0081 }
            java.io.File r7 = r5.f8781b     // Catch:{ Exception -> 0x0081 }
            java.lang.String r0 = ".lck"
            r6.<init>(r7, r0)     // Catch:{ Exception -> 0x0081 }
            r5.c = r6     // Catch:{ Exception -> 0x0081 }
        L_0x0081:
            java.io.File r6 = r5.f8781b     // Catch:{ all -> 0x0088 }
            a((java.io.File) r6)     // Catch:{ all -> 0x0088 }
            monitor-exit(r5)     // Catch:{ all -> 0x0088 }
            return
        L_0x0088:
            r6 = move-exception
            monitor-exit(r5)     // Catch:{ all -> 0x0088 }
            throw r6
        L_0x008b:
            char r6 = r7.charAt(r1)
            boolean r2 = a((char) r6)
            if (r2 == 0) goto L_0x0098
            r0.append(r6)
        L_0x0098:
            int r1 = r1 + 1
            goto L_0x0048
        L_0x009b:
            char r3 = r6.charAt(r2)
            boolean r4 = a((char) r3)
            if (r4 == 0) goto L_0x00a8
            r0.append(r3)
        L_0x00a8:
            int r2 = r2 + 1
            goto L_0x003d
        L_0x00ab:
            org.eclipse.paho.a.a.s r6 = new org.eclipse.paho.a.a.s
            r6.<init>()
            goto L_0x00b2
        L_0x00b1:
            throw r6
        L_0x00b2:
            goto L_0x00b1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.a.a.c.b.open(java.lang.String, java.lang.String):void");
    }

    private void b() throws s {
        if (this.f8781b == null) {
            throw new s();
        }
    }

    public final void close() throws s {
        synchronized (this) {
            if (this.c != null) {
                this.c.release();
            }
            if (c().length == 0) {
                this.f8781b.delete();
            }
            this.f8781b = null;
        }
    }

    public final void put(String str, r rVar) throws s {
        b();
        File file = this.f8781b;
        File file2 = new File(file, String.valueOf(str) + ".msg");
        File file3 = this.f8781b;
        File file4 = new File(file3, String.valueOf(str) + ".msg.bup");
        if (file2.exists() && !file2.renameTo(file4)) {
            file4.delete();
            file2.renameTo(file4);
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            fileOutputStream.write(rVar.getHeaderBytes(), rVar.getHeaderOffset(), rVar.getHeaderLength());
            if (rVar.getPayloadBytes() != null) {
                fileOutputStream.write(rVar.getPayloadBytes(), rVar.getPayloadOffset(), rVar.getPayloadLength());
            }
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            if (file4.exists()) {
                file4.delete();
            }
            if (file4.exists() && !file4.renameTo(file2)) {
                file2.delete();
                file4.renameTo(file2);
            }
        } catch (IOException e) {
            throw new s((Throwable) e);
        } catch (Throwable th) {
            if (file4.exists() && !file4.renameTo(file2)) {
                file2.delete();
                file4.renameTo(file2);
            }
            throw th;
        }
    }

    public final r get(String str) throws s {
        b();
        try {
            File file = this.f8781b;
            FileInputStream fileInputStream = new FileInputStream(new File(file, String.valueOf(str) + ".msg"));
            int available = fileInputStream.available();
            byte[] bArr = new byte[available];
            for (int i = 0; i < available; i += fileInputStream.read(bArr, i, available - i)) {
            }
            fileInputStream.close();
            org.eclipse.paho.a.a.a.m mVar = new org.eclipse.paho.a.a.a.m(str, bArr, 0, available, null, 0, 0);
            return mVar;
        } catch (IOException e) {
            throw new s((Throwable) e);
        }
    }

    public final void remove(String str) throws s {
        b();
        File file = this.f8781b;
        File file2 = new File(file, String.valueOf(str) + ".msg");
        if (file2.exists()) {
            file2.delete();
        }
    }

    public final Enumeration<String> keys() throws s {
        String name;
        b();
        File[] c2 = c();
        Vector vector = new Vector(c2.length);
        for (File name2 : c2) {
            vector.addElement(name.substring(0, name2.getName().length() - 4));
        }
        return vector.elements();
    }

    private File[] c() throws s {
        b();
        File[] listFiles = this.f8781b.listFiles(a());
        if (listFiles != null) {
            return listFiles;
        }
        throw new s();
    }

    private static boolean a(char c2) {
        return Character.isJavaIdentifierPart(c2) || c2 == '-';
    }

    private static void a(File file) throws s {
        File[] listFiles = file.listFiles(new c(".bup"));
        if (listFiles != null) {
            for (int i = 0; i < listFiles.length; i++) {
                File file2 = new File(file, listFiles[i].getName().substring(0, listFiles[i].getName().length() - 4));
                if (!listFiles[i].renameTo(file2)) {
                    file2.delete();
                    listFiles[i].renameTo(file2);
                }
            }
            return;
        }
        throw new s();
    }

    public final boolean containsKey(String str) throws s {
        b();
        File file = this.f8781b;
        return new File(file, String.valueOf(str) + ".msg").exists();
    }

    public final void clear() throws s {
        b();
        File[] c2 = c();
        for (File delete : c2) {
            delete.delete();
        }
        this.f8781b.delete();
    }
}
