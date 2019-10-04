package j.a.e;

import j.C;
import j.a.e;
import j.a.e.a;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;
import k.B;
import k.C1156c;
import k.g;
import k.i;
import k.y;
import k.z;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.StreamResetException;

/* compiled from: Http2Stream */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public long f15528a = 0;

    /* renamed from: b  reason: collision with root package name */
    public long f15529b;

    /* renamed from: c  reason: collision with root package name */
    public final int f15530c;

    /* renamed from: d  reason: collision with root package name */
    public final k f15531d;

    /* renamed from: e  reason: collision with root package name */
    public final Deque<C> f15532e = new ArrayDeque();

    /* renamed from: f  reason: collision with root package name */
    public a.C0150a f15533f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f15534g;

    /* renamed from: h  reason: collision with root package name */
    public final b f15535h;

    /* renamed from: i  reason: collision with root package name */
    public final a f15536i;

    /* renamed from: j  reason: collision with root package name */
    public final c f15537j = new c();

    /* renamed from: k  reason: collision with root package name */
    public final c f15538k = new c();

    /* renamed from: l  reason: collision with root package name */
    public ErrorCode f15539l = null;

    /* compiled from: Http2Stream */
    final class a implements y {

        /* renamed from: a  reason: collision with root package name */
        public final g f15540a = new g();

        /* renamed from: b  reason: collision with root package name */
        public boolean f15541b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f15542c;

        public a() {
        }

        public void a(g gVar, long j2) {
            this.f15540a.a(gVar, j2);
            while (this.f15540a.size() >= 16384) {
                a(false);
            }
        }

        public B b() {
            return q.this.f15538k;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:11:0x001d, code lost:
            if (r8.f15540a.size() <= 0) goto L_0x002d;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x0027, code lost:
            if (r8.f15540a.size() <= 0) goto L_0x003a;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0029, code lost:
            a(true);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x002d, code lost:
            r0 = r8.f15543d;
            r0.f15531d.a(r0.f15530c, true, (k.g) null, 0);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:16:0x003a, code lost:
            r2 = r8.f15543d;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:17:0x003c, code lost:
            monitor-enter(r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:19:?, code lost:
            r8.f15541b = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:20:0x003f, code lost:
            monitor-exit(r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:21:0x0040, code lost:
            r8.f15543d.f15531d.flush();
            r8.f15543d.a();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:22:0x004c, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:9:0x0011, code lost:
            if (r8.f15543d.f15536i.f15542c != false) goto L_0x003a;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void close() {
            /*
                r8 = this;
                j.a.e.q r0 = j.a.e.q.this
                monitor-enter(r0)
                boolean r1 = r8.f15541b     // Catch:{ all -> 0x0050 }
                if (r1 == 0) goto L_0x0009
                monitor-exit(r0)     // Catch:{ all -> 0x0050 }
                return
            L_0x0009:
                monitor-exit(r0)     // Catch:{ all -> 0x0050 }
                j.a.e.q r0 = j.a.e.q.this
                j.a.e.q$a r0 = r0.f15536i
                boolean r0 = r0.f15542c
                r1 = 1
                if (r0 != 0) goto L_0x003a
                k.g r0 = r8.f15540a
                long r2 = r0.size()
                r4 = 0
                int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r0 <= 0) goto L_0x002d
            L_0x001f:
                k.g r0 = r8.f15540a
                long r2 = r0.size()
                int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r0 <= 0) goto L_0x003a
                r8.a(r1)
                goto L_0x001f
            L_0x002d:
                j.a.e.q r0 = j.a.e.q.this
                j.a.e.k r2 = r0.f15531d
                int r3 = r0.f15530c
                r4 = 1
                r5 = 0
                r6 = 0
                r2.a((int) r3, (boolean) r4, (k.g) r5, (long) r6)
            L_0x003a:
                j.a.e.q r2 = j.a.e.q.this
                monitor-enter(r2)
                r8.f15541b = r1     // Catch:{ all -> 0x004d }
                monitor-exit(r2)     // Catch:{ all -> 0x004d }
                j.a.e.q r0 = j.a.e.q.this
                j.a.e.k r0 = r0.f15531d
                r0.flush()
                j.a.e.q r0 = j.a.e.q.this
                r0.a()
                return
            L_0x004d:
                r0 = move-exception
                monitor-exit(r2)     // Catch:{ all -> 0x004d }
                throw r0
            L_0x0050:
                r1 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x0050 }
                goto L_0x0054
            L_0x0053:
                throw r1
            L_0x0054:
                goto L_0x0053
            */
            throw new UnsupportedOperationException("Method not decompiled: j.a.e.q.a.close():void");
        }

        public void flush() {
            synchronized (q.this) {
                q.this.b();
            }
            while (this.f15540a.size() > 0) {
                a(false);
                q.this.f15531d.flush();
            }
        }

        /* JADX INFO: finally extract failed */
        public final void a(boolean z) {
            long min;
            synchronized (q.this) {
                q.this.f15538k.h();
                while (q.this.f15529b <= 0 && !this.f15542c && !this.f15541b && q.this.f15539l == null) {
                    try {
                        q.this.k();
                    } catch (Throwable th) {
                        q.this.f15538k.k();
                        throw th;
                    }
                }
                q.this.f15538k.k();
                q.this.b();
                min = Math.min(q.this.f15529b, this.f15540a.size());
                q.this.f15529b -= min;
            }
            q.this.f15538k.h();
            try {
                q.this.f15531d.a(q.this.f15530c, z && min == this.f15540a.size(), this.f15540a, min);
            } finally {
                q.this.f15538k.k();
            }
        }
    }

    /* compiled from: Http2Stream */
    private final class b implements z {

        /* renamed from: a  reason: collision with root package name */
        public final g f15544a = new g();

        /* renamed from: b  reason: collision with root package name */
        public final g f15545b = new g();

        /* renamed from: c  reason: collision with root package name */
        public final long f15546c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f15547d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f15548e;

        public b(long j2) {
            this.f15546c = j2;
        }

        public void a(i iVar, long j2) {
            boolean z;
            boolean z2;
            boolean z3;
            while (j2 > 0) {
                synchronized (q.this) {
                    z = this.f15548e;
                    z2 = true;
                    z3 = this.f15545b.size() + j2 > this.f15546c;
                }
                if (z3) {
                    iVar.skip(j2);
                    q.this.c(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                } else if (z) {
                    iVar.skip(j2);
                    return;
                } else {
                    long b2 = iVar.b(this.f15544a, j2);
                    if (b2 != -1) {
                        j2 -= b2;
                        synchronized (q.this) {
                            if (this.f15545b.size() != 0) {
                                z2 = false;
                            }
                            this.f15545b.a((z) this.f15544a);
                            if (z2) {
                                q.this.notifyAll();
                            }
                        }
                    } else {
                        throw new EOFException();
                    }
                }
            }
        }

        public long b(g gVar, long j2) {
            ErrorCode errorCode;
            long j3;
            a.C0150a aVar;
            C c2;
            long j4 = j2;
            if (j4 >= 0) {
                while (true) {
                    synchronized (q.this) {
                        q.this.f15537j.h();
                        try {
                            errorCode = q.this.f15539l != null ? q.this.f15539l : null;
                            if (!this.f15547d) {
                                if (q.this.f15532e.isEmpty() || q.this.f15533f == null) {
                                    if (this.f15545b.size() > 0) {
                                        j3 = this.f15545b.b(gVar, Math.min(j4, this.f15545b.size()));
                                        q.this.f15528a += j3;
                                        if (errorCode == null && q.this.f15528a >= ((long) (q.this.f15531d.o.c() / 2))) {
                                            q.this.f15531d.b(q.this.f15530c, q.this.f15528a);
                                            q.this.f15528a = 0;
                                        }
                                    } else {
                                        g gVar2 = gVar;
                                        if (this.f15548e || errorCode != null) {
                                            j3 = -1;
                                        } else {
                                            q.this.k();
                                        }
                                    }
                                    c2 = null;
                                    aVar = null;
                                } else {
                                    c2 = (C) q.this.f15532e.removeFirst();
                                    aVar = q.this.f15533f;
                                    g gVar3 = gVar;
                                    j3 = -1;
                                }
                                q.this.f15537j.k();
                                if (c2 != null && aVar != null) {
                                    aVar.a(c2);
                                }
                            } else {
                                throw new IOException("stream closed");
                            }
                        } finally {
                            q.this.f15537j.k();
                        }
                    }
                }
                if (j3 != -1) {
                    c(j3);
                    return j3;
                } else if (errorCode == null) {
                    return -1;
                } else {
                    throw new StreamResetException(errorCode);
                }
            } else {
                throw new IllegalArgumentException("byteCount < 0: " + j4);
            }
        }

        public final void c(long j2) {
            q.this.f15531d.h(j2);
        }

        public void close() {
            long size;
            ArrayList<C> arrayList;
            a.C0150a aVar;
            synchronized (q.this) {
                this.f15547d = true;
                size = this.f15545b.size();
                this.f15545b.p();
                arrayList = null;
                if (q.this.f15532e.isEmpty() || q.this.f15533f == null) {
                    aVar = null;
                } else {
                    arrayList = new ArrayList<>(q.this.f15532e);
                    q.this.f15532e.clear();
                    aVar = q.this.f15533f;
                }
                q.this.notifyAll();
            }
            if (size > 0) {
                c(size);
            }
            q.this.a();
            if (aVar != null) {
                for (C a2 : arrayList) {
                    aVar.a(a2);
                }
            }
        }

        public B b() {
            return q.this.f15537j;
        }
    }

    /* compiled from: Http2Stream */
    class c extends C1156c {
        public c() {
        }

        public IOException b(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        public void j() {
            q.this.c(ErrorCode.CANCEL);
        }

        public void k() {
            if (i()) {
                throw b(null);
            }
        }
    }

    public q(int i2, k kVar, boolean z, boolean z2, C c2) {
        if (kVar != null) {
            this.f15530c = i2;
            this.f15531d = kVar;
            this.f15529b = (long) kVar.p.c();
            this.f15535h = new b((long) kVar.o.c());
            this.f15536i = new a();
            this.f15535h.f15548e = z2;
            this.f15536i.f15542c = z;
            if (c2 != null) {
                this.f15532e.add(c2);
            }
            if (f() && c2 != null) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
            } else if (!f() && c2 == null) {
                throw new IllegalStateException("remotely-initiated streams should have headers");
            }
        } else {
            throw new NullPointerException("connection == null");
        }
    }

    public int c() {
        return this.f15530c;
    }

    public y d() {
        synchronized (this) {
            if (!this.f15534g) {
                if (!f()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
            }
        }
        return this.f15536i;
    }

    public z e() {
        return this.f15535h;
    }

    public boolean f() {
        if (this.f15531d.f15486b == ((this.f15530c & 1) == 1)) {
            return true;
        }
        return false;
    }

    public synchronized boolean g() {
        if (this.f15539l != null) {
            return false;
        }
        if ((this.f15535h.f15548e || this.f15535h.f15547d) && ((this.f15536i.f15542c || this.f15536i.f15541b) && this.f15534g)) {
            return false;
        }
        return true;
    }

    public B h() {
        return this.f15537j;
    }

    public void i() {
        boolean g2;
        synchronized (this) {
            this.f15535h.f15548e = true;
            g2 = g();
            notifyAll();
        }
        if (!g2) {
            this.f15531d.d(this.f15530c);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0035, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0036, code lost:
        r2.f15537j.k();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x003b, code lost:
        throw r0;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized j.C j() {
        /*
            r2 = this;
            monitor-enter(r2)
            j.a.e.q$c r0 = r2.f15537j     // Catch:{ all -> 0x003c }
            r0.h()     // Catch:{ all -> 0x003c }
        L_0x0006:
            java.util.Deque<j.C> r0 = r2.f15532e     // Catch:{ all -> 0x0035 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0035 }
            if (r0 == 0) goto L_0x0016
            okhttp3.internal.http2.ErrorCode r0 = r2.f15539l     // Catch:{ all -> 0x0035 }
            if (r0 != 0) goto L_0x0016
            r2.k()     // Catch:{ all -> 0x0035 }
            goto L_0x0006
        L_0x0016:
            j.a.e.q$c r0 = r2.f15537j     // Catch:{ all -> 0x003c }
            r0.k()     // Catch:{ all -> 0x003c }
            java.util.Deque<j.C> r0 = r2.f15532e     // Catch:{ all -> 0x003c }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x003c }
            if (r0 != 0) goto L_0x002d
            java.util.Deque<j.C> r0 = r2.f15532e     // Catch:{ all -> 0x003c }
            java.lang.Object r0 = r0.removeFirst()     // Catch:{ all -> 0x003c }
            j.C r0 = (j.C) r0     // Catch:{ all -> 0x003c }
            monitor-exit(r2)
            return r0
        L_0x002d:
            okhttp3.internal.http2.StreamResetException r0 = new okhttp3.internal.http2.StreamResetException     // Catch:{ all -> 0x003c }
            okhttp3.internal.http2.ErrorCode r1 = r2.f15539l     // Catch:{ all -> 0x003c }
            r0.<init>(r1)     // Catch:{ all -> 0x003c }
            throw r0     // Catch:{ all -> 0x003c }
        L_0x0035:
            r0 = move-exception
            j.a.e.q$c r1 = r2.f15537j     // Catch:{ all -> 0x003c }
            r1.k()     // Catch:{ all -> 0x003c }
            throw r0     // Catch:{ all -> 0x003c }
        L_0x003c:
            r0 = move-exception
            monitor-exit(r2)
            goto L_0x0040
        L_0x003f:
            throw r0
        L_0x0040:
            goto L_0x003f
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.e.q.j():j.C");
    }

    public void k() {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public B l() {
        return this.f15538k;
    }

    public void a(ErrorCode errorCode) {
        if (b(errorCode)) {
            this.f15531d.b(this.f15530c, errorCode);
        }
    }

    public final boolean b(ErrorCode errorCode) {
        synchronized (this) {
            if (this.f15539l != null) {
                return false;
            }
            if (this.f15535h.f15548e && this.f15536i.f15542c) {
                return false;
            }
            this.f15539l = errorCode;
            notifyAll();
            this.f15531d.d(this.f15530c);
            return true;
        }
    }

    public void c(ErrorCode errorCode) {
        if (b(errorCode)) {
            this.f15531d.c(this.f15530c, errorCode);
        }
    }

    public void a(List<a> list) {
        boolean g2;
        synchronized (this) {
            this.f15534g = true;
            this.f15532e.add(e.b(list));
            g2 = g();
            notifyAll();
        }
        if (!g2) {
            this.f15531d.d(this.f15530c);
        }
    }

    public synchronized void d(ErrorCode errorCode) {
        if (this.f15539l == null) {
            this.f15539l = errorCode;
            notifyAll();
        }
    }

    public void a(i iVar, int i2) {
        this.f15535h.a(iVar, (long) i2);
    }

    public void b() {
        a aVar = this.f15536i;
        if (aVar.f15541b) {
            throw new IOException("stream closed");
        } else if (!aVar.f15542c) {
            ErrorCode errorCode = this.f15539l;
            if (errorCode != null) {
                throw new StreamResetException(errorCode);
            }
        } else {
            throw new IOException("stream finished");
        }
    }

    public void a() {
        boolean z;
        boolean g2;
        synchronized (this) {
            z = !this.f15535h.f15548e && this.f15535h.f15547d && (this.f15536i.f15542c || this.f15536i.f15541b);
            g2 = g();
        }
        if (z) {
            a(ErrorCode.CANCEL);
        } else if (!g2) {
            this.f15531d.d(this.f15530c);
        }
    }

    public void a(long j2) {
        this.f15529b += j2;
        if (j2 > 0) {
            notifyAll();
        }
    }
}
