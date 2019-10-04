package com.bumptech.glide.a;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class a implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    final ThreadPoolExecutor f1975a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final File f1976b;
    private final File c;
    private final File d;
    private final File e;
    private final int f;
    private long g;
    /* access modifiers changed from: private */
    public final int h;
    private long i = 0;
    /* access modifiers changed from: private */
    public Writer j;
    private final LinkedHashMap<String, c> k = new LinkedHashMap<>(0, 0.75f, true);
    /* access modifiers changed from: private */
    public int l;
    private long m = 0;
    private final Callable<Void> n;

    /* renamed from: com.bumptech.glide.a.a$a  reason: collision with other inner class name */
    static final class C0032a implements ThreadFactory {
        private C0032a() {
        }

        /* synthetic */ C0032a(byte b2) {
            this();
        }

        public final synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    public final class b {

        /* renamed from: a  reason: collision with root package name */
        final c f1978a;

        /* renamed from: b  reason: collision with root package name */
        final boolean[] f1979b;
        private boolean d;

        /* synthetic */ b(a aVar, c cVar, byte b2) {
            this(cVar);
        }

        private b(c cVar) {
            this.f1978a = cVar;
            this.f1979b = cVar.e ? null : new boolean[a.this.h];
        }

        private InputStream a(int i) throws IOException {
            synchronized (a.this) {
                if (this.f1978a.f != this) {
                    throw new IllegalStateException();
                } else if (!this.f1978a.e) {
                    return null;
                } else {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(this.f1978a.getCleanFile(i));
                        return fileInputStream;
                    } catch (FileNotFoundException unused) {
                        return null;
                    }
                }
            }
        }

        public final String getString(int i) throws IOException {
            InputStream a2 = a(i);
            if (a2 != null) {
                return c.a((Reader) new InputStreamReader(a2, c.f1988b));
            }
            return null;
        }

        public final File getFile(int i) throws IOException {
            File dirtyFile;
            synchronized (a.this) {
                if (this.f1978a.f == this) {
                    if (!this.f1978a.e) {
                        this.f1979b[i] = true;
                    }
                    dirtyFile = this.f1978a.getDirtyFile(i);
                    if (!a.this.f1976b.exists()) {
                        a.this.f1976b.mkdirs();
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
            return dirtyFile;
        }

        public final void set(int i, String str) throws IOException {
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(new FileOutputStream(getFile(i)), c.f1988b);
                try {
                    outputStreamWriter2.write(str);
                    c.a((Closeable) outputStreamWriter2);
                } catch (Throwable th) {
                    th = th;
                    outputStreamWriter = outputStreamWriter2;
                    c.a((Closeable) outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                c.a((Closeable) outputStreamWriter);
                throw th;
            }
        }

        public final void commit() throws IOException {
            a.this.a(this, true);
            this.d = true;
        }

        public final void abort() throws IOException {
            a.this.a(this, false);
        }

        public final void abortUnlessCommitted() {
            if (!this.d) {
                try {
                    abort();
                } catch (IOException unused) {
                }
            }
        }
    }

    final class c {

        /* renamed from: a  reason: collision with root package name */
        final String f1980a;

        /* renamed from: b  reason: collision with root package name */
        final long[] f1981b;
        File[] c;
        File[] d;
        boolean e;
        b f;
        long g;

        /* synthetic */ c(a aVar, String str, byte b2) {
            this(str);
        }

        private c(String str) {
            this.f1980a = str;
            this.f1981b = new long[a.this.h];
            this.c = new File[a.this.h];
            this.d = new File[a.this.h];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < a.this.h; i++) {
                sb.append(i);
                this.c[i] = new File(a.this.f1976b, sb.toString());
                sb.append(".tmp");
                this.d[i] = new File(a.this.f1976b, sb.toString());
                sb.setLength(length);
            }
        }

        public final String getLengths() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long append : this.f1981b) {
                sb.append(' ');
                sb.append(append);
            }
            return sb.toString();
        }

        /* access modifiers changed from: package-private */
        public final void a(String[] strArr) throws IOException {
            if (strArr.length == a.this.h) {
                int i = 0;
                while (i < strArr.length) {
                    try {
                        this.f1981b[i] = Long.parseLong(strArr[i]);
                        i++;
                    } catch (NumberFormatException unused) {
                        throw b(strArr);
                    }
                }
                return;
            }
            throw b(strArr);
        }

        private static IOException b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public final File getCleanFile(int i) {
            return this.c[i];
        }

        public final File getDirtyFile(int i) {
            return this.d[i];
        }
    }

    public final class d {

        /* renamed from: b  reason: collision with root package name */
        private final String f1983b;
        private final long c;
        private final long[] d;
        private final File[] e;

        /* synthetic */ d(a aVar, String str, long j, File[] fileArr, long[] jArr, byte b2) {
            this(str, j, fileArr, jArr);
        }

        private d(String str, long j, File[] fileArr, long[] jArr) {
            this.f1983b = str;
            this.c = j;
            this.e = fileArr;
            this.d = jArr;
        }

        public final b edit() throws IOException {
            return a.this.a(this.f1983b, this.c);
        }

        public final File getFile(int i) {
            return this.e[i];
        }

        public final String getString(int i) throws IOException {
            return c.a((Reader) new InputStreamReader(new FileInputStream(this.e[i]), c.f1988b));
        }

        public final long getLength(int i) {
            return this.d[i];
        }
    }

    private a(File file, int i2, int i3, long j2) {
        File file2 = file;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new C0032a((byte) 0));
        this.f1975a = threadPoolExecutor;
        this.n = new Callable<Void>() {
            /* JADX WARNING: Code restructure failed: missing block: B:11:0x0026, code lost:
                return null;
             */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public final java.lang.Void call() throws java.lang.Exception {
                /*
                    r3 = this;
                    com.bumptech.glide.a.a r0 = com.bumptech.glide.a.a.this
                    monitor-enter(r0)
                    com.bumptech.glide.a.a r1 = com.bumptech.glide.a.a.this     // Catch:{ all -> 0x0027 }
                    java.io.Writer r1 = r1.j     // Catch:{ all -> 0x0027 }
                    r2 = 0
                    if (r1 != 0) goto L_0x000e
                    monitor-exit(r0)     // Catch:{ all -> 0x0027 }
                    return r2
                L_0x000e:
                    com.bumptech.glide.a.a r1 = com.bumptech.glide.a.a.this     // Catch:{ all -> 0x0027 }
                    r1.f()     // Catch:{ all -> 0x0027 }
                    com.bumptech.glide.a.a r1 = com.bumptech.glide.a.a.this     // Catch:{ all -> 0x0027 }
                    boolean r1 = r1.d()     // Catch:{ all -> 0x0027 }
                    if (r1 == 0) goto L_0x0025
                    com.bumptech.glide.a.a r1 = com.bumptech.glide.a.a.this     // Catch:{ all -> 0x0027 }
                    r1.c()     // Catch:{ all -> 0x0027 }
                    com.bumptech.glide.a.a r1 = com.bumptech.glide.a.a.this     // Catch:{ all -> 0x0027 }
                    int unused = r1.l = 0     // Catch:{ all -> 0x0027 }
                L_0x0025:
                    monitor-exit(r0)     // Catch:{ all -> 0x0027 }
                    return r2
                L_0x0027:
                    r1 = move-exception
                    monitor-exit(r0)     // Catch:{ all -> 0x0027 }
                    throw r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.a.a.AnonymousClass1.call():java.lang.Void");
            }
        };
        this.f1976b = file2;
        this.f = i2;
        this.c = new File(file2, "journal");
        this.d = new File(file2, "journal.tmp");
        this.e = new File(file2, "journal.bkp");
        this.h = i3;
        this.g = j2;
    }

    public static a open(File file, int i2, int i3, long j2) throws IOException {
        if (j2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i3 > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    a(file2, file3, false);
                }
            }
            a aVar = new a(file, i2, i3, j2);
            if (aVar.c.exists()) {
                try {
                    aVar.a();
                    aVar.b();
                    return aVar;
                } catch (IOException e2) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                    aVar.delete();
                }
            }
            file.mkdirs();
            a aVar2 = new a(file, i2, i3, j2);
            aVar2.c();
            return aVar2;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:52|53|(1:55)(1:56)|57|58) */
    /* JADX WARNING: Code restructure failed: missing block: B:53:?, code lost:
        r12.l = r2 - r12.k.size();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x010b, code lost:
        if (r1.hasUnterminatedLine() != false) goto L_0x010d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x010d, code lost:
        c();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x0111, code lost:
        r12.j = new java.io.BufferedWriter(new java.io.OutputStreamWriter(new java.io.FileOutputStream(r12.c, true), com.bumptech.glide.a.c.f1987a));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x0129, code lost:
        return;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:52:0x00fe */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:59:0x012a=Splitter:B:59:0x012a, B:52:0x00fe=Splitter:B:52:0x00fe} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a() throws java.io.IOException {
        /*
            r12 = this;
            java.lang.String r0 = ", "
            com.bumptech.glide.a.b r1 = new com.bumptech.glide.a.b
            java.io.FileInputStream r2 = new java.io.FileInputStream
            java.io.File r3 = r12.c
            r2.<init>(r3)
            java.nio.charset.Charset r3 = com.bumptech.glide.a.c.f1987a
            r1.<init>(r2, r3)
            java.lang.String r2 = r1.readLine()     // Catch:{ all -> 0x0155 }
            java.lang.String r3 = r1.readLine()     // Catch:{ all -> 0x0155 }
            java.lang.String r4 = r1.readLine()     // Catch:{ all -> 0x0155 }
            java.lang.String r5 = r1.readLine()     // Catch:{ all -> 0x0155 }
            java.lang.String r6 = r1.readLine()     // Catch:{ all -> 0x0155 }
            java.lang.String r7 = "libcore.io.DiskLruCache"
            boolean r7 = r7.equals(r2)     // Catch:{ all -> 0x0155 }
            if (r7 == 0) goto L_0x012a
            java.lang.String r7 = "1"
            boolean r7 = r7.equals(r3)     // Catch:{ all -> 0x0155 }
            if (r7 == 0) goto L_0x012a
            int r7 = r12.f     // Catch:{ all -> 0x0155 }
            java.lang.String r7 = java.lang.Integer.toString(r7)     // Catch:{ all -> 0x0155 }
            boolean r4 = r7.equals(r4)     // Catch:{ all -> 0x0155 }
            if (r4 == 0) goto L_0x012a
            int r4 = r12.h     // Catch:{ all -> 0x0155 }
            java.lang.String r4 = java.lang.Integer.toString(r4)     // Catch:{ all -> 0x0155 }
            boolean r4 = r4.equals(r5)     // Catch:{ all -> 0x0155 }
            if (r4 == 0) goto L_0x012a
            java.lang.String r4 = ""
            boolean r4 = r4.equals(r6)     // Catch:{ all -> 0x0155 }
            if (r4 == 0) goto L_0x012a
            r0 = 0
            r2 = 0
        L_0x0056:
            r3 = 1
            java.lang.String r4 = r1.readLine()     // Catch:{ EOFException -> 0x00fe }
            r5 = 32
            int r6 = r4.indexOf(r5)     // Catch:{ EOFException -> 0x00fe }
            java.lang.String r7 = "unexpected journal line: "
            r8 = -1
            if (r6 == r8) goto L_0x00f0
            int r9 = r6 + 1
            int r5 = r4.indexOf(r5, r9)     // Catch:{ EOFException -> 0x00fe }
            if (r5 != r8) goto L_0x0083
            java.lang.String r9 = r4.substring(r9)     // Catch:{ EOFException -> 0x00fe }
            r10 = 6
            if (r6 != r10) goto L_0x0087
            java.lang.String r10 = "REMOVE"
            boolean r10 = r4.startsWith(r10)     // Catch:{ EOFException -> 0x00fe }
            if (r10 == 0) goto L_0x0087
            java.util.LinkedHashMap<java.lang.String, com.bumptech.glide.a.a$c> r4 = r12.k     // Catch:{ EOFException -> 0x00fe }
            r4.remove(r9)     // Catch:{ EOFException -> 0x00fe }
            goto L_0x00de
        L_0x0083:
            java.lang.String r9 = r4.substring(r9, r5)     // Catch:{ EOFException -> 0x00fe }
        L_0x0087:
            java.util.LinkedHashMap<java.lang.String, com.bumptech.glide.a.a$c> r10 = r12.k     // Catch:{ EOFException -> 0x00fe }
            java.lang.Object r10 = r10.get(r9)     // Catch:{ EOFException -> 0x00fe }
            com.bumptech.glide.a.a$c r10 = (com.bumptech.glide.a.a.c) r10     // Catch:{ EOFException -> 0x00fe }
            if (r10 != 0) goto L_0x009b
            com.bumptech.glide.a.a$c r10 = new com.bumptech.glide.a.a$c     // Catch:{ EOFException -> 0x00fe }
            r10.<init>(r12, r9, r0)     // Catch:{ EOFException -> 0x00fe }
            java.util.LinkedHashMap<java.lang.String, com.bumptech.glide.a.a$c> r11 = r12.k     // Catch:{ EOFException -> 0x00fe }
            r11.put(r9, r10)     // Catch:{ EOFException -> 0x00fe }
        L_0x009b:
            r9 = 5
            if (r5 == r8) goto L_0x00bd
            if (r6 != r9) goto L_0x00bd
            java.lang.String r11 = "CLEAN"
            boolean r11 = r4.startsWith(r11)     // Catch:{ EOFException -> 0x00fe }
            if (r11 == 0) goto L_0x00bd
            int r5 = r5 + 1
            java.lang.String r4 = r4.substring(r5)     // Catch:{ EOFException -> 0x00fe }
            java.lang.String r5 = " "
            java.lang.String[] r4 = r4.split(r5)     // Catch:{ EOFException -> 0x00fe }
            r10.e = r3     // Catch:{ EOFException -> 0x00fe }
            r5 = 0
            r10.f = r5     // Catch:{ EOFException -> 0x00fe }
            r10.a(r4)     // Catch:{ EOFException -> 0x00fe }
            goto L_0x00de
        L_0x00bd:
            if (r5 != r8) goto L_0x00d1
            if (r6 != r9) goto L_0x00d1
            java.lang.String r9 = "DIRTY"
            boolean r9 = r4.startsWith(r9)     // Catch:{ EOFException -> 0x00fe }
            if (r9 == 0) goto L_0x00d1
            com.bumptech.glide.a.a$b r4 = new com.bumptech.glide.a.a$b     // Catch:{ EOFException -> 0x00fe }
            r4.<init>(r12, r10, r0)     // Catch:{ EOFException -> 0x00fe }
            r10.f = r4     // Catch:{ EOFException -> 0x00fe }
            goto L_0x00de
        L_0x00d1:
            if (r5 != r8) goto L_0x00e2
            r5 = 4
            if (r6 != r5) goto L_0x00e2
            java.lang.String r5 = "READ"
            boolean r5 = r4.startsWith(r5)     // Catch:{ EOFException -> 0x00fe }
            if (r5 == 0) goto L_0x00e2
        L_0x00de:
            int r2 = r2 + 1
            goto L_0x0056
        L_0x00e2:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ EOFException -> 0x00fe }
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch:{ EOFException -> 0x00fe }
            java.lang.String r4 = r7.concat(r4)     // Catch:{ EOFException -> 0x00fe }
            r0.<init>(r4)     // Catch:{ EOFException -> 0x00fe }
            throw r0     // Catch:{ EOFException -> 0x00fe }
        L_0x00f0:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ EOFException -> 0x00fe }
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch:{ EOFException -> 0x00fe }
            java.lang.String r4 = r7.concat(r4)     // Catch:{ EOFException -> 0x00fe }
            r0.<init>(r4)     // Catch:{ EOFException -> 0x00fe }
            throw r0     // Catch:{ EOFException -> 0x00fe }
        L_0x00fe:
            java.util.LinkedHashMap<java.lang.String, com.bumptech.glide.a.a$c> r0 = r12.k     // Catch:{ all -> 0x0155 }
            int r0 = r0.size()     // Catch:{ all -> 0x0155 }
            int r2 = r2 - r0
            r12.l = r2     // Catch:{ all -> 0x0155 }
            boolean r0 = r1.hasUnterminatedLine()     // Catch:{ all -> 0x0155 }
            if (r0 == 0) goto L_0x0111
            r12.c()     // Catch:{ all -> 0x0155 }
            goto L_0x0126
        L_0x0111:
            java.io.BufferedWriter r0 = new java.io.BufferedWriter     // Catch:{ all -> 0x0155 }
            java.io.OutputStreamWriter r2 = new java.io.OutputStreamWriter     // Catch:{ all -> 0x0155 }
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch:{ all -> 0x0155 }
            java.io.File r5 = r12.c     // Catch:{ all -> 0x0155 }
            r4.<init>(r5, r3)     // Catch:{ all -> 0x0155 }
            java.nio.charset.Charset r3 = com.bumptech.glide.a.c.f1987a     // Catch:{ all -> 0x0155 }
            r2.<init>(r4, r3)     // Catch:{ all -> 0x0155 }
            r0.<init>(r2)     // Catch:{ all -> 0x0155 }
            r12.j = r0     // Catch:{ all -> 0x0155 }
        L_0x0126:
            com.bumptech.glide.a.c.a((java.io.Closeable) r1)
            return
        L_0x012a:
            java.io.IOException r4 = new java.io.IOException     // Catch:{ all -> 0x0155 }
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ all -> 0x0155 }
            java.lang.String r8 = "unexpected journal header: ["
            r7.<init>(r8)     // Catch:{ all -> 0x0155 }
            r7.append(r2)     // Catch:{ all -> 0x0155 }
            r7.append(r0)     // Catch:{ all -> 0x0155 }
            r7.append(r3)     // Catch:{ all -> 0x0155 }
            r7.append(r0)     // Catch:{ all -> 0x0155 }
            r7.append(r5)     // Catch:{ all -> 0x0155 }
            r7.append(r0)     // Catch:{ all -> 0x0155 }
            r7.append(r6)     // Catch:{ all -> 0x0155 }
            java.lang.String r0 = "]"
            r7.append(r0)     // Catch:{ all -> 0x0155 }
            java.lang.String r0 = r7.toString()     // Catch:{ all -> 0x0155 }
            r4.<init>(r0)     // Catch:{ all -> 0x0155 }
            throw r4     // Catch:{ all -> 0x0155 }
        L_0x0155:
            r0 = move-exception
            com.bumptech.glide.a.c.a((java.io.Closeable) r1)
            goto L_0x015b
        L_0x015a:
            throw r0
        L_0x015b:
            goto L_0x015a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.a.a.a():void");
    }

    private void b() throws IOException {
        a(this.d);
        Iterator<c> it = this.k.values().iterator();
        while (it.hasNext()) {
            c next = it.next();
            int i2 = 0;
            if (next.f == null) {
                while (i2 < this.h) {
                    this.i += next.f1981b[i2];
                    i2++;
                }
            } else {
                next.f = null;
                while (i2 < this.h) {
                    a(next.getCleanFile(i2));
                    a(next.getDirtyFile(i2));
                    i2++;
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: finally extract failed */
    /* access modifiers changed from: private */
    public synchronized void c() throws IOException {
        if (this.j != null) {
            this.j.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d), c.f1987a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.h));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (c next : this.k.values()) {
                if (next.f != null) {
                    bufferedWriter.write("DIRTY " + next.f1980a + 10);
                } else {
                    bufferedWriter.write("CLEAN " + next.f1980a + next.getLengths() + 10);
                }
            }
            bufferedWriter.close();
            if (this.c.exists()) {
                a(this.c, this.e, true);
            }
            a(this.d, this.c, false);
            this.e.delete();
            this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), c.f1987a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    private static void a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void a(File file, File file2, boolean z) throws IOException {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public final synchronized d get(String str) throws IOException {
        e();
        c cVar = this.k.get(str);
        if (cVar == null) {
            return null;
        }
        if (!cVar.e) {
            return null;
        }
        for (File exists : cVar.c) {
            if (!exists.exists()) {
                return null;
            }
        }
        this.l++;
        this.j.append("READ");
        this.j.append(' ');
        this.j.append(str);
        this.j.append(10);
        if (d()) {
            this.f1975a.submit(this.n);
        }
        d dVar = new d(this, str, cVar.g, cVar.c, cVar.f1981b, (byte) 0);
        return dVar;
    }

    public final b edit(String str) throws IOException {
        return a(str, -1);
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001c, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized com.bumptech.glide.a.a.b a(java.lang.String r6, long r7) throws java.io.IOException {
        /*
            r5 = this;
            monitor-enter(r5)
            r5.e()     // Catch:{ all -> 0x0059 }
            java.util.LinkedHashMap<java.lang.String, com.bumptech.glide.a.a$c> r0 = r5.k     // Catch:{ all -> 0x0059 }
            java.lang.Object r0 = r0.get(r6)     // Catch:{ all -> 0x0059 }
            com.bumptech.glide.a.a$c r0 = (com.bumptech.glide.a.a.c) r0     // Catch:{ all -> 0x0059 }
            r1 = -1
            r3 = 0
            int r4 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r4 == 0) goto L_0x001d
            if (r0 == 0) goto L_0x001b
            long r1 = r0.g     // Catch:{ all -> 0x0059 }
            int r4 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r4 == 0) goto L_0x001d
        L_0x001b:
            monitor-exit(r5)
            return r3
        L_0x001d:
            r7 = 0
            if (r0 != 0) goto L_0x002b
            com.bumptech.glide.a.a$c r0 = new com.bumptech.glide.a.a$c     // Catch:{ all -> 0x0059 }
            r0.<init>(r5, r6, r7)     // Catch:{ all -> 0x0059 }
            java.util.LinkedHashMap<java.lang.String, com.bumptech.glide.a.a$c> r8 = r5.k     // Catch:{ all -> 0x0059 }
            r8.put(r6, r0)     // Catch:{ all -> 0x0059 }
            goto L_0x0031
        L_0x002b:
            com.bumptech.glide.a.a$b r8 = r0.f     // Catch:{ all -> 0x0059 }
            if (r8 == 0) goto L_0x0031
            monitor-exit(r5)
            return r3
        L_0x0031:
            com.bumptech.glide.a.a$b r8 = new com.bumptech.glide.a.a$b     // Catch:{ all -> 0x0059 }
            r8.<init>(r5, r0, r7)     // Catch:{ all -> 0x0059 }
            r0.f = r8     // Catch:{ all -> 0x0059 }
            java.io.Writer r7 = r5.j     // Catch:{ all -> 0x0059 }
            java.lang.String r0 = "DIRTY"
            r7.append(r0)     // Catch:{ all -> 0x0059 }
            java.io.Writer r7 = r5.j     // Catch:{ all -> 0x0059 }
            r0 = 32
            r7.append(r0)     // Catch:{ all -> 0x0059 }
            java.io.Writer r7 = r5.j     // Catch:{ all -> 0x0059 }
            r7.append(r6)     // Catch:{ all -> 0x0059 }
            java.io.Writer r6 = r5.j     // Catch:{ all -> 0x0059 }
            r7 = 10
            r6.append(r7)     // Catch:{ all -> 0x0059 }
            java.io.Writer r6 = r5.j     // Catch:{ all -> 0x0059 }
            r6.flush()     // Catch:{ all -> 0x0059 }
            monitor-exit(r5)
            return r8
        L_0x0059:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.a.a.a(java.lang.String, long):com.bumptech.glide.a.a$b");
    }

    public final File getDirectory() {
        return this.f1976b;
    }

    public final synchronized long getMaxSize() {
        return this.g;
    }

    public final synchronized void setMaxSize(long j2) {
        this.g = j2;
        this.f1975a.submit(this.n);
    }

    public final synchronized long size() {
        return this.i;
    }

    /* access modifiers changed from: private */
    public boolean d() {
        int i2 = this.l;
        return i2 >= 2000 && i2 >= this.k.size();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x007e, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0080, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized boolean remove(java.lang.String r8) throws java.io.IOException {
        /*
            r7 = this;
            monitor-enter(r7)
            r7.e()     // Catch:{ all -> 0x0081 }
            java.util.LinkedHashMap<java.lang.String, com.bumptech.glide.a.a$c> r0 = r7.k     // Catch:{ all -> 0x0081 }
            java.lang.Object r0 = r0.get(r8)     // Catch:{ all -> 0x0081 }
            com.bumptech.glide.a.a$c r0 = (com.bumptech.glide.a.a.c) r0     // Catch:{ all -> 0x0081 }
            r1 = 0
            if (r0 == 0) goto L_0x007f
            com.bumptech.glide.a.a$b r2 = r0.f     // Catch:{ all -> 0x0081 }
            if (r2 == 0) goto L_0x0014
            goto L_0x007f
        L_0x0014:
            int r2 = r7.h     // Catch:{ all -> 0x0081 }
            if (r1 >= r2) goto L_0x004b
            java.io.File r2 = r0.getCleanFile(r1)     // Catch:{ all -> 0x0081 }
            boolean r3 = r2.exists()     // Catch:{ all -> 0x0081 }
            if (r3 == 0) goto L_0x0039
            boolean r3 = r2.delete()     // Catch:{ all -> 0x0081 }
            if (r3 == 0) goto L_0x0029
            goto L_0x0039
        L_0x0029:
            java.io.IOException r8 = new java.io.IOException     // Catch:{ all -> 0x0081 }
            java.lang.String r0 = "failed to delete "
            java.lang.String r1 = java.lang.String.valueOf(r2)     // Catch:{ all -> 0x0081 }
            java.lang.String r0 = r0.concat(r1)     // Catch:{ all -> 0x0081 }
            r8.<init>(r0)     // Catch:{ all -> 0x0081 }
            throw r8     // Catch:{ all -> 0x0081 }
        L_0x0039:
            long r2 = r7.i     // Catch:{ all -> 0x0081 }
            long[] r4 = r0.f1981b     // Catch:{ all -> 0x0081 }
            r5 = r4[r1]     // Catch:{ all -> 0x0081 }
            long r2 = r2 - r5
            r7.i = r2     // Catch:{ all -> 0x0081 }
            long[] r2 = r0.f1981b     // Catch:{ all -> 0x0081 }
            r3 = 0
            r2[r1] = r3     // Catch:{ all -> 0x0081 }
            int r1 = r1 + 1
            goto L_0x0014
        L_0x004b:
            int r0 = r7.l     // Catch:{ all -> 0x0081 }
            r1 = 1
            int r0 = r0 + r1
            r7.l = r0     // Catch:{ all -> 0x0081 }
            java.io.Writer r0 = r7.j     // Catch:{ all -> 0x0081 }
            java.lang.String r2 = "REMOVE"
            r0.append(r2)     // Catch:{ all -> 0x0081 }
            java.io.Writer r0 = r7.j     // Catch:{ all -> 0x0081 }
            r2 = 32
            r0.append(r2)     // Catch:{ all -> 0x0081 }
            java.io.Writer r0 = r7.j     // Catch:{ all -> 0x0081 }
            r0.append(r8)     // Catch:{ all -> 0x0081 }
            java.io.Writer r0 = r7.j     // Catch:{ all -> 0x0081 }
            r2 = 10
            r0.append(r2)     // Catch:{ all -> 0x0081 }
            java.util.LinkedHashMap<java.lang.String, com.bumptech.glide.a.a$c> r0 = r7.k     // Catch:{ all -> 0x0081 }
            r0.remove(r8)     // Catch:{ all -> 0x0081 }
            boolean r8 = r7.d()     // Catch:{ all -> 0x0081 }
            if (r8 == 0) goto L_0x007d
            java.util.concurrent.ThreadPoolExecutor r8 = r7.f1975a     // Catch:{ all -> 0x0081 }
            java.util.concurrent.Callable<java.lang.Void> r0 = r7.n     // Catch:{ all -> 0x0081 }
            r8.submit(r0)     // Catch:{ all -> 0x0081 }
        L_0x007d:
            monitor-exit(r7)
            return r1
        L_0x007f:
            monitor-exit(r7)
            return r1
        L_0x0081:
            r8 = move-exception
            monitor-exit(r7)
            goto L_0x0085
        L_0x0084:
            throw r8
        L_0x0085:
            goto L_0x0084
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.a.a.remove(java.lang.String):boolean");
    }

    public final synchronized boolean isClosed() {
        return this.j == null;
    }

    private void e() {
        if (this.j == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public final synchronized void flush() throws IOException {
        e();
        f();
        this.j.flush();
    }

    public final synchronized void close() throws IOException {
        if (this.j != null) {
            Iterator it = new ArrayList(this.k.values()).iterator();
            while (it.hasNext()) {
                c cVar = (c) it.next();
                if (cVar.f != null) {
                    cVar.f.abort();
                }
            }
            f();
            this.j.close();
            this.j = null;
        }
    }

    /* access modifiers changed from: private */
    public void f() throws IOException {
        while (this.i > this.g) {
            remove((String) this.k.entrySet().iterator().next().getKey());
        }
    }

    public final void delete() throws IOException {
        close();
        c.a(this.f1976b);
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00e9, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void a(com.bumptech.glide.a.a.b r10, boolean r11) throws java.io.IOException {
        /*
            r9 = this;
            monitor-enter(r9)
            com.bumptech.glide.a.a$c r0 = r10.f1978a     // Catch:{ all -> 0x00f0 }
            com.bumptech.glide.a.a$b r1 = r0.f     // Catch:{ all -> 0x00f0 }
            if (r1 != r10) goto L_0x00ea
            r1 = 0
            if (r11 == 0) goto L_0x003e
            boolean r2 = r0.e     // Catch:{ all -> 0x00f0 }
            if (r2 != 0) goto L_0x003e
            r2 = 0
        L_0x000f:
            int r3 = r9.h     // Catch:{ all -> 0x00f0 }
            if (r2 >= r3) goto L_0x003e
            boolean[] r3 = r10.f1979b     // Catch:{ all -> 0x00f0 }
            boolean r3 = r3[r2]     // Catch:{ all -> 0x00f0 }
            if (r3 == 0) goto L_0x002b
            java.io.File r3 = r0.getDirtyFile(r2)     // Catch:{ all -> 0x00f0 }
            boolean r3 = r3.exists()     // Catch:{ all -> 0x00f0 }
            if (r3 != 0) goto L_0x0028
            r10.abort()     // Catch:{ all -> 0x00f0 }
            monitor-exit(r9)
            return
        L_0x0028:
            int r2 = r2 + 1
            goto L_0x000f
        L_0x002b:
            r10.abort()     // Catch:{ all -> 0x00f0 }
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException     // Catch:{ all -> 0x00f0 }
            java.lang.String r11 = "Newly created entry didn't create value for index "
            java.lang.String r0 = java.lang.String.valueOf(r2)     // Catch:{ all -> 0x00f0 }
            java.lang.String r11 = r11.concat(r0)     // Catch:{ all -> 0x00f0 }
            r10.<init>(r11)     // Catch:{ all -> 0x00f0 }
            throw r10     // Catch:{ all -> 0x00f0 }
        L_0x003e:
            int r10 = r9.h     // Catch:{ all -> 0x00f0 }
            if (r1 >= r10) goto L_0x006e
            java.io.File r10 = r0.getDirtyFile(r1)     // Catch:{ all -> 0x00f0 }
            if (r11 == 0) goto L_0x0068
            boolean r2 = r10.exists()     // Catch:{ all -> 0x00f0 }
            if (r2 == 0) goto L_0x006b
            java.io.File r2 = r0.getCleanFile(r1)     // Catch:{ all -> 0x00f0 }
            r10.renameTo(r2)     // Catch:{ all -> 0x00f0 }
            long[] r10 = r0.f1981b     // Catch:{ all -> 0x00f0 }
            r3 = r10[r1]     // Catch:{ all -> 0x00f0 }
            long r5 = r2.length()     // Catch:{ all -> 0x00f0 }
            long[] r10 = r0.f1981b     // Catch:{ all -> 0x00f0 }
            r10[r1] = r5     // Catch:{ all -> 0x00f0 }
            long r7 = r9.i     // Catch:{ all -> 0x00f0 }
            long r7 = r7 - r3
            long r7 = r7 + r5
            r9.i = r7     // Catch:{ all -> 0x00f0 }
            goto L_0x006b
        L_0x0068:
            a((java.io.File) r10)     // Catch:{ all -> 0x00f0 }
        L_0x006b:
            int r1 = r1 + 1
            goto L_0x003e
        L_0x006e:
            int r10 = r9.l     // Catch:{ all -> 0x00f0 }
            r1 = 1
            int r10 = r10 + r1
            r9.l = r10     // Catch:{ all -> 0x00f0 }
            r10 = 0
            r0.f = r10     // Catch:{ all -> 0x00f0 }
            boolean r10 = r0.e     // Catch:{ all -> 0x00f0 }
            r10 = r10 | r11
            r2 = 10
            r3 = 32
            if (r10 == 0) goto L_0x00af
            r0.e = r1     // Catch:{ all -> 0x00f0 }
            java.io.Writer r10 = r9.j     // Catch:{ all -> 0x00f0 }
            java.lang.String r1 = "CLEAN"
            r10.append(r1)     // Catch:{ all -> 0x00f0 }
            java.io.Writer r10 = r9.j     // Catch:{ all -> 0x00f0 }
            r10.append(r3)     // Catch:{ all -> 0x00f0 }
            java.io.Writer r10 = r9.j     // Catch:{ all -> 0x00f0 }
            java.lang.String r1 = r0.f1980a     // Catch:{ all -> 0x00f0 }
            r10.append(r1)     // Catch:{ all -> 0x00f0 }
            java.io.Writer r10 = r9.j     // Catch:{ all -> 0x00f0 }
            java.lang.String r1 = r0.getLengths()     // Catch:{ all -> 0x00f0 }
            r10.append(r1)     // Catch:{ all -> 0x00f0 }
            java.io.Writer r10 = r9.j     // Catch:{ all -> 0x00f0 }
            r10.append(r2)     // Catch:{ all -> 0x00f0 }
            if (r11 == 0) goto L_0x00ce
            long r10 = r9.m     // Catch:{ all -> 0x00f0 }
            r1 = 1
            long r1 = r1 + r10
            r9.m = r1     // Catch:{ all -> 0x00f0 }
            r0.g = r10     // Catch:{ all -> 0x00f0 }
            goto L_0x00ce
        L_0x00af:
            java.util.LinkedHashMap<java.lang.String, com.bumptech.glide.a.a$c> r10 = r9.k     // Catch:{ all -> 0x00f0 }
            java.lang.String r11 = r0.f1980a     // Catch:{ all -> 0x00f0 }
            r10.remove(r11)     // Catch:{ all -> 0x00f0 }
            java.io.Writer r10 = r9.j     // Catch:{ all -> 0x00f0 }
            java.lang.String r11 = "REMOVE"
            r10.append(r11)     // Catch:{ all -> 0x00f0 }
            java.io.Writer r10 = r9.j     // Catch:{ all -> 0x00f0 }
            r10.append(r3)     // Catch:{ all -> 0x00f0 }
            java.io.Writer r10 = r9.j     // Catch:{ all -> 0x00f0 }
            java.lang.String r11 = r0.f1980a     // Catch:{ all -> 0x00f0 }
            r10.append(r11)     // Catch:{ all -> 0x00f0 }
            java.io.Writer r10 = r9.j     // Catch:{ all -> 0x00f0 }
            r10.append(r2)     // Catch:{ all -> 0x00f0 }
        L_0x00ce:
            java.io.Writer r10 = r9.j     // Catch:{ all -> 0x00f0 }
            r10.flush()     // Catch:{ all -> 0x00f0 }
            long r10 = r9.i     // Catch:{ all -> 0x00f0 }
            long r0 = r9.g     // Catch:{ all -> 0x00f0 }
            int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r2 > 0) goto L_0x00e1
            boolean r10 = r9.d()     // Catch:{ all -> 0x00f0 }
            if (r10 == 0) goto L_0x00e8
        L_0x00e1:
            java.util.concurrent.ThreadPoolExecutor r10 = r9.f1975a     // Catch:{ all -> 0x00f0 }
            java.util.concurrent.Callable<java.lang.Void> r11 = r9.n     // Catch:{ all -> 0x00f0 }
            r10.submit(r11)     // Catch:{ all -> 0x00f0 }
        L_0x00e8:
            monitor-exit(r9)
            return
        L_0x00ea:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException     // Catch:{ all -> 0x00f0 }
            r10.<init>()     // Catch:{ all -> 0x00f0 }
            throw r10     // Catch:{ all -> 0x00f0 }
        L_0x00f0:
            r10 = move-exception
            monitor-exit(r9)
            goto L_0x00f4
        L_0x00f3:
            throw r10
        L_0x00f4:
            goto L_0x00f3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.a.a.a(com.bumptech.glide.a.a$b, boolean):void");
    }
}
