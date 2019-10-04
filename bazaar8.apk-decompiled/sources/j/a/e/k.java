package j.a.e;

import j.a.e;
import j.a.e.p;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import k.g;
import k.h;
import k.i;
import okhttp3.internal.http2.ErrorCode;
import okio.ByteString;

/* compiled from: Http2Connection */
public final class k implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public static final ExecutorService f15485a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f15486b;

    /* renamed from: c  reason: collision with root package name */
    public final b f15487c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<Integer, q> f15488d = new LinkedHashMap();

    /* renamed from: e  reason: collision with root package name */
    public final String f15489e;

    /* renamed from: f  reason: collision with root package name */
    public int f15490f;

    /* renamed from: g  reason: collision with root package name */
    public int f15491g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f15492h;

    /* renamed from: i  reason: collision with root package name */
    public final ScheduledExecutorService f15493i;

    /* renamed from: j  reason: collision with root package name */
    public final ExecutorService f15494j;

    /* renamed from: k  reason: collision with root package name */
    public final u f15495k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f15496l;
    public long m = 0;
    public long n;
    public v o = new v();
    public final v p = new v();
    public boolean q = false;
    public final Socket r;
    public final r s;
    public final d t;
    public final Set<Integer> u = new LinkedHashSet();

    /* compiled from: Http2Connection */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public Socket f15497a;

        /* renamed from: b  reason: collision with root package name */
        public String f15498b;

        /* renamed from: c  reason: collision with root package name */
        public i f15499c;

        /* renamed from: d  reason: collision with root package name */
        public h f15500d;

        /* renamed from: e  reason: collision with root package name */
        public b f15501e = b.f15505a;

        /* renamed from: f  reason: collision with root package name */
        public u f15502f = u.f15565a;

        /* renamed from: g  reason: collision with root package name */
        public boolean f15503g;

        /* renamed from: h  reason: collision with root package name */
        public int f15504h;

        public a(boolean z) {
            this.f15503g = z;
        }

        public a a(Socket socket, String str, i iVar, h hVar) {
            this.f15497a = socket;
            this.f15498b = str;
            this.f15499c = iVar;
            this.f15500d = hVar;
            return this;
        }

        public a a(b bVar) {
            this.f15501e = bVar;
            return this;
        }

        public a a(int i2) {
            this.f15504h = i2;
            return this;
        }

        public k a() {
            return new k(this);
        }
    }

    /* compiled from: Http2Connection */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f15505a = new l();

        public void a(k kVar) {
        }

        public abstract void a(q qVar);
    }

    /* compiled from: Http2Connection */
    final class c extends j.a.b {

        /* renamed from: b  reason: collision with root package name */
        public final boolean f15506b;

        /* renamed from: c  reason: collision with root package name */
        public final int f15507c;

        /* renamed from: d  reason: collision with root package name */
        public final int f15508d;

        public c(boolean z, int i2, int i3) {
            super("OkHttp %s ping %08x%08x", k.this.f15489e, Integer.valueOf(i2), Integer.valueOf(i3));
            this.f15506b = z;
            this.f15507c = i2;
            this.f15508d = i3;
        }

        public void b() {
            k.this.a(this.f15506b, this.f15507c, this.f15508d);
        }
    }

    /* compiled from: Http2Connection */
    class d extends j.a.b implements p.b {

        /* renamed from: b  reason: collision with root package name */
        public final p f15510b;

        public d(p pVar) {
            super("OkHttp %s", k.this.f15489e);
            this.f15510b = pVar;
        }

        public void a() {
        }

        public void a(int i2, int i3, int i4, boolean z) {
        }

        public void a(boolean z, int i2, i iVar, int i3) {
            if (k.this.c(i2)) {
                k.this.a(i2, iVar, i3, z);
                return;
            }
            q b2 = k.this.b(i2);
            if (b2 == null) {
                k.this.c(i2, ErrorCode.PROTOCOL_ERROR);
                long j2 = (long) i3;
                k.this.h(j2);
                iVar.skip(j2);
                return;
            }
            b2.a(iVar, i3);
            if (z) {
                b2.i();
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
            r1 = okhttp3.internal.http2.ErrorCode.PROTOCOL_ERROR;
            r0 = okhttp3.internal.http2.ErrorCode.PROTOCOL_ERROR;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:18:?, code lost:
            r2 = r4.f15511c;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:23:0x002b, code lost:
            r2 = th;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x001c */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void b() {
            /*
                r4 = this;
                okhttp3.internal.http2.ErrorCode r0 = okhttp3.internal.http2.ErrorCode.INTERNAL_ERROR
                j.a.e.p r1 = r4.f15510b     // Catch:{ IOException -> 0x001b, all -> 0x0018 }
                r1.a((j.a.e.p.b) r4)     // Catch:{ IOException -> 0x001b, all -> 0x0018 }
            L_0x0007:
                j.a.e.p r1 = r4.f15510b     // Catch:{ IOException -> 0x001b, all -> 0x0018 }
                r2 = 0
                boolean r1 = r1.a((boolean) r2, (j.a.e.p.b) r4)     // Catch:{ IOException -> 0x001b, all -> 0x0018 }
                if (r1 == 0) goto L_0x0011
                goto L_0x0007
            L_0x0011:
                okhttp3.internal.http2.ErrorCode r1 = okhttp3.internal.http2.ErrorCode.NO_ERROR     // Catch:{ IOException -> 0x001b, all -> 0x0018 }
                okhttp3.internal.http2.ErrorCode r0 = okhttp3.internal.http2.ErrorCode.CANCEL     // Catch:{ IOException -> 0x001c }
                j.a.e.k r2 = j.a.e.k.this     // Catch:{ IOException -> 0x0025 }
                goto L_0x0022
            L_0x0018:
                r2 = move-exception
                r1 = r0
                goto L_0x002c
            L_0x001b:
                r1 = r0
            L_0x001c:
                okhttp3.internal.http2.ErrorCode r1 = okhttp3.internal.http2.ErrorCode.PROTOCOL_ERROR     // Catch:{ all -> 0x002b }
                okhttp3.internal.http2.ErrorCode r0 = okhttp3.internal.http2.ErrorCode.PROTOCOL_ERROR     // Catch:{ all -> 0x002b }
                j.a.e.k r2 = j.a.e.k.this     // Catch:{ IOException -> 0x0025 }
            L_0x0022:
                r2.a((okhttp3.internal.http2.ErrorCode) r1, (okhttp3.internal.http2.ErrorCode) r0)     // Catch:{ IOException -> 0x0025 }
            L_0x0025:
                j.a.e.p r0 = r4.f15510b
                j.a.e.a((java.io.Closeable) r0)
                return
            L_0x002b:
                r2 = move-exception
            L_0x002c:
                j.a.e.k r3 = j.a.e.k.this     // Catch:{ IOException -> 0x0031 }
                r3.a((okhttp3.internal.http2.ErrorCode) r1, (okhttp3.internal.http2.ErrorCode) r0)     // Catch:{ IOException -> 0x0031 }
            L_0x0031:
                j.a.e.p r0 = r4.f15510b
                j.a.e.a((java.io.Closeable) r0)
                goto L_0x0038
            L_0x0037:
                throw r2
            L_0x0038:
                goto L_0x0037
            */
            throw new UnsupportedOperationException("Method not decompiled: j.a.e.k.d.b():void");
        }

        /* JADX WARNING: Code restructure failed: missing block: B:25:0x0074, code lost:
            r0.a(r13);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:26:0x0077, code lost:
            if (r10 == false) goto L_0x007c;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:27:0x0079, code lost:
            r0.i();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:28:0x007c, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a(boolean r10, int r11, int r12, java.util.List<j.a.e.a> r13) {
            /*
                r9 = this;
                j.a.e.k r12 = j.a.e.k.this
                boolean r12 = r12.c(r11)
                if (r12 == 0) goto L_0x000e
                j.a.e.k r12 = j.a.e.k.this
                r12.b(r11, r13, r10)
                return
            L_0x000e:
                j.a.e.k r12 = j.a.e.k.this
                monitor-enter(r12)
                j.a.e.k r0 = j.a.e.k.this     // Catch:{ all -> 0x007d }
                j.a.e.q r0 = r0.b((int) r11)     // Catch:{ all -> 0x007d }
                if (r0 != 0) goto L_0x0073
                j.a.e.k r0 = j.a.e.k.this     // Catch:{ all -> 0x007d }
                boolean r0 = r0.f15492h     // Catch:{ all -> 0x007d }
                if (r0 == 0) goto L_0x0021
                monitor-exit(r12)     // Catch:{ all -> 0x007d }
                return
            L_0x0021:
                j.a.e.k r0 = j.a.e.k.this     // Catch:{ all -> 0x007d }
                int r0 = r0.f15490f     // Catch:{ all -> 0x007d }
                if (r11 > r0) goto L_0x0029
                monitor-exit(r12)     // Catch:{ all -> 0x007d }
                return
            L_0x0029:
                int r0 = r11 % 2
                j.a.e.k r1 = j.a.e.k.this     // Catch:{ all -> 0x007d }
                int r1 = r1.f15491g     // Catch:{ all -> 0x007d }
                r2 = 2
                int r1 = r1 % r2
                if (r0 != r1) goto L_0x0035
                monitor-exit(r12)     // Catch:{ all -> 0x007d }
                return
            L_0x0035:
                j.C r8 = j.a.e.b((java.util.List<j.a.e.a>) r13)     // Catch:{ all -> 0x007d }
                j.a.e.q r13 = new j.a.e.q     // Catch:{ all -> 0x007d }
                j.a.e.k r5 = j.a.e.k.this     // Catch:{ all -> 0x007d }
                r6 = 0
                r3 = r13
                r4 = r11
                r7 = r10
                r3.<init>(r4, r5, r6, r7, r8)     // Catch:{ all -> 0x007d }
                j.a.e.k r10 = j.a.e.k.this     // Catch:{ all -> 0x007d }
                r10.f15490f = r11     // Catch:{ all -> 0x007d }
                j.a.e.k r10 = j.a.e.k.this     // Catch:{ all -> 0x007d }
                java.util.Map<java.lang.Integer, j.a.e.q> r10 = r10.f15488d     // Catch:{ all -> 0x007d }
                java.lang.Integer r0 = java.lang.Integer.valueOf(r11)     // Catch:{ all -> 0x007d }
                r10.put(r0, r13)     // Catch:{ all -> 0x007d }
                java.util.concurrent.ExecutorService r10 = j.a.e.k.f15485a     // Catch:{ all -> 0x007d }
                j.a.e.m r0 = new j.a.e.m     // Catch:{ all -> 0x007d }
                java.lang.String r1 = "OkHttp %s stream %d"
                java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x007d }
                r3 = 0
                j.a.e.k r4 = j.a.e.k.this     // Catch:{ all -> 0x007d }
                java.lang.String r4 = r4.f15489e     // Catch:{ all -> 0x007d }
                r2[r3] = r4     // Catch:{ all -> 0x007d }
                r3 = 1
                java.lang.Integer r11 = java.lang.Integer.valueOf(r11)     // Catch:{ all -> 0x007d }
                r2[r3] = r11     // Catch:{ all -> 0x007d }
                r0.<init>(r9, r1, r2, r13)     // Catch:{ all -> 0x007d }
                r10.execute(r0)     // Catch:{ all -> 0x007d }
                monitor-exit(r12)     // Catch:{ all -> 0x007d }
                return
            L_0x0073:
                monitor-exit(r12)     // Catch:{ all -> 0x007d }
                r0.a((java.util.List<j.a.e.a>) r13)
                if (r10 == 0) goto L_0x007c
                r0.i()
            L_0x007c:
                return
            L_0x007d:
                r10 = move-exception
                monitor-exit(r12)     // Catch:{ all -> 0x007d }
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: j.a.e.k.d.a(boolean, int, int, java.util.List):void");
        }

        public void a(int i2, ErrorCode errorCode) {
            if (k.this.c(i2)) {
                k.this.a(i2, errorCode);
                return;
            }
            q d2 = k.this.d(i2);
            if (d2 != null) {
                d2.d(errorCode);
            }
        }

        /* JADX WARNING: type inference failed for: r1v13, types: [java.lang.Object[]] */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a(boolean r11, j.a.e.v r12) {
            /*
                r10 = this;
                j.a.e.k r0 = j.a.e.k.this
                monitor-enter(r0)
                j.a.e.k r1 = j.a.e.k.this     // Catch:{ all -> 0x008f }
                j.a.e.v r1 = r1.p     // Catch:{ all -> 0x008f }
                int r1 = r1.c()     // Catch:{ all -> 0x008f }
                if (r11 == 0) goto L_0x0014
                j.a.e.k r11 = j.a.e.k.this     // Catch:{ all -> 0x008f }
                j.a.e.v r11 = r11.p     // Catch:{ all -> 0x008f }
                r11.a()     // Catch:{ all -> 0x008f }
            L_0x0014:
                j.a.e.k r11 = j.a.e.k.this     // Catch:{ all -> 0x008f }
                j.a.e.v r11 = r11.p     // Catch:{ all -> 0x008f }
                r11.a((j.a.e.v) r12)     // Catch:{ all -> 0x008f }
                r10.a(r12)     // Catch:{ all -> 0x008f }
                j.a.e.k r11 = j.a.e.k.this     // Catch:{ all -> 0x008f }
                j.a.e.v r11 = r11.p     // Catch:{ all -> 0x008f }
                int r11 = r11.c()     // Catch:{ all -> 0x008f }
                r12 = -1
                r2 = 0
                r4 = 1
                r5 = 0
                if (r11 == r12) goto L_0x005f
                if (r11 == r1) goto L_0x005f
                int r11 = r11 - r1
                long r11 = (long) r11     // Catch:{ all -> 0x008f }
                j.a.e.k r1 = j.a.e.k.this     // Catch:{ all -> 0x008f }
                boolean r1 = r1.q     // Catch:{ all -> 0x008f }
                if (r1 != 0) goto L_0x003b
                j.a.e.k r1 = j.a.e.k.this     // Catch:{ all -> 0x008f }
                r1.q = r4     // Catch:{ all -> 0x008f }
            L_0x003b:
                j.a.e.k r1 = j.a.e.k.this     // Catch:{ all -> 0x008f }
                java.util.Map<java.lang.Integer, j.a.e.q> r1 = r1.f15488d     // Catch:{ all -> 0x008f }
                boolean r1 = r1.isEmpty()     // Catch:{ all -> 0x008f }
                if (r1 != 0) goto L_0x0060
                j.a.e.k r1 = j.a.e.k.this     // Catch:{ all -> 0x008f }
                java.util.Map<java.lang.Integer, j.a.e.q> r1 = r1.f15488d     // Catch:{ all -> 0x008f }
                java.util.Collection r1 = r1.values()     // Catch:{ all -> 0x008f }
                j.a.e.k r5 = j.a.e.k.this     // Catch:{ all -> 0x008f }
                java.util.Map<java.lang.Integer, j.a.e.q> r5 = r5.f15488d     // Catch:{ all -> 0x008f }
                int r5 = r5.size()     // Catch:{ all -> 0x008f }
                j.a.e.q[] r5 = new j.a.e.q[r5]     // Catch:{ all -> 0x008f }
                java.lang.Object[] r1 = r1.toArray(r5)     // Catch:{ all -> 0x008f }
                r5 = r1
                j.a.e.q[] r5 = (j.a.e.q[]) r5     // Catch:{ all -> 0x008f }
                goto L_0x0060
            L_0x005f:
                r11 = r2
            L_0x0060:
                java.util.concurrent.ExecutorService r1 = j.a.e.k.f15485a     // Catch:{ all -> 0x008f }
                j.a.e.n r6 = new j.a.e.n     // Catch:{ all -> 0x008f }
                java.lang.String r7 = "OkHttp %s settings"
                java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ all -> 0x008f }
                j.a.e.k r8 = j.a.e.k.this     // Catch:{ all -> 0x008f }
                java.lang.String r8 = r8.f15489e     // Catch:{ all -> 0x008f }
                r9 = 0
                r4[r9] = r8     // Catch:{ all -> 0x008f }
                r6.<init>(r10, r7, r4)     // Catch:{ all -> 0x008f }
                r1.execute(r6)     // Catch:{ all -> 0x008f }
                monitor-exit(r0)     // Catch:{ all -> 0x008f }
                if (r5 == 0) goto L_0x008e
                int r0 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
                if (r0 == 0) goto L_0x008e
                int r0 = r5.length
            L_0x007f:
                if (r9 >= r0) goto L_0x008e
                r1 = r5[r9]
                monitor-enter(r1)
                r1.a((long) r11)     // Catch:{ all -> 0x008b }
                monitor-exit(r1)     // Catch:{ all -> 0x008b }
                int r9 = r9 + 1
                goto L_0x007f
            L_0x008b:
                r11 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x008b }
                throw r11
            L_0x008e:
                return
            L_0x008f:
                r11 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x008f }
                goto L_0x0093
            L_0x0092:
                throw r11
            L_0x0093:
                goto L_0x0092
            */
            throw new UnsupportedOperationException("Method not decompiled: j.a.e.k.d.a(boolean, j.a.e.v):void");
        }

        public final void a(v vVar) {
            try {
                k.this.f15493i.execute(new o(this, "OkHttp %s ACK Settings", new Object[]{k.this.f15489e}, vVar));
            } catch (RejectedExecutionException unused) {
            }
        }

        public void a(boolean z, int i2, int i3) {
            if (z) {
                synchronized (k.this) {
                    boolean unused = k.this.f15496l = false;
                    k.this.notifyAll();
                }
                return;
            }
            try {
                k.this.f15493i.execute(new c(true, i2, i3));
            } catch (RejectedExecutionException unused2) {
            }
        }

        public void a(int i2, ErrorCode errorCode, ByteString byteString) {
            q[] qVarArr;
            byteString.k();
            synchronized (k.this) {
                qVarArr = (q[]) k.this.f15488d.values().toArray(new q[k.this.f15488d.size()]);
                k.this.f15492h = true;
            }
            for (q qVar : qVarArr) {
                if (qVar.c() > i2 && qVar.f()) {
                    qVar.d(ErrorCode.REFUSED_STREAM);
                    k.this.d(qVar.c());
                }
            }
        }

        public void a(int i2, long j2) {
            if (i2 == 0) {
                synchronized (k.this) {
                    k.this.n += j2;
                    k.this.notifyAll();
                }
                return;
            }
            q b2 = k.this.b(i2);
            if (b2 != null) {
                synchronized (b2) {
                    b2.a(j2);
                }
            }
        }

        public void a(int i2, int i3, List<a> list) {
            k.this.a(i3, list);
        }
    }

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), e.a("OkHttp Http2Connection", true));
        f15485a = threadPoolExecutor;
    }

    public k(a aVar) {
        a aVar2 = aVar;
        this.f15495k = aVar2.f15502f;
        boolean z = aVar2.f15503g;
        this.f15486b = z;
        this.f15487c = aVar2.f15501e;
        this.f15491g = z ? 1 : 2;
        if (aVar2.f15503g) {
            this.f15491g += 2;
        }
        if (aVar2.f15503g) {
            this.o.a(7, 16777216);
        }
        this.f15489e = aVar2.f15498b;
        this.f15493i = new ScheduledThreadPoolExecutor(1, e.a(e.a("OkHttp %s Writer", this.f15489e), false));
        if (aVar2.f15504h != 0) {
            ScheduledExecutorService scheduledExecutorService = this.f15493i;
            c cVar = new c(false, 0, 0);
            int i2 = aVar2.f15504h;
            scheduledExecutorService.scheduleAtFixedRate(cVar, (long) i2, (long) i2, TimeUnit.MILLISECONDS);
        }
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), e.a(e.a("OkHttp %s Push Observer", this.f15489e), true));
        this.f15494j = threadPoolExecutor;
        this.p.a(7, 65535);
        this.p.a(5, 16384);
        this.n = (long) this.p.c();
        this.r = aVar2.f15497a;
        this.s = new r(aVar2.f15500d, this.f15486b);
        this.t = new d(new p(aVar2.f15499c, this.f15486b));
    }

    public void c(int i2, ErrorCode errorCode) {
        try {
            ScheduledExecutorService scheduledExecutorService = this.f15493i;
            e eVar = new e(this, "OkHttp %s stream %d", new Object[]{this.f15489e, Integer.valueOf(i2)}, i2, errorCode);
            scheduledExecutorService.execute(eVar);
        } catch (RejectedExecutionException unused) {
        }
    }

    public boolean c(int i2) {
        return i2 != 0 && (i2 & 1) == 0;
    }

    public void close() {
        a(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    public synchronized q d(int i2) {
        q remove;
        remove = this.f15488d.remove(Integer.valueOf(i2));
        notifyAll();
        return remove;
    }

    public void flush() {
        this.s.flush();
    }

    public synchronized void h(long j2) {
        this.m += j2;
        if (this.m >= ((long) (this.o.c() / 2))) {
            b(0, this.m);
            this.m = 0;
        }
    }

    public final void t() {
        try {
            a(ErrorCode.PROTOCOL_ERROR, ErrorCode.PROTOCOL_ERROR);
        } catch (IOException unused) {
        }
    }

    public synchronized boolean u() {
        return this.f15492h;
    }

    public synchronized int v() {
        return this.p.b(Integer.MAX_VALUE);
    }

    public void w() {
        a(true);
    }

    public synchronized q b(int i2) {
        return this.f15488d.get(Integer.valueOf(i2));
    }

    public q a(List<a> list, boolean z) {
        return a(0, list, z);
    }

    public void b(int i2, ErrorCode errorCode) {
        this.s.a(i2, errorCode);
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0043  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final j.a.e.q a(int r11, java.util.List<j.a.e.a> r12, boolean r13) {
        /*
            r10 = this;
            r6 = r13 ^ 1
            r4 = 0
            j.a.e.r r7 = r10.s
            monitor-enter(r7)
            monitor-enter(r10)     // Catch:{ all -> 0x0078 }
            int r0 = r10.f15491g     // Catch:{ all -> 0x0075 }
            r1 = 1073741823(0x3fffffff, float:1.9999999)
            if (r0 <= r1) goto L_0x0013
            okhttp3.internal.http2.ErrorCode r0 = okhttp3.internal.http2.ErrorCode.REFUSED_STREAM     // Catch:{ all -> 0x0075 }
            r10.a((okhttp3.internal.http2.ErrorCode) r0)     // Catch:{ all -> 0x0075 }
        L_0x0013:
            boolean r0 = r10.f15492h     // Catch:{ all -> 0x0075 }
            if (r0 != 0) goto L_0x006f
            int r8 = r10.f15491g     // Catch:{ all -> 0x0075 }
            int r0 = r10.f15491g     // Catch:{ all -> 0x0075 }
            int r0 = r0 + 2
            r10.f15491g = r0     // Catch:{ all -> 0x0075 }
            j.a.e.q r9 = new j.a.e.q     // Catch:{ all -> 0x0075 }
            r5 = 0
            r0 = r9
            r1 = r8
            r2 = r10
            r3 = r6
            r0.<init>(r1, r2, r3, r4, r5)     // Catch:{ all -> 0x0075 }
            if (r13 == 0) goto L_0x003c
            long r0 = r10.n     // Catch:{ all -> 0x0075 }
            r2 = 0
            int r13 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r13 == 0) goto L_0x003c
            long r0 = r9.f15529b     // Catch:{ all -> 0x0075 }
            int r13 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r13 != 0) goto L_0x003a
            goto L_0x003c
        L_0x003a:
            r13 = 0
            goto L_0x003d
        L_0x003c:
            r13 = 1
        L_0x003d:
            boolean r0 = r9.g()     // Catch:{ all -> 0x0075 }
            if (r0 == 0) goto L_0x004c
            java.util.Map<java.lang.Integer, j.a.e.q> r0 = r10.f15488d     // Catch:{ all -> 0x0075 }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch:{ all -> 0x0075 }
            r0.put(r1, r9)     // Catch:{ all -> 0x0075 }
        L_0x004c:
            monitor-exit(r10)     // Catch:{ all -> 0x0075 }
            if (r11 != 0) goto L_0x0055
            j.a.e.r r0 = r10.s     // Catch:{ all -> 0x0078 }
            r0.a((boolean) r6, (int) r8, (int) r11, (java.util.List<j.a.e.a>) r12)     // Catch:{ all -> 0x0078 }
            goto L_0x005e
        L_0x0055:
            boolean r0 = r10.f15486b     // Catch:{ all -> 0x0078 }
            if (r0 != 0) goto L_0x0067
            j.a.e.r r0 = r10.s     // Catch:{ all -> 0x0078 }
            r0.a((int) r11, (int) r8, (java.util.List<j.a.e.a>) r12)     // Catch:{ all -> 0x0078 }
        L_0x005e:
            monitor-exit(r7)     // Catch:{ all -> 0x0078 }
            if (r13 == 0) goto L_0x0066
            j.a.e.r r11 = r10.s
            r11.flush()
        L_0x0066:
            return r9
        L_0x0067:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException     // Catch:{ all -> 0x0078 }
            java.lang.String r12 = "client streams shouldn't have associated stream IDs"
            r11.<init>(r12)     // Catch:{ all -> 0x0078 }
            throw r11     // Catch:{ all -> 0x0078 }
        L_0x006f:
            okhttp3.internal.http2.ConnectionShutdownException r11 = new okhttp3.internal.http2.ConnectionShutdownException     // Catch:{ all -> 0x0075 }
            r11.<init>()     // Catch:{ all -> 0x0075 }
            throw r11     // Catch:{ all -> 0x0075 }
        L_0x0075:
            r11 = move-exception
            monitor-exit(r10)     // Catch:{ all -> 0x0075 }
            throw r11     // Catch:{ all -> 0x0078 }
        L_0x0078:
            r11 = move-exception
            monitor-exit(r7)     // Catch:{ all -> 0x0078 }
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.e.k.a(int, java.util.List, boolean):j.a.e.q");
    }

    public void b(int i2, long j2) {
        try {
            ScheduledExecutorService scheduledExecutorService = this.f15493i;
            f fVar = new f(this, "OkHttp Window Update %s stream %d", new Object[]{this.f15489e, Integer.valueOf(i2)}, i2, j2);
            scheduledExecutorService.execute(fVar);
        } catch (RejectedExecutionException unused) {
        }
    }

    public void b(int i2, List<a> list, boolean z) {
        try {
            h hVar = new h(this, "OkHttp %s Push Headers[%s]", new Object[]{this.f15489e, Integer.valueOf(i2)}, i2, list, z);
            a((j.a.b) hVar);
        } catch (RejectedExecutionException unused) {
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:26|27|28) */
    /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
        r3 = java.lang.Math.min((int) java.lang.Math.min(r12, r8.n), r8.s.t());
        r6 = (long) r3;
        r8.n -= r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:?, code lost:
        java.lang.Thread.currentThread().interrupt();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0066, code lost:
        throw new java.io.InterruptedIOException();
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:26:0x005a */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r9, boolean r10, k.g r11, long r12) {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 != 0) goto L_0x000d
            j.a.e.r r12 = r8.s
            r12.a((boolean) r10, (int) r9, (k.g) r11, (int) r0)
            return
        L_0x000d:
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 <= 0) goto L_0x0069
            monitor-enter(r8)
        L_0x0012:
            long r3 = r8.n     // Catch:{ InterruptedException -> 0x005a }
            int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r5 > 0) goto L_0x0030
            java.util.Map<java.lang.Integer, j.a.e.q> r3 = r8.f15488d     // Catch:{ InterruptedException -> 0x005a }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch:{ InterruptedException -> 0x005a }
            boolean r3 = r3.containsKey(r4)     // Catch:{ InterruptedException -> 0x005a }
            if (r3 == 0) goto L_0x0028
            r8.wait()     // Catch:{ InterruptedException -> 0x005a }
            goto L_0x0012
        L_0x0028:
            java.io.IOException r9 = new java.io.IOException     // Catch:{ InterruptedException -> 0x005a }
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch:{ InterruptedException -> 0x005a }
            throw r9     // Catch:{ InterruptedException -> 0x005a }
        L_0x0030:
            long r3 = r8.n     // Catch:{ all -> 0x0058 }
            long r3 = java.lang.Math.min(r12, r3)     // Catch:{ all -> 0x0058 }
            int r4 = (int) r3     // Catch:{ all -> 0x0058 }
            j.a.e.r r3 = r8.s     // Catch:{ all -> 0x0058 }
            int r3 = r3.t()     // Catch:{ all -> 0x0058 }
            int r3 = java.lang.Math.min(r4, r3)     // Catch:{ all -> 0x0058 }
            long r4 = r8.n     // Catch:{ all -> 0x0058 }
            long r6 = (long) r3     // Catch:{ all -> 0x0058 }
            long r4 = r4 - r6
            r8.n = r4     // Catch:{ all -> 0x0058 }
            monitor-exit(r8)     // Catch:{ all -> 0x0058 }
            long r12 = r12 - r6
            j.a.e.r r4 = r8.s
            if (r10 == 0) goto L_0x0053
            int r5 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r5 != 0) goto L_0x0053
            r5 = 1
            goto L_0x0054
        L_0x0053:
            r5 = 0
        L_0x0054:
            r4.a((boolean) r5, (int) r9, (k.g) r11, (int) r3)
            goto L_0x000d
        L_0x0058:
            r9 = move-exception
            goto L_0x0067
        L_0x005a:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x0058 }
            r9.interrupt()     // Catch:{ all -> 0x0058 }
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch:{ all -> 0x0058 }
            r9.<init>()     // Catch:{ all -> 0x0058 }
            throw r9     // Catch:{ all -> 0x0058 }
        L_0x0067:
            monitor-exit(r8)     // Catch:{ all -> 0x0058 }
            throw r9
        L_0x0069:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.e.k.a(int, boolean, k.g, long):void");
    }

    public void a(boolean z, int i2, int i3) {
        boolean z2;
        if (!z) {
            synchronized (this) {
                z2 = this.f15496l;
                this.f15496l = true;
            }
            if (z2) {
                t();
                return;
            }
        }
        try {
            this.s.a(z, i2, i3);
        } catch (IOException unused) {
            t();
        }
    }

    public void a(ErrorCode errorCode) {
        synchronized (this.s) {
            synchronized (this) {
                if (!this.f15492h) {
                    this.f15492h = true;
                    int i2 = this.f15490f;
                    this.s.a(i2, errorCode, e.f15409a);
                }
            }
        }
    }

    public void a(ErrorCode errorCode, ErrorCode errorCode2) {
        q[] qVarArr = null;
        try {
            a(errorCode);
            e = null;
        } catch (IOException e2) {
            e = e2;
        }
        synchronized (this) {
            if (!this.f15488d.isEmpty()) {
                qVarArr = (q[]) this.f15488d.values().toArray(new q[this.f15488d.size()]);
                this.f15488d.clear();
            }
        }
        if (qVarArr != null) {
            for (q a2 : qVarArr) {
                try {
                    a2.a(errorCode2);
                } catch (IOException e3) {
                    if (e != null) {
                        e = e3;
                    }
                }
            }
        }
        try {
            this.s.close();
        } catch (IOException e4) {
            if (e == null) {
                e = e4;
            }
        }
        try {
            this.r.close();
        } catch (IOException e5) {
            e = e5;
        }
        this.f15493i.shutdown();
        this.f15494j.shutdown();
        if (e != null) {
            throw e;
        }
    }

    public void a(boolean z) {
        if (z) {
            this.s.s();
            this.s.b(this.o);
            int c2 = this.o.c();
            if (c2 != 65535) {
                this.s.b(0, (long) (c2 - 65535));
            }
        }
        new Thread(this.t).start();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
        r2 = new j.a.e.g(r8, "OkHttp %s Push Request[%s]", new java.lang.Object[]{r8.f15489e, java.lang.Integer.valueOf(r9)}, r9, r10);
        a((j.a.b) r2);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r9, java.util.List<j.a.e.a> r10) {
        /*
            r8 = this;
            monitor-enter(r8)
            java.util.Set<java.lang.Integer> r0 = r8.u     // Catch:{ all -> 0x003c }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r9)     // Catch:{ all -> 0x003c }
            boolean r0 = r0.contains(r1)     // Catch:{ all -> 0x003c }
            if (r0 == 0) goto L_0x0014
            okhttp3.internal.http2.ErrorCode r10 = okhttp3.internal.http2.ErrorCode.PROTOCOL_ERROR     // Catch:{ all -> 0x003c }
            r8.c(r9, r10)     // Catch:{ all -> 0x003c }
            monitor-exit(r8)     // Catch:{ all -> 0x003c }
            return
        L_0x0014:
            java.util.Set<java.lang.Integer> r0 = r8.u     // Catch:{ all -> 0x003c }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r9)     // Catch:{ all -> 0x003c }
            r0.add(r1)     // Catch:{ all -> 0x003c }
            monitor-exit(r8)     // Catch:{ all -> 0x003c }
            j.a.e.g r0 = new j.a.e.g     // Catch:{ RejectedExecutionException -> 0x003b }
            java.lang.String r4 = "OkHttp %s Push Request[%s]"
            r1 = 2
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch:{ RejectedExecutionException -> 0x003b }
            r1 = 0
            java.lang.String r2 = r8.f15489e     // Catch:{ RejectedExecutionException -> 0x003b }
            r5[r1] = r2     // Catch:{ RejectedExecutionException -> 0x003b }
            r1 = 1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r9)     // Catch:{ RejectedExecutionException -> 0x003b }
            r5[r1] = r2     // Catch:{ RejectedExecutionException -> 0x003b }
            r2 = r0
            r3 = r8
            r6 = r9
            r7 = r10
            r2.<init>(r3, r4, r5, r6, r7)     // Catch:{ RejectedExecutionException -> 0x003b }
            r8.a((j.a.b) r0)     // Catch:{ RejectedExecutionException -> 0x003b }
        L_0x003b:
            return
        L_0x003c:
            r9 = move-exception
            monitor-exit(r8)     // Catch:{ all -> 0x003c }
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.e.k.a(int, java.util.List):void");
    }

    public void a(int i2, i iVar, int i3, boolean z) {
        g gVar = new g();
        long j2 = (long) i3;
        iVar.f(j2);
        iVar.b(gVar, j2);
        if (gVar.size() == j2) {
            i iVar2 = new i(this, "OkHttp %s Push Data[%s]", new Object[]{this.f15489e, Integer.valueOf(i2)}, i2, gVar, i3, z);
            a((j.a.b) iVar2);
            return;
        }
        throw new IOException(gVar.size() + " != " + i3);
    }

    public void a(int i2, ErrorCode errorCode) {
        j jVar = new j(this, "OkHttp %s Push Reset[%s]", new Object[]{this.f15489e, Integer.valueOf(i2)}, i2, errorCode);
        a((j.a.b) jVar);
    }

    public final synchronized void a(j.a.b bVar) {
        if (!u()) {
            this.f15494j.execute(bVar);
        }
    }
}
