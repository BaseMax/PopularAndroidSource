package j.a.a;

import j.a.e;
import j.a.g.f;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import k.s;
import k.y;
import k.z;

/* compiled from: DiskLruCache */
public final class h implements Closeable, Flushable {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f15280a = Pattern.compile("[a-z0-9_-]{1,120}");

    /* renamed from: b  reason: collision with root package name */
    public final j.a.f.b f15281b;

    /* renamed from: c  reason: collision with root package name */
    public final File f15282c;

    /* renamed from: d  reason: collision with root package name */
    public final File f15283d;

    /* renamed from: e  reason: collision with root package name */
    public final File f15284e;

    /* renamed from: f  reason: collision with root package name */
    public final File f15285f;

    /* renamed from: g  reason: collision with root package name */
    public final int f15286g;

    /* renamed from: h  reason: collision with root package name */
    public long f15287h;

    /* renamed from: i  reason: collision with root package name */
    public final int f15288i;

    /* renamed from: j  reason: collision with root package name */
    public long f15289j = 0;

    /* renamed from: k  reason: collision with root package name */
    public k.h f15290k;

    /* renamed from: l  reason: collision with root package name */
    public final LinkedHashMap<String, b> f15291l = new LinkedHashMap<>(0, 0.75f, true);
    public int m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public long s = 0;
    public final Executor t;
    public final Runnable u = new e(this);

    /* compiled from: DiskLruCache */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        public final b f15292a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean[] f15293b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f15294c;

        public a(b bVar) {
            this.f15292a = bVar;
            this.f15293b = bVar.f15300e ? null : new boolean[h.this.f15288i];
        }

        public y a(int i2) {
            synchronized (h.this) {
                if (this.f15294c) {
                    throw new IllegalStateException();
                } else if (this.f15292a.f15301f != this) {
                    y a2 = s.a();
                    return a2;
                } else {
                    if (!this.f15292a.f15300e) {
                        this.f15293b[i2] = true;
                    }
                    try {
                        g gVar = new g(this, h.this.f15281b.b(this.f15292a.f15299d[i2]));
                        return gVar;
                    } catch (FileNotFoundException unused) {
                        return s.a();
                    }
                }
            }
        }

        public void b() {
            synchronized (h.this) {
                if (!this.f15294c) {
                    if (this.f15292a.f15301f == this) {
                        h.this.a(this, true);
                    }
                    this.f15294c = true;
                } else {
                    throw new IllegalStateException();
                }
            }
        }

        public void c() {
            if (this.f15292a.f15301f == this) {
                int i2 = 0;
                while (true) {
                    h hVar = h.this;
                    if (i2 < hVar.f15288i) {
                        try {
                            hVar.f15281b.e(this.f15292a.f15299d[i2]);
                        } catch (IOException unused) {
                        }
                        i2++;
                    } else {
                        this.f15292a.f15301f = null;
                        return;
                    }
                }
            }
        }

        public void a() {
            synchronized (h.this) {
                if (!this.f15294c) {
                    if (this.f15292a.f15301f == this) {
                        h.this.a(this, false);
                    }
                    this.f15294c = true;
                } else {
                    throw new IllegalStateException();
                }
            }
        }
    }

    /* compiled from: DiskLruCache */
    private final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f15296a;

        /* renamed from: b  reason: collision with root package name */
        public final long[] f15297b;

        /* renamed from: c  reason: collision with root package name */
        public final File[] f15298c;

        /* renamed from: d  reason: collision with root package name */
        public final File[] f15299d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f15300e;

        /* renamed from: f  reason: collision with root package name */
        public a f15301f;

        /* renamed from: g  reason: collision with root package name */
        public long f15302g;

        public b(String str) {
            this.f15296a = str;
            int i2 = h.this.f15288i;
            this.f15297b = new long[i2];
            this.f15298c = new File[i2];
            this.f15299d = new File[i2];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i3 = 0; i3 < h.this.f15288i; i3++) {
                sb.append(i3);
                this.f15298c[i3] = new File(h.this.f15282c, sb.toString());
                sb.append(".tmp");
                this.f15299d[i3] = new File(h.this.f15282c, sb.toString());
                sb.setLength(length);
            }
        }

        public void a(k.h hVar) {
            for (long g2 : this.f15297b) {
                hVar.writeByte(32).g(g2);
            }
        }

        public void b(String[] strArr) {
            if (strArr.length == h.this.f15288i) {
                int i2 = 0;
                while (i2 < strArr.length) {
                    try {
                        this.f15297b[i2] = Long.parseLong(strArr[i2]);
                        i2++;
                    } catch (NumberFormatException unused) {
                        a(strArr);
                        throw null;
                    }
                }
                return;
            }
            a(strArr);
            throw null;
        }

        public final IOException a(String[] strArr) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public c a() {
            if (Thread.holdsLock(h.this)) {
                z[] zVarArr = new z[h.this.f15288i];
                long[] jArr = (long[]) this.f15297b.clone();
                int i2 = 0;
                int i3 = 0;
                while (i3 < h.this.f15288i) {
                    try {
                        zVarArr[i3] = h.this.f15281b.a(this.f15298c[i3]);
                        i3++;
                    } catch (FileNotFoundException unused) {
                        while (i2 < h.this.f15288i && zVarArr[i2] != null) {
                            e.a((Closeable) zVarArr[i2]);
                            i2++;
                        }
                        try {
                            h.this.a(this);
                        } catch (IOException unused2) {
                        }
                        return null;
                    }
                }
                c cVar = new c(this.f15296a, this.f15302g, zVarArr, jArr);
                return cVar;
            }
            throw new AssertionError();
        }
    }

    /* compiled from: DiskLruCache */
    public final class c implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        public final String f15304a;

        /* renamed from: b  reason: collision with root package name */
        public final long f15305b;

        /* renamed from: c  reason: collision with root package name */
        public final z[] f15306c;

        /* renamed from: d  reason: collision with root package name */
        public final long[] f15307d;

        public c(String str, long j2, z[] zVarArr, long[] jArr) {
            this.f15304a = str;
            this.f15305b = j2;
            this.f15306c = zVarArr;
            this.f15307d = jArr;
        }

        public z b(int i2) {
            return this.f15306c[i2];
        }

        public void close() {
            for (z a2 : this.f15306c) {
                e.a((Closeable) a2);
            }
        }

        public a s() {
            return h.this.a(this.f15304a, this.f15305b);
        }
    }

    public h(j.a.f.b bVar, File file, int i2, int i3, long j2, Executor executor) {
        this.f15281b = bVar;
        this.f15282c = file;
        this.f15286g = i2;
        this.f15283d = new File(file, "journal");
        this.f15284e = new File(file, "journal.tmp");
        this.f15285f = new File(file, "journal.bkp");
        this.f15288i = i3;
        this.f15287h = j2;
        this.t = executor;
    }

    public static h a(j.a.f.b bVar, File file, int i2, int i3, long j2) {
        if (j2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i3 > 0) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), e.a("OkHttp DiskLruCache", true));
            h hVar = new h(bVar, file, i2, i3, j2, threadPoolExecutor);
            return hVar;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    /* JADX INFO: finally extract failed */
    public synchronized void A() {
        if (this.f15290k != null) {
            this.f15290k.close();
        }
        k.h a2 = s.a(this.f15281b.b(this.f15284e));
        try {
            a2.a("libcore.io.DiskLruCache").writeByte(10);
            a2.a("1").writeByte(10);
            a2.g((long) this.f15286g).writeByte(10);
            a2.g((long) this.f15288i).writeByte(10);
            a2.writeByte(10);
            for (b next : this.f15291l.values()) {
                if (next.f15301f != null) {
                    a2.a("DIRTY").writeByte(32);
                    a2.a(next.f15296a);
                    a2.writeByte(10);
                } else {
                    a2.a("CLEAN").writeByte(32);
                    a2.a(next.f15296a);
                    next.a(a2);
                    a2.writeByte(10);
                }
            }
            a2.close();
            if (this.f15281b.d(this.f15283d)) {
                this.f15281b.a(this.f15283d, this.f15285f);
            }
            this.f15281b.a(this.f15284e, this.f15283d);
            this.f15281b.e(this.f15285f);
            this.f15290k = x();
            this.n = false;
            this.r = false;
        } catch (Throwable th) {
            a2.close();
            throw th;
        }
    }

    public void B() {
        while (this.f15289j > this.f15287h) {
            a(this.f15291l.values().iterator().next());
        }
        this.q = false;
    }

    public synchronized void close() {
        if (this.o) {
            if (!this.p) {
                for (b bVar : (b[]) this.f15291l.values().toArray(new b[this.f15291l.size()])) {
                    if (bVar.f15301f != null) {
                        bVar.f15301f.a();
                    }
                }
                B();
                this.f15290k.close();
                this.f15290k = null;
                this.p = true;
                return;
            }
        }
        this.p = true;
    }

    public a e(String str) {
        return a(str, -1);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004d, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x004f, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized j.a.a.h.c f(java.lang.String r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            r3.v()     // Catch:{ all -> 0x0050 }
            r3.s()     // Catch:{ all -> 0x0050 }
            r3.i(r4)     // Catch:{ all -> 0x0050 }
            java.util.LinkedHashMap<java.lang.String, j.a.a.h$b> r0 = r3.f15291l     // Catch:{ all -> 0x0050 }
            java.lang.Object r0 = r0.get(r4)     // Catch:{ all -> 0x0050 }
            j.a.a.h$b r0 = (j.a.a.h.b) r0     // Catch:{ all -> 0x0050 }
            r1 = 0
            if (r0 == 0) goto L_0x004e
            boolean r2 = r0.f15300e     // Catch:{ all -> 0x0050 }
            if (r2 != 0) goto L_0x001a
            goto L_0x004e
        L_0x001a:
            j.a.a.h$c r0 = r0.a()     // Catch:{ all -> 0x0050 }
            if (r0 != 0) goto L_0x0022
            monitor-exit(r3)
            return r1
        L_0x0022:
            int r1 = r3.m     // Catch:{ all -> 0x0050 }
            int r1 = r1 + 1
            r3.m = r1     // Catch:{ all -> 0x0050 }
            k.h r1 = r3.f15290k     // Catch:{ all -> 0x0050 }
            java.lang.String r2 = "READ"
            k.h r1 = r1.a((java.lang.String) r2)     // Catch:{ all -> 0x0050 }
            r2 = 32
            k.h r1 = r1.writeByte(r2)     // Catch:{ all -> 0x0050 }
            k.h r4 = r1.a((java.lang.String) r4)     // Catch:{ all -> 0x0050 }
            r1 = 10
            r4.writeByte(r1)     // Catch:{ all -> 0x0050 }
            boolean r4 = r3.w()     // Catch:{ all -> 0x0050 }
            if (r4 == 0) goto L_0x004c
            java.util.concurrent.Executor r4 = r3.t     // Catch:{ all -> 0x0050 }
            java.lang.Runnable r1 = r3.u     // Catch:{ all -> 0x0050 }
            r4.execute(r1)     // Catch:{ all -> 0x0050 }
        L_0x004c:
            monitor-exit(r3)
            return r0
        L_0x004e:
            monitor-exit(r3)
            return r1
        L_0x0050:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.a.h.f(java.lang.String):j.a.a.h$c");
    }

    public synchronized void flush() {
        if (this.o) {
            s();
            B();
            this.f15290k.flush();
        }
    }

    public final void g(String str) {
        String str2;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i2 = indexOf + 1;
            int indexOf2 = str.indexOf(32, i2);
            if (indexOf2 == -1) {
                str2 = str.substring(i2);
                if (indexOf == 6 && str.startsWith("REMOVE")) {
                    this.f15291l.remove(str2);
                    return;
                }
            } else {
                str2 = str.substring(i2, indexOf2);
            }
            b bVar = this.f15291l.get(str2);
            if (bVar == null) {
                bVar = new b(str2);
                this.f15291l.put(str2, bVar);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                bVar.f15300e = true;
                bVar.f15301f = null;
                bVar.b(split);
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                bVar.f15301f = new a(bVar);
            } else if (!(indexOf2 == -1 && indexOf == 4 && str.startsWith("READ"))) {
                throw new IOException("unexpected journal line: " + str);
            }
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0028, code lost:
        return r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean h(java.lang.String r7) {
        /*
            r6 = this;
            monitor-enter(r6)
            r6.v()     // Catch:{ all -> 0x0029 }
            r6.s()     // Catch:{ all -> 0x0029 }
            r6.i(r7)     // Catch:{ all -> 0x0029 }
            java.util.LinkedHashMap<java.lang.String, j.a.a.h$b> r0 = r6.f15291l     // Catch:{ all -> 0x0029 }
            java.lang.Object r7 = r0.get(r7)     // Catch:{ all -> 0x0029 }
            j.a.a.h$b r7 = (j.a.a.h.b) r7     // Catch:{ all -> 0x0029 }
            r0 = 0
            if (r7 != 0) goto L_0x0017
            monitor-exit(r6)
            return r0
        L_0x0017:
            boolean r7 = r6.a(r7)     // Catch:{ all -> 0x0029 }
            if (r7 == 0) goto L_0x0027
            long r1 = r6.f15289j     // Catch:{ all -> 0x0029 }
            long r3 = r6.f15287h     // Catch:{ all -> 0x0029 }
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 > 0) goto L_0x0027
            r6.q = r0     // Catch:{ all -> 0x0029 }
        L_0x0027:
            monitor-exit(r6)
            return r7
        L_0x0029:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.a.h.h(java.lang.String):boolean");
    }

    public final void i(String str) {
        if (!f15280a.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
        }
    }

    public synchronized boolean isClosed() {
        return this.p;
    }

    public final synchronized void s() {
        if (isClosed()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public void t() {
        close();
        this.f15281b.c(this.f15282c);
    }

    public synchronized void u() {
        v();
        for (b a2 : (b[]) this.f15291l.values().toArray(new b[this.f15291l.size()])) {
            a(a2);
        }
        this.q = false;
    }

    public synchronized void v() {
        if (!this.o) {
            if (this.f15281b.d(this.f15285f)) {
                if (this.f15281b.d(this.f15283d)) {
                    this.f15281b.e(this.f15285f);
                } else {
                    this.f15281b.a(this.f15285f, this.f15283d);
                }
            }
            if (this.f15281b.d(this.f15283d)) {
                try {
                    z();
                    y();
                    this.o = true;
                    return;
                } catch (IOException e2) {
                    f b2 = f.b();
                    b2.a(5, "DiskLruCache " + this.f15282c + " is corrupt: " + e2.getMessage() + ", removing", (Throwable) e2);
                    t();
                    this.p = false;
                } catch (Throwable th) {
                    this.p = false;
                    throw th;
                }
            }
            A();
            this.o = true;
        }
    }

    public boolean w() {
        int i2 = this.m;
        return i2 >= 2000 && i2 >= this.f15291l.size();
    }

    public final k.h x() {
        return s.a((y) new f(this, this.f15281b.f(this.f15283d)));
    }

    public final void y() {
        this.f15281b.e(this.f15284e);
        Iterator<b> it = this.f15291l.values().iterator();
        while (it.hasNext()) {
            b next = it.next();
            int i2 = 0;
            if (next.f15301f == null) {
                while (i2 < this.f15288i) {
                    this.f15289j += next.f15297b[i2];
                    i2++;
                }
            } else {
                next.f15301f = null;
                while (i2 < this.f15288i) {
                    this.f15281b.e(next.f15298c[i2]);
                    this.f15281b.e(next.f15299d[i2]);
                    i2++;
                }
                it.remove();
            }
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:16|17|(1:19)(1:20)|21|22) */
    /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
        r9.m = r0 - r9.f15291l.size();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x006a, code lost:
        if (r1.d() == false) goto L_0x006c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x006c, code lost:
        A();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0070, code lost:
        r9.f15290k = x();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0079, code lost:
        return;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:16:0x005d */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:23:0x007a=Splitter:B:23:0x007a, B:16:0x005d=Splitter:B:16:0x005d} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void z() {
        /*
            r9 = this;
            java.lang.String r0 = ", "
            j.a.f.b r1 = r9.f15281b
            java.io.File r2 = r9.f15283d
            k.z r1 = r1.a(r2)
            k.i r1 = k.s.a((k.z) r1)
            java.lang.String r2 = r1.g()     // Catch:{ all -> 0x00a8 }
            java.lang.String r3 = r1.g()     // Catch:{ all -> 0x00a8 }
            java.lang.String r4 = r1.g()     // Catch:{ all -> 0x00a8 }
            java.lang.String r5 = r1.g()     // Catch:{ all -> 0x00a8 }
            java.lang.String r6 = r1.g()     // Catch:{ all -> 0x00a8 }
            java.lang.String r7 = "libcore.io.DiskLruCache"
            boolean r7 = r7.equals(r2)     // Catch:{ all -> 0x00a8 }
            if (r7 == 0) goto L_0x007a
            java.lang.String r7 = "1"
            boolean r7 = r7.equals(r3)     // Catch:{ all -> 0x00a8 }
            if (r7 == 0) goto L_0x007a
            int r7 = r9.f15286g     // Catch:{ all -> 0x00a8 }
            java.lang.String r7 = java.lang.Integer.toString(r7)     // Catch:{ all -> 0x00a8 }
            boolean r4 = r7.equals(r4)     // Catch:{ all -> 0x00a8 }
            if (r4 == 0) goto L_0x007a
            int r4 = r9.f15288i     // Catch:{ all -> 0x00a8 }
            java.lang.String r4 = java.lang.Integer.toString(r4)     // Catch:{ all -> 0x00a8 }
            boolean r4 = r4.equals(r5)     // Catch:{ all -> 0x00a8 }
            if (r4 == 0) goto L_0x007a
            java.lang.String r4 = ""
            boolean r4 = r4.equals(r6)     // Catch:{ all -> 0x00a8 }
            if (r4 == 0) goto L_0x007a
            r0 = 0
        L_0x0053:
            java.lang.String r2 = r1.g()     // Catch:{ EOFException -> 0x005d }
            r9.g(r2)     // Catch:{ EOFException -> 0x005d }
            int r0 = r0 + 1
            goto L_0x0053
        L_0x005d:
            java.util.LinkedHashMap<java.lang.String, j.a.a.h$b> r2 = r9.f15291l     // Catch:{ all -> 0x00a8 }
            int r2 = r2.size()     // Catch:{ all -> 0x00a8 }
            int r0 = r0 - r2
            r9.m = r0     // Catch:{ all -> 0x00a8 }
            boolean r0 = r1.d()     // Catch:{ all -> 0x00a8 }
            if (r0 != 0) goto L_0x0070
            r9.A()     // Catch:{ all -> 0x00a8 }
            goto L_0x0076
        L_0x0070:
            k.h r0 = r9.x()     // Catch:{ all -> 0x00a8 }
            r9.f15290k = r0     // Catch:{ all -> 0x00a8 }
        L_0x0076:
            j.a.e.a((java.io.Closeable) r1)
            return
        L_0x007a:
            java.io.IOException r4 = new java.io.IOException     // Catch:{ all -> 0x00a8 }
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ all -> 0x00a8 }
            r7.<init>()     // Catch:{ all -> 0x00a8 }
            java.lang.String r8 = "unexpected journal header: ["
            r7.append(r8)     // Catch:{ all -> 0x00a8 }
            r7.append(r2)     // Catch:{ all -> 0x00a8 }
            r7.append(r0)     // Catch:{ all -> 0x00a8 }
            r7.append(r3)     // Catch:{ all -> 0x00a8 }
            r7.append(r0)     // Catch:{ all -> 0x00a8 }
            r7.append(r5)     // Catch:{ all -> 0x00a8 }
            r7.append(r0)     // Catch:{ all -> 0x00a8 }
            r7.append(r6)     // Catch:{ all -> 0x00a8 }
            java.lang.String r0 = "]"
            r7.append(r0)     // Catch:{ all -> 0x00a8 }
            java.lang.String r0 = r7.toString()     // Catch:{ all -> 0x00a8 }
            r4.<init>(r0)     // Catch:{ all -> 0x00a8 }
            throw r4     // Catch:{ all -> 0x00a8 }
        L_0x00a8:
            r0 = move-exception
            j.a.e.a((java.io.Closeable) r1)
            goto L_0x00ae
        L_0x00ad:
            throw r0
        L_0x00ae:
            goto L_0x00ad
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.a.h.z():void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0022, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized j.a.a.h.a a(java.lang.String r6, long r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            r5.v()     // Catch:{ all -> 0x0074 }
            r5.s()     // Catch:{ all -> 0x0074 }
            r5.i(r6)     // Catch:{ all -> 0x0074 }
            java.util.LinkedHashMap<java.lang.String, j.a.a.h$b> r0 = r5.f15291l     // Catch:{ all -> 0x0074 }
            java.lang.Object r0 = r0.get(r6)     // Catch:{ all -> 0x0074 }
            j.a.a.h$b r0 = (j.a.a.h.b) r0     // Catch:{ all -> 0x0074 }
            r1 = -1
            r3 = 0
            int r4 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r4 == 0) goto L_0x0023
            if (r0 == 0) goto L_0x0021
            long r1 = r0.f15302g     // Catch:{ all -> 0x0074 }
            int r4 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r4 == 0) goto L_0x0023
        L_0x0021:
            monitor-exit(r5)
            return r3
        L_0x0023:
            if (r0 == 0) goto L_0x002b
            j.a.a.h$a r7 = r0.f15301f     // Catch:{ all -> 0x0074 }
            if (r7 == 0) goto L_0x002b
            monitor-exit(r5)
            return r3
        L_0x002b:
            boolean r7 = r5.q     // Catch:{ all -> 0x0074 }
            if (r7 != 0) goto L_0x006b
            boolean r7 = r5.r     // Catch:{ all -> 0x0074 }
            if (r7 == 0) goto L_0x0034
            goto L_0x006b
        L_0x0034:
            k.h r7 = r5.f15290k     // Catch:{ all -> 0x0074 }
            java.lang.String r8 = "DIRTY"
            k.h r7 = r7.a((java.lang.String) r8)     // Catch:{ all -> 0x0074 }
            r8 = 32
            k.h r7 = r7.writeByte(r8)     // Catch:{ all -> 0x0074 }
            k.h r7 = r7.a((java.lang.String) r6)     // Catch:{ all -> 0x0074 }
            r8 = 10
            r7.writeByte(r8)     // Catch:{ all -> 0x0074 }
            k.h r7 = r5.f15290k     // Catch:{ all -> 0x0074 }
            r7.flush()     // Catch:{ all -> 0x0074 }
            boolean r7 = r5.n     // Catch:{ all -> 0x0074 }
            if (r7 == 0) goto L_0x0056
            monitor-exit(r5)
            return r3
        L_0x0056:
            if (r0 != 0) goto L_0x0062
            j.a.a.h$b r0 = new j.a.a.h$b     // Catch:{ all -> 0x0074 }
            r0.<init>(r6)     // Catch:{ all -> 0x0074 }
            java.util.LinkedHashMap<java.lang.String, j.a.a.h$b> r7 = r5.f15291l     // Catch:{ all -> 0x0074 }
            r7.put(r6, r0)     // Catch:{ all -> 0x0074 }
        L_0x0062:
            j.a.a.h$a r6 = new j.a.a.h$a     // Catch:{ all -> 0x0074 }
            r6.<init>(r0)     // Catch:{ all -> 0x0074 }
            r0.f15301f = r6     // Catch:{ all -> 0x0074 }
            monitor-exit(r5)
            return r6
        L_0x006b:
            java.util.concurrent.Executor r6 = r5.t     // Catch:{ all -> 0x0074 }
            java.lang.Runnable r7 = r5.u     // Catch:{ all -> 0x0074 }
            r6.execute(r7)     // Catch:{ all -> 0x0074 }
            monitor-exit(r5)
            return r3
        L_0x0074:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.a.h.a(java.lang.String, long):j.a.a.h$a");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00f4, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void a(j.a.a.h.a r10, boolean r11) {
        /*
            r9 = this;
            monitor-enter(r9)
            j.a.a.h$b r0 = r10.f15292a     // Catch:{ all -> 0x00fb }
            j.a.a.h$a r1 = r0.f15301f     // Catch:{ all -> 0x00fb }
            if (r1 != r10) goto L_0x00f5
            r1 = 0
            if (r11 == 0) goto L_0x0047
            boolean r2 = r0.f15300e     // Catch:{ all -> 0x00fb }
            if (r2 != 0) goto L_0x0047
            r2 = 0
        L_0x000f:
            int r3 = r9.f15288i     // Catch:{ all -> 0x00fb }
            if (r2 >= r3) goto L_0x0047
            boolean[] r3 = r10.f15293b     // Catch:{ all -> 0x00fb }
            boolean r3 = r3[r2]     // Catch:{ all -> 0x00fb }
            if (r3 == 0) goto L_0x002d
            j.a.f.b r3 = r9.f15281b     // Catch:{ all -> 0x00fb }
            java.io.File[] r4 = r0.f15299d     // Catch:{ all -> 0x00fb }
            r4 = r4[r2]     // Catch:{ all -> 0x00fb }
            boolean r3 = r3.d(r4)     // Catch:{ all -> 0x00fb }
            if (r3 != 0) goto L_0x002a
            r10.a()     // Catch:{ all -> 0x00fb }
            monitor-exit(r9)
            return
        L_0x002a:
            int r2 = r2 + 1
            goto L_0x000f
        L_0x002d:
            r10.a()     // Catch:{ all -> 0x00fb }
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException     // Catch:{ all -> 0x00fb }
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ all -> 0x00fb }
            r11.<init>()     // Catch:{ all -> 0x00fb }
            java.lang.String r0 = "Newly created entry didn't create value for index "
            r11.append(r0)     // Catch:{ all -> 0x00fb }
            r11.append(r2)     // Catch:{ all -> 0x00fb }
            java.lang.String r11 = r11.toString()     // Catch:{ all -> 0x00fb }
            r10.<init>(r11)     // Catch:{ all -> 0x00fb }
            throw r10     // Catch:{ all -> 0x00fb }
        L_0x0047:
            int r10 = r9.f15288i     // Catch:{ all -> 0x00fb }
            if (r1 >= r10) goto L_0x007f
            java.io.File[] r10 = r0.f15299d     // Catch:{ all -> 0x00fb }
            r10 = r10[r1]     // Catch:{ all -> 0x00fb }
            if (r11 == 0) goto L_0x0077
            j.a.f.b r2 = r9.f15281b     // Catch:{ all -> 0x00fb }
            boolean r2 = r2.d(r10)     // Catch:{ all -> 0x00fb }
            if (r2 == 0) goto L_0x007c
            java.io.File[] r2 = r0.f15298c     // Catch:{ all -> 0x00fb }
            r2 = r2[r1]     // Catch:{ all -> 0x00fb }
            j.a.f.b r3 = r9.f15281b     // Catch:{ all -> 0x00fb }
            r3.a(r10, r2)     // Catch:{ all -> 0x00fb }
            long[] r10 = r0.f15297b     // Catch:{ all -> 0x00fb }
            r3 = r10[r1]     // Catch:{ all -> 0x00fb }
            j.a.f.b r10 = r9.f15281b     // Catch:{ all -> 0x00fb }
            long r5 = r10.g(r2)     // Catch:{ all -> 0x00fb }
            long[] r10 = r0.f15297b     // Catch:{ all -> 0x00fb }
            r10[r1] = r5     // Catch:{ all -> 0x00fb }
            long r7 = r9.f15289j     // Catch:{ all -> 0x00fb }
            long r7 = r7 - r3
            long r7 = r7 + r5
            r9.f15289j = r7     // Catch:{ all -> 0x00fb }
            goto L_0x007c
        L_0x0077:
            j.a.f.b r2 = r9.f15281b     // Catch:{ all -> 0x00fb }
            r2.e(r10)     // Catch:{ all -> 0x00fb }
        L_0x007c:
            int r1 = r1 + 1
            goto L_0x0047
        L_0x007f:
            int r10 = r9.m     // Catch:{ all -> 0x00fb }
            r1 = 1
            int r10 = r10 + r1
            r9.m = r10     // Catch:{ all -> 0x00fb }
            r10 = 0
            r0.f15301f = r10     // Catch:{ all -> 0x00fb }
            boolean r10 = r0.f15300e     // Catch:{ all -> 0x00fb }
            r10 = r10 | r11
            r2 = 10
            r3 = 32
            if (r10 == 0) goto L_0x00bb
            r0.f15300e = r1     // Catch:{ all -> 0x00fb }
            k.h r10 = r9.f15290k     // Catch:{ all -> 0x00fb }
            java.lang.String r1 = "CLEAN"
            k.h r10 = r10.a((java.lang.String) r1)     // Catch:{ all -> 0x00fb }
            r10.writeByte(r3)     // Catch:{ all -> 0x00fb }
            k.h r10 = r9.f15290k     // Catch:{ all -> 0x00fb }
            java.lang.String r1 = r0.f15296a     // Catch:{ all -> 0x00fb }
            r10.a((java.lang.String) r1)     // Catch:{ all -> 0x00fb }
            k.h r10 = r9.f15290k     // Catch:{ all -> 0x00fb }
            r0.a((k.h) r10)     // Catch:{ all -> 0x00fb }
            k.h r10 = r9.f15290k     // Catch:{ all -> 0x00fb }
            r10.writeByte(r2)     // Catch:{ all -> 0x00fb }
            if (r11 == 0) goto L_0x00d9
            long r10 = r9.s     // Catch:{ all -> 0x00fb }
            r1 = 1
            long r1 = r1 + r10
            r9.s = r1     // Catch:{ all -> 0x00fb }
            r0.f15302g = r10     // Catch:{ all -> 0x00fb }
            goto L_0x00d9
        L_0x00bb:
            java.util.LinkedHashMap<java.lang.String, j.a.a.h$b> r10 = r9.f15291l     // Catch:{ all -> 0x00fb }
            java.lang.String r11 = r0.f15296a     // Catch:{ all -> 0x00fb }
            r10.remove(r11)     // Catch:{ all -> 0x00fb }
            k.h r10 = r9.f15290k     // Catch:{ all -> 0x00fb }
            java.lang.String r11 = "REMOVE"
            k.h r10 = r10.a((java.lang.String) r11)     // Catch:{ all -> 0x00fb }
            r10.writeByte(r3)     // Catch:{ all -> 0x00fb }
            k.h r10 = r9.f15290k     // Catch:{ all -> 0x00fb }
            java.lang.String r11 = r0.f15296a     // Catch:{ all -> 0x00fb }
            r10.a((java.lang.String) r11)     // Catch:{ all -> 0x00fb }
            k.h r10 = r9.f15290k     // Catch:{ all -> 0x00fb }
            r10.writeByte(r2)     // Catch:{ all -> 0x00fb }
        L_0x00d9:
            k.h r10 = r9.f15290k     // Catch:{ all -> 0x00fb }
            r10.flush()     // Catch:{ all -> 0x00fb }
            long r10 = r9.f15289j     // Catch:{ all -> 0x00fb }
            long r0 = r9.f15287h     // Catch:{ all -> 0x00fb }
            int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r2 > 0) goto L_0x00ec
            boolean r10 = r9.w()     // Catch:{ all -> 0x00fb }
            if (r10 == 0) goto L_0x00f3
        L_0x00ec:
            java.util.concurrent.Executor r10 = r9.t     // Catch:{ all -> 0x00fb }
            java.lang.Runnable r11 = r9.u     // Catch:{ all -> 0x00fb }
            r10.execute(r11)     // Catch:{ all -> 0x00fb }
        L_0x00f3:
            monitor-exit(r9)
            return
        L_0x00f5:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException     // Catch:{ all -> 0x00fb }
            r10.<init>()     // Catch:{ all -> 0x00fb }
            throw r10     // Catch:{ all -> 0x00fb }
        L_0x00fb:
            r10 = move-exception
            monitor-exit(r9)
            goto L_0x00ff
        L_0x00fe:
            throw r10
        L_0x00ff:
            goto L_0x00fe
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.a.h.a(j.a.a.h$a, boolean):void");
    }

    public boolean a(b bVar) {
        a aVar = bVar.f15301f;
        if (aVar != null) {
            aVar.c();
        }
        for (int i2 = 0; i2 < this.f15288i; i2++) {
            this.f15281b.e(bVar.f15298c[i2]);
            long j2 = this.f15289j;
            long[] jArr = bVar.f15297b;
            this.f15289j = j2 - jArr[i2];
            jArr[i2] = 0;
        }
        this.m++;
        this.f15290k.a("REMOVE").writeByte(32).a(bVar.f15296a).writeByte(10);
        this.f15291l.remove(bVar.f15296a);
        if (w()) {
            this.t.execute(this.u);
        }
        return true;
    }
}
