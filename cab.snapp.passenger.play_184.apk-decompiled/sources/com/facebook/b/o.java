package com.facebook.b;

import android.content.Context;
import android.os.StrictMode;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
import org.eclipse.paho.a.a.w;

public abstract class o extends d {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String[] f2446a;
    private final Map<String, Object> d = new HashMap();
    protected final Context f;
    @Nullable
    protected String g;

    public static class a {
        public final String hash;
        public final String name;

        public a(String str, String str2) {
            this.name = str;
            this.hash = str2;
        }
    }

    public static final class b {
        public final a[] dsos;

        public b(a[] aVarArr) {
            this.dsos = aVarArr;
        }

        static final b a(DataInput dataInput) throws IOException {
            if (dataInput.readByte() == 1) {
                int readInt = dataInput.readInt();
                if (readInt >= 0) {
                    a[] aVarArr = new a[readInt];
                    for (int i = 0; i < readInt; i++) {
                        aVarArr[i] = new a(dataInput.readUTF(), dataInput.readUTF());
                    }
                    return new b(aVarArr);
                }
                throw new RuntimeException("illegal number of shared libraries");
            }
            throw new RuntimeException("wrong dso manifest version");
        }

        public final void write(DataOutput dataOutput) throws IOException {
            dataOutput.writeByte(1);
            dataOutput.writeInt(this.dsos.length);
            int i = 0;
            while (true) {
                a[] aVarArr = this.dsos;
                if (i < aVarArr.length) {
                    dataOutput.writeUTF(aVarArr[i].name);
                    dataOutput.writeUTF(this.dsos[i].hash);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    protected static final class c implements Closeable {
        public final InputStream content;
        public final a dso;

        public c(a aVar, InputStream inputStream) {
            this.dso = aVar;
            this.content = inputStream;
        }

        public final void close() throws IOException {
            this.content.close();
        }
    }

    protected static abstract class d implements Closeable {
        public void close() throws IOException {
        }

        public abstract boolean hasNext();

        public abstract c next() throws IOException;

        protected d() {
        }
    }

    protected static abstract class e implements Closeable {
        /* access modifiers changed from: protected */
        public abstract b a() throws IOException;

        /* access modifiers changed from: protected */
        public abstract d b() throws IOException;

        public void close() throws IOException {
        }

        protected e() {
        }
    }

    /* access modifiers changed from: protected */
    public abstract e a() throws IOException;

    protected o(Context context, String str) {
        super(getSoStorePath(context, str), 1);
        this.f = context;
    }

    public static File getSoStorePath(Context context, String str) {
        return new File(context.getApplicationInfo().dataDir + w.TOPIC_LEVEL_SEPARATOR + str);
    }

    public String[] getSoSourceAbis() {
        String[] strArr = this.f2446a;
        return strArr == null ? super.getSoSourceAbis() : strArr;
    }

    public void setSoSourceAbis(String[] strArr) {
        this.f2446a = strArr;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0027, code lost:
        throw r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0023, code lost:
        r3 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void a(java.io.File r3, byte r4) throws java.io.IOException {
        /*
            java.io.RandomAccessFile r0 = new java.io.RandomAccessFile
            java.lang.String r1 = "rw"
            r0.<init>(r3, r1)
            r1 = 0
            r0.seek(r1)     // Catch:{ all -> 0x0021 }
            r0.write(r4)     // Catch:{ all -> 0x0021 }
            long r3 = r0.getFilePointer()     // Catch:{ all -> 0x0021 }
            r0.setLength(r3)     // Catch:{ all -> 0x0021 }
            java.io.FileDescriptor r3 = r0.getFD()     // Catch:{ all -> 0x0021 }
            r3.sync()     // Catch:{ all -> 0x0021 }
            r0.close()
            return
        L_0x0021:
            r3 = move-exception
            throw r3     // Catch:{ all -> 0x0023 }
        L_0x0023:
            r3 = move-exception
            r0.close()     // Catch:{ all -> 0x0027 }
        L_0x0027:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.b.o.a(java.io.File, byte):void");
    }

    private void a(a[] aVarArr) throws IOException {
        String[] list = this.f2428b.list();
        if (list != null) {
            for (String str : list) {
                if (!str.equals("dso_state") && !str.equals("dso_lock") && !str.equals("dso_deps") && !str.equals("dso_manifest")) {
                    boolean z = false;
                    int i = 0;
                    while (!z && i < aVarArr.length) {
                        if (aVarArr[i].name.equals(str)) {
                            z = true;
                        }
                        i++;
                    }
                    if (!z) {
                        File file = new File(this.f2428b, str);
                        new StringBuilder("deleting unaccounted-for file ").append(file);
                        m.dumbDeleteRecursive(file);
                    }
                }
            }
            return;
        }
        throw new IOException("unable to list directory " + this.f2428b);
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(10:30|31|32|33|34|35|36|(1:38)|39|(2:41|42)(3:43|44|45)) */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:58|(2:60|61)|62|63) */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x013a, code lost:
        r12 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:?, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x013f, code lost:
        throw r12;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:33:0x00a6 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:62:0x011b */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(byte r12, com.facebook.b.o.b r13, com.facebook.b.o.d r14) throws java.io.IOException {
        /*
            r11 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "regenerating DSO store "
            r0.<init>(r1)
            java.lang.Class r1 = r11.getClass()
            java.lang.String r1 = r1.getName()
            r0.append(r1)
            java.io.File r0 = new java.io.File
            java.io.File r1 = r11.f2428b
            java.lang.String r2 = "dso_manifest"
            r0.<init>(r1, r2)
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile
            java.lang.String r2 = "rw"
            r1.<init>(r0, r2)
            r0 = 0
            r3 = 1
            if (r12 != r3) goto L_0x002f
            com.facebook.b.o$b r0 = com.facebook.b.o.b.a(r1)     // Catch:{ Exception -> 0x002e }
            goto L_0x002f
        L_0x002b:
            r12 = move-exception
            goto L_0x0139
        L_0x002e:
        L_0x002f:
            r12 = 0
            if (r0 != 0) goto L_0x0039
            com.facebook.b.o$b r0 = new com.facebook.b.o$b     // Catch:{ all -> 0x002b }
            com.facebook.b.o$a[] r4 = new com.facebook.b.o.a[r12]     // Catch:{ all -> 0x002b }
            r0.<init>(r4)     // Catch:{ all -> 0x002b }
        L_0x0039:
            com.facebook.b.o$a[] r13 = r13.dsos     // Catch:{ all -> 0x002b }
            r11.a((com.facebook.b.o.a[]) r13)     // Catch:{ all -> 0x002b }
            r13 = 32768(0x8000, float:4.5918E-41)
            byte[] r13 = new byte[r13]     // Catch:{ all -> 0x002b }
        L_0x0043:
            boolean r4 = r14.hasNext()     // Catch:{ all -> 0x002b }
            if (r4 == 0) goto L_0x0123
            com.facebook.b.o$c r4 = r14.next()     // Catch:{ all -> 0x002b }
            r5 = 1
            r6 = 0
        L_0x004f:
            if (r5 == 0) goto L_0x007d
            com.facebook.b.o$a[] r7 = r0.dsos     // Catch:{ all -> 0x007a }
            int r7 = r7.length     // Catch:{ all -> 0x007a }
            if (r6 >= r7) goto L_0x007d
            com.facebook.b.o$a[] r7 = r0.dsos     // Catch:{ all -> 0x007a }
            r7 = r7[r6]     // Catch:{ all -> 0x007a }
            java.lang.String r7 = r7.name     // Catch:{ all -> 0x007a }
            com.facebook.b.o$a r8 = r4.dso     // Catch:{ all -> 0x007a }
            java.lang.String r8 = r8.name     // Catch:{ all -> 0x007a }
            boolean r7 = r7.equals(r8)     // Catch:{ all -> 0x007a }
            if (r7 == 0) goto L_0x0077
            com.facebook.b.o$a[] r7 = r0.dsos     // Catch:{ all -> 0x007a }
            r7 = r7[r6]     // Catch:{ all -> 0x007a }
            java.lang.String r7 = r7.hash     // Catch:{ all -> 0x007a }
            com.facebook.b.o$a r8 = r4.dso     // Catch:{ all -> 0x007a }
            java.lang.String r8 = r8.hash     // Catch:{ all -> 0x007a }
            boolean r7 = r7.equals(r8)     // Catch:{ all -> 0x007a }
            if (r7 == 0) goto L_0x0077
            r5 = 0
        L_0x0077:
            int r6 = r6 + 1
            goto L_0x004f
        L_0x007a:
            r12 = move-exception
            goto L_0x0114
        L_0x007d:
            if (r5 == 0) goto L_0x011c
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x007a }
            java.lang.String r6 = "extracting DSO "
            r5.<init>(r6)     // Catch:{ all -> 0x007a }
            com.facebook.b.o$a r6 = r4.dso     // Catch:{ all -> 0x007a }
            java.lang.String r6 = r6.name     // Catch:{ all -> 0x007a }
            r5.append(r6)     // Catch:{ all -> 0x007a }
            java.io.File r5 = r11.f2428b     // Catch:{ all -> 0x007a }
            boolean r5 = r5.setWritable(r3, r3)     // Catch:{ all -> 0x007a }
            if (r5 == 0) goto L_0x00fe
            java.io.File r5 = new java.io.File     // Catch:{ all -> 0x007a }
            java.io.File r6 = r11.f2428b     // Catch:{ all -> 0x007a }
            com.facebook.b.o$a r7 = r4.dso     // Catch:{ all -> 0x007a }
            java.lang.String r7 = r7.name     // Catch:{ all -> 0x007a }
            r5.<init>(r6, r7)     // Catch:{ all -> 0x007a }
            java.io.RandomAccessFile r6 = new java.io.RandomAccessFile     // Catch:{ IOException -> 0x00a6 }
            r6.<init>(r5, r2)     // Catch:{ IOException -> 0x00a6 }
            goto L_0x00bd
        L_0x00a6:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ all -> 0x007a }
            java.lang.String r7 = "error overwriting "
            r6.<init>(r7)     // Catch:{ all -> 0x007a }
            r6.append(r5)     // Catch:{ all -> 0x007a }
            java.lang.String r7 = " trying to delete and start over"
            r6.append(r7)     // Catch:{ all -> 0x007a }
            com.facebook.b.m.dumbDeleteRecursive(r5)     // Catch:{ all -> 0x007a }
            java.io.RandomAccessFile r6 = new java.io.RandomAccessFile     // Catch:{ all -> 0x007a }
            r6.<init>(r5, r2)     // Catch:{ all -> 0x007a }
        L_0x00bd:
            java.io.InputStream r7 = r4.content     // Catch:{ IOException -> 0x00f5 }
            int r7 = r7.available()     // Catch:{ IOException -> 0x00f5 }
            if (r7 <= r3) goto L_0x00cd
            java.io.FileDescriptor r8 = r6.getFD()     // Catch:{ IOException -> 0x00f5 }
            long r9 = (long) r7     // Catch:{ IOException -> 0x00f5 }
            com.facebook.b.m.fallocateIfSupported(r8, r9)     // Catch:{ IOException -> 0x00f5 }
        L_0x00cd:
            java.io.InputStream r7 = r4.content     // Catch:{ IOException -> 0x00f5 }
            com.facebook.b.m.a(r6, r7, r13)     // Catch:{ IOException -> 0x00f5 }
            long r7 = r6.getFilePointer()     // Catch:{ IOException -> 0x00f5 }
            r6.setLength(r7)     // Catch:{ IOException -> 0x00f5 }
            boolean r7 = r5.setExecutable(r3, r12)     // Catch:{ IOException -> 0x00f5 }
            if (r7 == 0) goto L_0x00e3
            r6.close()     // Catch:{ all -> 0x007a }
            goto L_0x011c
        L_0x00e3:
            java.io.IOException r12 = new java.io.IOException     // Catch:{ IOException -> 0x00f5 }
            java.lang.String r13 = "cannot make file executable: "
            java.lang.String r14 = java.lang.String.valueOf(r5)     // Catch:{ IOException -> 0x00f5 }
            java.lang.String r13 = r13.concat(r14)     // Catch:{ IOException -> 0x00f5 }
            r12.<init>(r13)     // Catch:{ IOException -> 0x00f5 }
            throw r12     // Catch:{ IOException -> 0x00f5 }
        L_0x00f3:
            r12 = move-exception
            goto L_0x00fa
        L_0x00f5:
            r12 = move-exception
            com.facebook.b.m.dumbDeleteRecursive(r5)     // Catch:{ all -> 0x00f3 }
            throw r12     // Catch:{ all -> 0x00f3 }
        L_0x00fa:
            r6.close()     // Catch:{ all -> 0x007a }
            throw r12     // Catch:{ all -> 0x007a }
        L_0x00fe:
            java.io.IOException r12 = new java.io.IOException     // Catch:{ all -> 0x007a }
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch:{ all -> 0x007a }
            java.lang.String r14 = "cannot make directory writable for us: "
            r13.<init>(r14)     // Catch:{ all -> 0x007a }
            java.io.File r14 = r11.f2428b     // Catch:{ all -> 0x007a }
            r13.append(r14)     // Catch:{ all -> 0x007a }
            java.lang.String r13 = r13.toString()     // Catch:{ all -> 0x007a }
            r12.<init>(r13)     // Catch:{ all -> 0x007a }
            throw r12     // Catch:{ all -> 0x007a }
        L_0x0114:
            throw r12     // Catch:{ all -> 0x0115 }
        L_0x0115:
            r12 = move-exception
            if (r4 == 0) goto L_0x011b
            r4.close()     // Catch:{ all -> 0x011b }
        L_0x011b:
            throw r12     // Catch:{ all -> 0x002b }
        L_0x011c:
            if (r4 == 0) goto L_0x0043
            r4.close()     // Catch:{ all -> 0x002b }
            goto L_0x0043
        L_0x0123:
            r1.close()
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r13 = "Finished regenerating DSO store "
            r12.<init>(r13)
            java.lang.Class r13 = r11.getClass()
            java.lang.String r13 = r13.getName()
            r12.append(r13)
            return
        L_0x0139:
            throw r12     // Catch:{ all -> 0x013a }
        L_0x013a:
            r12 = move-exception
            r1.close()     // Catch:{ all -> 0x013e }
        L_0x013e:
            goto L_0x0140
        L_0x013f:
            throw r12
        L_0x0140:
            goto L_0x013f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.b.o.a(byte, com.facebook.b.o$b, com.facebook.b.o$d):void");
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:49|50|51|52|53) */
    /* JADX WARNING: Can't wrap try/catch for region: R(5:57|58|59|60|61) */
    /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0030, code lost:
        throw r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00b4, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:?, code lost:
        r8.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:?, code lost:
        throw r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x002c, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:52:0x00b8 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:60:0x00bf */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0081 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0082  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean a(com.facebook.b.g r11, int r12, byte[] r13) throws java.io.IOException {
        /*
            r10 = this;
            java.io.File r5 = new java.io.File
            java.io.File r0 = r10.f2428b
            java.lang.String r1 = "dso_state"
            r5.<init>(r0, r1)
            java.io.RandomAccessFile r0 = new java.io.RandomAccessFile
            java.lang.String r1 = "rw"
            r0.<init>(r5, r1)
            r7 = 1
            r2 = 0
            byte r3 = r0.readByte()     // Catch:{ EOFException -> 0x0031, all -> 0x002a }
            if (r3 == r7) goto L_0x0032
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ EOFException -> 0x0031, all -> 0x002a }
            java.lang.String r4 = "dso store "
            r3.<init>(r4)     // Catch:{ EOFException -> 0x0031, all -> 0x002a }
            java.io.File r4 = r10.f2428b     // Catch:{ EOFException -> 0x0031, all -> 0x002a }
            r3.append(r4)     // Catch:{ EOFException -> 0x0031, all -> 0x002a }
            java.lang.String r4 = " regeneration interrupted: wiping clean"
            r3.append(r4)     // Catch:{ EOFException -> 0x0031, all -> 0x002a }
            goto L_0x0031
        L_0x002a:
            r11 = move-exception
            throw r11     // Catch:{ all -> 0x002c }
        L_0x002c:
            r11 = move-exception
            r0.close()     // Catch:{ all -> 0x0030 }
        L_0x0030:
            throw r11
        L_0x0031:
            r3 = 0
        L_0x0032:
            r0.close()
            java.io.File r4 = new java.io.File
            java.io.File r0 = r10.f2428b
            java.lang.String r6 = "dso_deps"
            r4.<init>(r0, r6)
            r0 = 0
            java.io.RandomAccessFile r6 = new java.io.RandomAccessFile
            r6.<init>(r4, r1)
            long r8 = r6.length()     // Catch:{ all -> 0x00c0 }
            int r1 = (int) r8     // Catch:{ all -> 0x00c0 }
            byte[] r1 = new byte[r1]     // Catch:{ all -> 0x00c0 }
            int r8 = r6.read(r1)     // Catch:{ all -> 0x00c0 }
            int r9 = r1.length     // Catch:{ all -> 0x00c0 }
            if (r8 == r9) goto L_0x0053
            r3 = 0
        L_0x0053:
            boolean r1 = java.util.Arrays.equals(r1, r13)     // Catch:{ all -> 0x00c0 }
            if (r1 != 0) goto L_0x005a
            r3 = 0
        L_0x005a:
            if (r3 == 0) goto L_0x0063
            r1 = r12 & 2
            if (r1 == 0) goto L_0x0061
            goto L_0x0063
        L_0x0061:
            r8 = r0
            goto L_0x007c
        L_0x0063:
            a(r5, r2)     // Catch:{ all -> 0x00c0 }
            com.facebook.b.o$e r0 = r10.a()     // Catch:{ all -> 0x00c0 }
            com.facebook.b.o$b r1 = r0.a()     // Catch:{ all -> 0x00b9 }
            com.facebook.b.o$d r8 = r0.b()     // Catch:{ all -> 0x00b9 }
            r10.a((byte) r3, (com.facebook.b.o.b) r1, (com.facebook.b.o.d) r8)     // Catch:{ all -> 0x00b2 }
            r8.close()     // Catch:{ all -> 0x00b9 }
            r0.close()     // Catch:{ all -> 0x00c0 }
            r8 = r1
        L_0x007c:
            r6.close()
            if (r8 != 0) goto L_0x0082
            return r2
        L_0x0082:
            com.facebook.b.o$1 r9 = new com.facebook.b.o$1
            r0 = r9
            r1 = r10
            r2 = r4
            r3 = r13
            r4 = r8
            r6 = r11
            r0.<init>(r2, r3, r4, r5, r6)
            r11 = r12 & 1
            if (r11 == 0) goto L_0x00ae
            java.lang.Thread r11 = new java.lang.Thread
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r13 = "SoSync:"
            r12.<init>(r13)
            java.io.File r13 = r10.f2428b
            java.lang.String r13 = r13.getName()
            r12.append(r13)
            java.lang.String r12 = r12.toString()
            r11.<init>(r9, r12)
            r11.start()
            goto L_0x00b1
        L_0x00ae:
            r9.run()
        L_0x00b1:
            return r7
        L_0x00b2:
            r11 = move-exception
            throw r11     // Catch:{ all -> 0x00b4 }
        L_0x00b4:
            r11 = move-exception
            r8.close()     // Catch:{ all -> 0x00b8 }
        L_0x00b8:
            throw r11     // Catch:{ all -> 0x00b9 }
        L_0x00b9:
            r11 = move-exception
            throw r11     // Catch:{ all -> 0x00bb }
        L_0x00bb:
            r11 = move-exception
            r0.close()     // Catch:{ all -> 0x00bf }
        L_0x00bf:
            throw r11     // Catch:{ all -> 0x00c0 }
        L_0x00c0:
            r11 = move-exception
            throw r11     // Catch:{ all -> 0x00c2 }
        L_0x00c2:
            r11 = move-exception
            r6.close()     // Catch:{ all -> 0x00c6 }
        L_0x00c6:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.b.o.a(com.facebook.b.g, int, byte[]):boolean");
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0038, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:?, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x003d, code lost:
        throw r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] b() throws java.io.IOException {
        /*
            r5 = this;
            android.os.Parcel r0 = android.os.Parcel.obtain()
            com.facebook.b.o$e r1 = r5.a()
            com.facebook.b.o$b r2 = r1.a()     // Catch:{ all -> 0x0036 }
            com.facebook.b.o$a[] r2 = r2.dsos     // Catch:{ all -> 0x0036 }
            r3 = 1
            r0.writeByte(r3)     // Catch:{ all -> 0x0036 }
            int r3 = r2.length     // Catch:{ all -> 0x0036 }
            r0.writeInt(r3)     // Catch:{ all -> 0x0036 }
            r3 = 0
        L_0x0017:
            int r4 = r2.length     // Catch:{ all -> 0x0036 }
            if (r3 >= r4) goto L_0x002b
            r4 = r2[r3]     // Catch:{ all -> 0x0036 }
            java.lang.String r4 = r4.name     // Catch:{ all -> 0x0036 }
            r0.writeString(r4)     // Catch:{ all -> 0x0036 }
            r4 = r2[r3]     // Catch:{ all -> 0x0036 }
            java.lang.String r4 = r4.hash     // Catch:{ all -> 0x0036 }
            r0.writeString(r4)     // Catch:{ all -> 0x0036 }
            int r3 = r3 + 1
            goto L_0x0017
        L_0x002b:
            r1.close()
            byte[] r1 = r0.marshall()
            r0.recycle()
            return r1
        L_0x0036:
            r0 = move-exception
            throw r0     // Catch:{ all -> 0x0038 }
        L_0x0038:
            r0 = move-exception
            r1.close()     // Catch:{ all -> 0x003c }
        L_0x003c:
            goto L_0x003e
        L_0x003d:
            throw r0
        L_0x003e:
            goto L_0x003d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.b.o.b():byte[]");
    }

    /* access modifiers changed from: protected */
    public final void a(int i) throws IOException {
        File file = this.f2428b;
        if (file.mkdirs() || file.isDirectory()) {
            g lock = g.lock(new File(this.f2428b, "dso_lock"));
            try {
                new StringBuilder("locked dso store ").append(this.f2428b);
                if (a(lock, i, b())) {
                    lock = null;
                } else {
                    new StringBuilder("dso store is up-to-date: ").append(this.f2428b);
                }
                if (lock == null) {
                    StringBuilder sb = new StringBuilder("not releasing dso store lock for ");
                    sb.append(this.f2428b);
                    sb.append(" (syncer thread started)");
                }
            } finally {
                if (lock != null) {
                    new StringBuilder("releasing dso store lock for ").append(this.f2428b);
                    lock.close();
                } else {
                    StringBuilder sb2 = new StringBuilder("not releasing dso store lock for ");
                    sb2.append(this.f2428b);
                    sb2.append(" (syncer thread started)");
                }
            }
        } else {
            throw new IOException("cannot mkdir: ".concat(String.valueOf(file)));
        }
    }

    private Object b(String str) {
        Object obj;
        synchronized (this.d) {
            obj = this.d.get(str);
            if (obj == null) {
                obj = new Object();
                this.d.put(str, obj);
            }
        }
        return obj;
    }

    /* access modifiers changed from: protected */
    public final synchronized void a(String str) throws IOException {
        synchronized (b(str)) {
            this.g = str;
            a(2);
        }
    }

    public int loadLibrary(String str, int i, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        int a2;
        synchronized (b(str)) {
            a2 = a(str, i, this.f2428b, threadPolicy);
        }
        return a2;
    }
}
