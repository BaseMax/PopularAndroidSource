package c.b.a.a;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
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

/* compiled from: DiskLruCache */
public final class b implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public final File f3689a;

    /* renamed from: b  reason: collision with root package name */
    public final File f3690b;

    /* renamed from: c  reason: collision with root package name */
    public final File f3691c;

    /* renamed from: d  reason: collision with root package name */
    public final File f3692d;

    /* renamed from: e  reason: collision with root package name */
    public final int f3693e;

    /* renamed from: f  reason: collision with root package name */
    public long f3694f;

    /* renamed from: g  reason: collision with root package name */
    public final int f3695g;

    /* renamed from: h  reason: collision with root package name */
    public long f3696h = 0;

    /* renamed from: i  reason: collision with root package name */
    public Writer f3697i;

    /* renamed from: j  reason: collision with root package name */
    public final LinkedHashMap<String, c> f3698j = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: k  reason: collision with root package name */
    public int f3699k;

    /* renamed from: l  reason: collision with root package name */
    public long f3700l = 0;
    public final ThreadPoolExecutor m;
    public final Callable<Void> n;

    /* compiled from: DiskLruCache */
    private static final class a implements ThreadFactory {
        public a() {
        }

        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }

        public /* synthetic */ a(a aVar) {
            this();
        }
    }

    /* renamed from: c.b.a.a.b$b  reason: collision with other inner class name */
    /* compiled from: DiskLruCache */
    public final class C0052b {

        /* renamed from: a  reason: collision with root package name */
        public final c f3701a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean[] f3702b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f3703c;

        public /* synthetic */ C0052b(b bVar, c cVar, a aVar) {
            this(cVar);
        }

        public void c() {
            b.this.a(this, true);
            this.f3703c = true;
        }

        public C0052b(c cVar) {
            this.f3701a = cVar;
            this.f3702b = cVar.f3709e ? null : new boolean[b.this.f3695g];
        }

        public File a(int i2) {
            File b2;
            synchronized (b.this) {
                if (this.f3701a.f3710f == this) {
                    if (!this.f3701a.f3709e) {
                        this.f3702b[i2] = true;
                    }
                    b2 = this.f3701a.b(i2);
                    if (!b.this.f3689a.exists()) {
                        b.this.f3689a.mkdirs();
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
            return b2;
        }

        public void b() {
            if (!this.f3703c) {
                try {
                    a();
                } catch (IOException unused) {
                }
            }
        }

        public void a() {
            b.this.a(this, false);
        }
    }

    /* compiled from: DiskLruCache */
    private final class c {

        /* renamed from: a  reason: collision with root package name */
        public final String f3705a;

        /* renamed from: b  reason: collision with root package name */
        public final long[] f3706b;

        /* renamed from: c  reason: collision with root package name */
        public File[] f3707c;

        /* renamed from: d  reason: collision with root package name */
        public File[] f3708d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f3709e;

        /* renamed from: f  reason: collision with root package name */
        public C0052b f3710f;

        /* renamed from: g  reason: collision with root package name */
        public long f3711g;

        public /* synthetic */ c(b bVar, String str, a aVar) {
            this(str);
        }

        public c(String str) {
            this.f3705a = str;
            this.f3706b = new long[b.this.f3695g];
            this.f3707c = new File[b.this.f3695g];
            this.f3708d = new File[b.this.f3695g];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i2 = 0; i2 < b.this.f3695g; i2++) {
                sb.append(i2);
                this.f3707c[i2] = new File(b.this.f3689a, sb.toString());
                sb.append(".tmp");
                this.f3708d[i2] = new File(b.this.f3689a, sb.toString());
                sb.setLength(length);
            }
        }

        public final void b(String[] strArr) {
            if (strArr.length == b.this.f3695g) {
                int i2 = 0;
                while (i2 < strArr.length) {
                    try {
                        this.f3706b[i2] = Long.parseLong(strArr[i2]);
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

        public String a() {
            StringBuilder sb = new StringBuilder();
            for (long append : this.f3706b) {
                sb.append(' ');
                sb.append(append);
            }
            return sb.toString();
        }

        public File b(int i2) {
            return this.f3708d[i2];
        }

        public final IOException a(String[] strArr) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File a(int i2) {
            return this.f3707c[i2];
        }
    }

    /* compiled from: DiskLruCache */
    public final class d {

        /* renamed from: a  reason: collision with root package name */
        public final String f3713a;

        /* renamed from: b  reason: collision with root package name */
        public final long f3714b;

        /* renamed from: c  reason: collision with root package name */
        public final long[] f3715c;

        /* renamed from: d  reason: collision with root package name */
        public final File[] f3716d;

        public /* synthetic */ d(b bVar, String str, long j2, File[] fileArr, long[] jArr, a aVar) {
            this(str, j2, fileArr, jArr);
        }

        public File a(int i2) {
            return this.f3716d[i2];
        }

        public d(String str, long j2, File[] fileArr, long[] jArr) {
            this.f3713a = str;
            this.f3714b = j2;
            this.f3716d = fileArr;
            this.f3715c = jArr;
        }
    }

    public b(File file, int i2, int i3, long j2) {
        File file2 = file;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a(null));
        this.m = threadPoolExecutor;
        this.n = new a(this);
        this.f3689a = file2;
        this.f3693e = i2;
        this.f3690b = new File(file2, "journal");
        this.f3691c = new File(file2, "journal.tmp");
        this.f3692d = new File(file2, "journal.bkp");
        this.f3695g = i3;
        this.f3694f = j2;
    }

    public synchronized void close() {
        if (this.f3697i != null) {
            Iterator it = new ArrayList(this.f3698j.values()).iterator();
            while (it.hasNext()) {
                c cVar = (c) it.next();
                if (cVar.f3710f != null) {
                    cVar.f3710f.a();
                }
            }
            y();
            this.f3697i.close();
            this.f3697i = null;
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
                    this.f3698j.remove(str2);
                    return;
                }
            } else {
                str2 = str.substring(i2, indexOf2);
            }
            c cVar = this.f3698j.get(str2);
            if (cVar == null) {
                cVar = new c(this, str2, null);
                this.f3698j.put(str2, cVar);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                boolean unused = cVar.f3709e = true;
                C0052b unused2 = cVar.f3710f = null;
                cVar.b(split);
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                C0052b unused3 = cVar.f3710f = new C0052b(this, cVar, null);
            } else if (!(indexOf2 == -1 && indexOf == 4 && str.startsWith("READ"))) {
                throw new IOException("unexpected journal line: " + str);
            }
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x008c, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x008e, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean h(java.lang.String r8) {
        /*
            r7 = this;
            monitor-enter(r7)
            r7.s()     // Catch:{ all -> 0x008f }
            java.util.LinkedHashMap<java.lang.String, c.b.a.a.b$c> r0 = r7.f3698j     // Catch:{ all -> 0x008f }
            java.lang.Object r0 = r0.get(r8)     // Catch:{ all -> 0x008f }
            c.b.a.a.b$c r0 = (c.b.a.a.b.c) r0     // Catch:{ all -> 0x008f }
            r1 = 0
            if (r0 == 0) goto L_0x008d
            c.b.a.a.b$b r2 = r0.f3710f     // Catch:{ all -> 0x008f }
            if (r2 == 0) goto L_0x0017
            goto L_0x008d
        L_0x0017:
            int r2 = r7.f3695g     // Catch:{ all -> 0x008f }
            if (r1 >= r2) goto L_0x0059
            java.io.File r2 = r0.a((int) r1)     // Catch:{ all -> 0x008f }
            boolean r3 = r2.exists()     // Catch:{ all -> 0x008f }
            if (r3 == 0) goto L_0x0043
            boolean r3 = r2.delete()     // Catch:{ all -> 0x008f }
            if (r3 == 0) goto L_0x002c
            goto L_0x0043
        L_0x002c:
            java.io.IOException r8 = new java.io.IOException     // Catch:{ all -> 0x008f }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x008f }
            r0.<init>()     // Catch:{ all -> 0x008f }
            java.lang.String r1 = "failed to delete "
            r0.append(r1)     // Catch:{ all -> 0x008f }
            r0.append(r2)     // Catch:{ all -> 0x008f }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x008f }
            r8.<init>(r0)     // Catch:{ all -> 0x008f }
            throw r8     // Catch:{ all -> 0x008f }
        L_0x0043:
            long r2 = r7.f3696h     // Catch:{ all -> 0x008f }
            long[] r4 = r0.f3706b     // Catch:{ all -> 0x008f }
            r5 = r4[r1]     // Catch:{ all -> 0x008f }
            long r2 = r2 - r5
            r7.f3696h = r2     // Catch:{ all -> 0x008f }
            long[] r2 = r0.f3706b     // Catch:{ all -> 0x008f }
            r3 = 0
            r2[r1] = r3     // Catch:{ all -> 0x008f }
            int r1 = r1 + 1
            goto L_0x0017
        L_0x0059:
            int r0 = r7.f3699k     // Catch:{ all -> 0x008f }
            r1 = 1
            int r0 = r0 + r1
            r7.f3699k = r0     // Catch:{ all -> 0x008f }
            java.io.Writer r0 = r7.f3697i     // Catch:{ all -> 0x008f }
            java.lang.String r2 = "REMOVE"
            r0.append(r2)     // Catch:{ all -> 0x008f }
            java.io.Writer r0 = r7.f3697i     // Catch:{ all -> 0x008f }
            r2 = 32
            r0.append(r2)     // Catch:{ all -> 0x008f }
            java.io.Writer r0 = r7.f3697i     // Catch:{ all -> 0x008f }
            r0.append(r8)     // Catch:{ all -> 0x008f }
            java.io.Writer r0 = r7.f3697i     // Catch:{ all -> 0x008f }
            r2 = 10
            r0.append(r2)     // Catch:{ all -> 0x008f }
            java.util.LinkedHashMap<java.lang.String, c.b.a.a.b$c> r0 = r7.f3698j     // Catch:{ all -> 0x008f }
            r0.remove(r8)     // Catch:{ all -> 0x008f }
            boolean r8 = r7.u()     // Catch:{ all -> 0x008f }
            if (r8 == 0) goto L_0x008b
            java.util.concurrent.ThreadPoolExecutor r8 = r7.m     // Catch:{ all -> 0x008f }
            java.util.concurrent.Callable<java.lang.Void> r0 = r7.n     // Catch:{ all -> 0x008f }
            r8.submit(r0)     // Catch:{ all -> 0x008f }
        L_0x008b:
            monitor-exit(r7)
            return r1
        L_0x008d:
            monitor-exit(r7)
            return r1
        L_0x008f:
            r8 = move-exception
            monitor-exit(r7)
            goto L_0x0093
        L_0x0092:
            throw r8
        L_0x0093:
            goto L_0x0092
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.a.b.h(java.lang.String):boolean");
    }

    public final void s() {
        if (this.f3697i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public void t() {
        close();
        e.a(this.f3689a);
    }

    public final boolean u() {
        int i2 = this.f3699k;
        return i2 >= 2000 && i2 >= this.f3698j.size();
    }

    public final void v() {
        a(this.f3691c);
        Iterator<c> it = this.f3698j.values().iterator();
        while (it.hasNext()) {
            c next = it.next();
            int i2 = 0;
            if (next.f3710f == null) {
                while (i2 < this.f3695g) {
                    this.f3696h += next.f3706b[i2];
                    i2++;
                }
            } else {
                C0052b unused = next.f3710f = null;
                while (i2 < this.f3695g) {
                    a(next.a(i2));
                    a(next.b(i2));
                    i2++;
                }
                it.remove();
            }
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:16|17|(1:19)(1:20)|21|22) */
    /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
        r9.f3699k = r0 - r9.f3698j.size();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x006c, code lost:
        if (r1.t() != false) goto L_0x006e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x006e, code lost:
        x();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0072, code lost:
        r9.f3697i = new java.io.BufferedWriter(new java.io.OutputStreamWriter(new java.io.FileOutputStream(r9.f3690b, true), c.b.a.a.e.f3724a));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x008b, code lost:
        return;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:16:0x005f */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:23:0x008c=Splitter:B:23:0x008c, B:16:0x005f=Splitter:B:16:0x005f} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void w() {
        /*
            r9 = this;
            java.lang.String r0 = ", "
            c.b.a.a.d r1 = new c.b.a.a.d
            java.io.FileInputStream r2 = new java.io.FileInputStream
            java.io.File r3 = r9.f3690b
            r2.<init>(r3)
            java.nio.charset.Charset r3 = c.b.a.a.e.f3724a
            r1.<init>(r2, r3)
            java.lang.String r2 = r1.u()     // Catch:{ all -> 0x00ba }
            java.lang.String r3 = r1.u()     // Catch:{ all -> 0x00ba }
            java.lang.String r4 = r1.u()     // Catch:{ all -> 0x00ba }
            java.lang.String r5 = r1.u()     // Catch:{ all -> 0x00ba }
            java.lang.String r6 = r1.u()     // Catch:{ all -> 0x00ba }
            java.lang.String r7 = "libcore.io.DiskLruCache"
            boolean r7 = r7.equals(r2)     // Catch:{ all -> 0x00ba }
            if (r7 == 0) goto L_0x008c
            java.lang.String r7 = "1"
            boolean r7 = r7.equals(r3)     // Catch:{ all -> 0x00ba }
            if (r7 == 0) goto L_0x008c
            int r7 = r9.f3693e     // Catch:{ all -> 0x00ba }
            java.lang.String r7 = java.lang.Integer.toString(r7)     // Catch:{ all -> 0x00ba }
            boolean r4 = r7.equals(r4)     // Catch:{ all -> 0x00ba }
            if (r4 == 0) goto L_0x008c
            int r4 = r9.f3695g     // Catch:{ all -> 0x00ba }
            java.lang.String r4 = java.lang.Integer.toString(r4)     // Catch:{ all -> 0x00ba }
            boolean r4 = r4.equals(r5)     // Catch:{ all -> 0x00ba }
            if (r4 == 0) goto L_0x008c
            java.lang.String r4 = ""
            boolean r4 = r4.equals(r6)     // Catch:{ all -> 0x00ba }
            if (r4 == 0) goto L_0x008c
            r0 = 0
        L_0x0055:
            java.lang.String r2 = r1.u()     // Catch:{ EOFException -> 0x005f }
            r9.g(r2)     // Catch:{ EOFException -> 0x005f }
            int r0 = r0 + 1
            goto L_0x0055
        L_0x005f:
            java.util.LinkedHashMap<java.lang.String, c.b.a.a.b$c> r2 = r9.f3698j     // Catch:{ all -> 0x00ba }
            int r2 = r2.size()     // Catch:{ all -> 0x00ba }
            int r0 = r0 - r2
            r9.f3699k = r0     // Catch:{ all -> 0x00ba }
            boolean r0 = r1.t()     // Catch:{ all -> 0x00ba }
            if (r0 == 0) goto L_0x0072
            r9.x()     // Catch:{ all -> 0x00ba }
            goto L_0x0088
        L_0x0072:
            java.io.BufferedWriter r0 = new java.io.BufferedWriter     // Catch:{ all -> 0x00ba }
            java.io.OutputStreamWriter r2 = new java.io.OutputStreamWriter     // Catch:{ all -> 0x00ba }
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch:{ all -> 0x00ba }
            java.io.File r4 = r9.f3690b     // Catch:{ all -> 0x00ba }
            r5 = 1
            r3.<init>(r4, r5)     // Catch:{ all -> 0x00ba }
            java.nio.charset.Charset r4 = c.b.a.a.e.f3724a     // Catch:{ all -> 0x00ba }
            r2.<init>(r3, r4)     // Catch:{ all -> 0x00ba }
            r0.<init>(r2)     // Catch:{ all -> 0x00ba }
            r9.f3697i = r0     // Catch:{ all -> 0x00ba }
        L_0x0088:
            c.b.a.a.e.a((java.io.Closeable) r1)
            return
        L_0x008c:
            java.io.IOException r4 = new java.io.IOException     // Catch:{ all -> 0x00ba }
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ba }
            r7.<init>()     // Catch:{ all -> 0x00ba }
            java.lang.String r8 = "unexpected journal header: ["
            r7.append(r8)     // Catch:{ all -> 0x00ba }
            r7.append(r2)     // Catch:{ all -> 0x00ba }
            r7.append(r0)     // Catch:{ all -> 0x00ba }
            r7.append(r3)     // Catch:{ all -> 0x00ba }
            r7.append(r0)     // Catch:{ all -> 0x00ba }
            r7.append(r5)     // Catch:{ all -> 0x00ba }
            r7.append(r0)     // Catch:{ all -> 0x00ba }
            r7.append(r6)     // Catch:{ all -> 0x00ba }
            java.lang.String r0 = "]"
            r7.append(r0)     // Catch:{ all -> 0x00ba }
            java.lang.String r0 = r7.toString()     // Catch:{ all -> 0x00ba }
            r4.<init>(r0)     // Catch:{ all -> 0x00ba }
            throw r4     // Catch:{ all -> 0x00ba }
        L_0x00ba:
            r0 = move-exception
            c.b.a.a.e.a((java.io.Closeable) r1)
            goto L_0x00c0
        L_0x00bf:
            throw r0
        L_0x00c0:
            goto L_0x00bf
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.a.b.w():void");
    }

    /* JADX INFO: finally extract failed */
    public final synchronized void x() {
        if (this.f3697i != null) {
            this.f3697i.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3691c), e.f3724a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f3693e));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f3695g));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (c next : this.f3698j.values()) {
                if (next.f3710f != null) {
                    bufferedWriter.write("DIRTY " + next.f3705a + 10);
                } else {
                    bufferedWriter.write("CLEAN " + next.f3705a + next.a() + 10);
                }
            }
            bufferedWriter.close();
            if (this.f3690b.exists()) {
                a(this.f3690b, this.f3692d, true);
            }
            a(this.f3691c, this.f3690b, false);
            this.f3692d.delete();
            this.f3697i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3690b, true), e.f3724a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    public final void y() {
        while (this.f3696h > this.f3694f) {
            h((String) this.f3698j.entrySet().iterator().next().getKey());
        }
    }

    public C0052b e(String str) {
        return a(str, -1);
    }

    public synchronized d f(String str) {
        s();
        c cVar = this.f3698j.get(str);
        if (cVar == null) {
            return null;
        }
        if (!cVar.f3709e) {
            return null;
        }
        for (File exists : cVar.f3707c) {
            if (!exists.exists()) {
                return null;
            }
        }
        this.f3699k++;
        this.f3697i.append("READ");
        this.f3697i.append(' ');
        this.f3697i.append(str);
        this.f3697i.append(10);
        if (u()) {
            this.m.submit(this.n);
        }
        d dVar = new d(this, str, cVar.f3711g, cVar.f3707c, cVar.f3706b, null);
        return dVar;
    }

    public static b a(File file, int i2, int i3, long j2) {
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
            b bVar = new b(file, i2, i3, j2);
            if (bVar.f3690b.exists()) {
                try {
                    bVar.w();
                    bVar.v();
                    return bVar;
                } catch (IOException e2) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                    bVar.t();
                }
            }
            file.mkdirs();
            b bVar2 = new b(file, i2, i3, j2);
            bVar2.x();
            return bVar2;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    public static void a(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static void a(File file, File file2, boolean z) {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001e, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized c.b.a.a.b.C0052b a(java.lang.String r6, long r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            r5.s()     // Catch:{ all -> 0x005d }
            java.util.LinkedHashMap<java.lang.String, c.b.a.a.b$c> r0 = r5.f3698j     // Catch:{ all -> 0x005d }
            java.lang.Object r0 = r0.get(r6)     // Catch:{ all -> 0x005d }
            c.b.a.a.b$c r0 = (c.b.a.a.b.c) r0     // Catch:{ all -> 0x005d }
            r1 = -1
            r3 = 0
            int r4 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r4 == 0) goto L_0x001f
            if (r0 == 0) goto L_0x001d
            long r1 = r0.f3711g     // Catch:{ all -> 0x005d }
            int r4 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r4 == 0) goto L_0x001f
        L_0x001d:
            monitor-exit(r5)
            return r3
        L_0x001f:
            if (r0 != 0) goto L_0x002c
            c.b.a.a.b$c r0 = new c.b.a.a.b$c     // Catch:{ all -> 0x005d }
            r0.<init>(r5, r6, r3)     // Catch:{ all -> 0x005d }
            java.util.LinkedHashMap<java.lang.String, c.b.a.a.b$c> r7 = r5.f3698j     // Catch:{ all -> 0x005d }
            r7.put(r6, r0)     // Catch:{ all -> 0x005d }
            goto L_0x0034
        L_0x002c:
            c.b.a.a.b$b r7 = r0.f3710f     // Catch:{ all -> 0x005d }
            if (r7 == 0) goto L_0x0034
            monitor-exit(r5)
            return r3
        L_0x0034:
            c.b.a.a.b$b r7 = new c.b.a.a.b$b     // Catch:{ all -> 0x005d }
            r7.<init>(r5, r0, r3)     // Catch:{ all -> 0x005d }
            c.b.a.a.b.C0052b unused = r0.f3710f = r7     // Catch:{ all -> 0x005d }
            java.io.Writer r8 = r5.f3697i     // Catch:{ all -> 0x005d }
            java.lang.String r0 = "DIRTY"
            r8.append(r0)     // Catch:{ all -> 0x005d }
            java.io.Writer r8 = r5.f3697i     // Catch:{ all -> 0x005d }
            r0 = 32
            r8.append(r0)     // Catch:{ all -> 0x005d }
            java.io.Writer r8 = r5.f3697i     // Catch:{ all -> 0x005d }
            r8.append(r6)     // Catch:{ all -> 0x005d }
            java.io.Writer r6 = r5.f3697i     // Catch:{ all -> 0x005d }
            r8 = 10
            r6.append(r8)     // Catch:{ all -> 0x005d }
            java.io.Writer r6 = r5.f3697i     // Catch:{ all -> 0x005d }
            r6.flush()     // Catch:{ all -> 0x005d }
            monitor-exit(r5)
            return r7
        L_0x005d:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.a.b.a(java.lang.String, long):c.b.a.a.b$b");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0107, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void a(c.b.a.a.b.C0052b r10, boolean r11) {
        /*
            r9 = this;
            monitor-enter(r9)
            c.b.a.a.b$c r0 = r10.f3701a     // Catch:{ all -> 0x010e }
            c.b.a.a.b$b r1 = r0.f3710f     // Catch:{ all -> 0x010e }
            if (r1 != r10) goto L_0x0108
            r1 = 0
            if (r11 == 0) goto L_0x004d
            boolean r2 = r0.f3709e     // Catch:{ all -> 0x010e }
            if (r2 != 0) goto L_0x004d
            r2 = 0
        L_0x0015:
            int r3 = r9.f3695g     // Catch:{ all -> 0x010e }
            if (r2 >= r3) goto L_0x004d
            boolean[] r3 = r10.f3702b     // Catch:{ all -> 0x010e }
            boolean r3 = r3[r2]     // Catch:{ all -> 0x010e }
            if (r3 == 0) goto L_0x0033
            java.io.File r3 = r0.b((int) r2)     // Catch:{ all -> 0x010e }
            boolean r3 = r3.exists()     // Catch:{ all -> 0x010e }
            if (r3 != 0) goto L_0x0030
            r10.a()     // Catch:{ all -> 0x010e }
            monitor-exit(r9)
            return
        L_0x0030:
            int r2 = r2 + 1
            goto L_0x0015
        L_0x0033:
            r10.a()     // Catch:{ all -> 0x010e }
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException     // Catch:{ all -> 0x010e }
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ all -> 0x010e }
            r11.<init>()     // Catch:{ all -> 0x010e }
            java.lang.String r0 = "Newly created entry didn't create value for index "
            r11.append(r0)     // Catch:{ all -> 0x010e }
            r11.append(r2)     // Catch:{ all -> 0x010e }
            java.lang.String r11 = r11.toString()     // Catch:{ all -> 0x010e }
            r10.<init>(r11)     // Catch:{ all -> 0x010e }
            throw r10     // Catch:{ all -> 0x010e }
        L_0x004d:
            int r10 = r9.f3695g     // Catch:{ all -> 0x010e }
            if (r1 >= r10) goto L_0x0081
            java.io.File r10 = r0.b((int) r1)     // Catch:{ all -> 0x010e }
            if (r11 == 0) goto L_0x007b
            boolean r2 = r10.exists()     // Catch:{ all -> 0x010e }
            if (r2 == 0) goto L_0x007e
            java.io.File r2 = r0.a((int) r1)     // Catch:{ all -> 0x010e }
            r10.renameTo(r2)     // Catch:{ all -> 0x010e }
            long[] r10 = r0.f3706b     // Catch:{ all -> 0x010e }
            r3 = r10[r1]     // Catch:{ all -> 0x010e }
            long r5 = r2.length()     // Catch:{ all -> 0x010e }
            long[] r10 = r0.f3706b     // Catch:{ all -> 0x010e }
            r10[r1] = r5     // Catch:{ all -> 0x010e }
            long r7 = r9.f3696h     // Catch:{ all -> 0x010e }
            long r7 = r7 - r3
            long r7 = r7 + r5
            r9.f3696h = r7     // Catch:{ all -> 0x010e }
            goto L_0x007e
        L_0x007b:
            a((java.io.File) r10)     // Catch:{ all -> 0x010e }
        L_0x007e:
            int r1 = r1 + 1
            goto L_0x004d
        L_0x0081:
            int r10 = r9.f3699k     // Catch:{ all -> 0x010e }
            r1 = 1
            int r10 = r10 + r1
            r9.f3699k = r10     // Catch:{ all -> 0x010e }
            r10 = 0
            c.b.a.a.b.C0052b unused = r0.f3710f = r10     // Catch:{ all -> 0x010e }
            boolean r10 = r0.f3709e     // Catch:{ all -> 0x010e }
            r10 = r10 | r11
            r2 = 10
            r3 = 32
            if (r10 == 0) goto L_0x00c9
            boolean unused = r0.f3709e = r1     // Catch:{ all -> 0x010e }
            java.io.Writer r10 = r9.f3697i     // Catch:{ all -> 0x010e }
            java.lang.String r1 = "CLEAN"
            r10.append(r1)     // Catch:{ all -> 0x010e }
            java.io.Writer r10 = r9.f3697i     // Catch:{ all -> 0x010e }
            r10.append(r3)     // Catch:{ all -> 0x010e }
            java.io.Writer r10 = r9.f3697i     // Catch:{ all -> 0x010e }
            java.lang.String r1 = r0.f3705a     // Catch:{ all -> 0x010e }
            r10.append(r1)     // Catch:{ all -> 0x010e }
            java.io.Writer r10 = r9.f3697i     // Catch:{ all -> 0x010e }
            java.lang.String r1 = r0.a()     // Catch:{ all -> 0x010e }
            r10.append(r1)     // Catch:{ all -> 0x010e }
            java.io.Writer r10 = r9.f3697i     // Catch:{ all -> 0x010e }
            r10.append(r2)     // Catch:{ all -> 0x010e }
            if (r11 == 0) goto L_0x00ec
            long r10 = r9.f3700l     // Catch:{ all -> 0x010e }
            r1 = 1
            long r1 = r1 + r10
            r9.f3700l = r1     // Catch:{ all -> 0x010e }
            long unused = r0.f3711g = r10     // Catch:{ all -> 0x010e }
            goto L_0x00ec
        L_0x00c9:
            java.util.LinkedHashMap<java.lang.String, c.b.a.a.b$c> r10 = r9.f3698j     // Catch:{ all -> 0x010e }
            java.lang.String r11 = r0.f3705a     // Catch:{ all -> 0x010e }
            r10.remove(r11)     // Catch:{ all -> 0x010e }
            java.io.Writer r10 = r9.f3697i     // Catch:{ all -> 0x010e }
            java.lang.String r11 = "REMOVE"
            r10.append(r11)     // Catch:{ all -> 0x010e }
            java.io.Writer r10 = r9.f3697i     // Catch:{ all -> 0x010e }
            r10.append(r3)     // Catch:{ all -> 0x010e }
            java.io.Writer r10 = r9.f3697i     // Catch:{ all -> 0x010e }
            java.lang.String r11 = r0.f3705a     // Catch:{ all -> 0x010e }
            r10.append(r11)     // Catch:{ all -> 0x010e }
            java.io.Writer r10 = r9.f3697i     // Catch:{ all -> 0x010e }
            r10.append(r2)     // Catch:{ all -> 0x010e }
        L_0x00ec:
            java.io.Writer r10 = r9.f3697i     // Catch:{ all -> 0x010e }
            r10.flush()     // Catch:{ all -> 0x010e }
            long r10 = r9.f3696h     // Catch:{ all -> 0x010e }
            long r0 = r9.f3694f     // Catch:{ all -> 0x010e }
            int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r2 > 0) goto L_0x00ff
            boolean r10 = r9.u()     // Catch:{ all -> 0x010e }
            if (r10 == 0) goto L_0x0106
        L_0x00ff:
            java.util.concurrent.ThreadPoolExecutor r10 = r9.m     // Catch:{ all -> 0x010e }
            java.util.concurrent.Callable<java.lang.Void> r11 = r9.n     // Catch:{ all -> 0x010e }
            r10.submit(r11)     // Catch:{ all -> 0x010e }
        L_0x0106:
            monitor-exit(r9)
            return
        L_0x0108:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException     // Catch:{ all -> 0x010e }
            r10.<init>()     // Catch:{ all -> 0x010e }
            throw r10     // Catch:{ all -> 0x010e }
        L_0x010e:
            r10 = move-exception
            monitor-exit(r9)
            goto L_0x0112
        L_0x0111:
            throw r10
        L_0x0112:
            goto L_0x0111
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.a.b.a(c.b.a.a.b$b, boolean):void");
    }
}
