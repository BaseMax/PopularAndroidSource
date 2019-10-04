package l;

import j.C1142i;
import j.F;
import j.P;
import j.S;
import java.io.IOException;
import k.i;
import k.s;
import k.z;

/* compiled from: OkHttpCall */
public final class v<T> implements C1158b<T> {

    /* renamed from: a  reason: collision with root package name */
    public final C f15939a;

    /* renamed from: b  reason: collision with root package name */
    public final Object[] f15940b;

    /* renamed from: c  reason: collision with root package name */
    public final C1142i.a f15941c;

    /* renamed from: d  reason: collision with root package name */
    public final j<S, T> f15942d;

    /* renamed from: e  reason: collision with root package name */
    public volatile boolean f15943e;

    /* renamed from: f  reason: collision with root package name */
    public C1142i f15944f;

    /* renamed from: g  reason: collision with root package name */
    public Throwable f15945g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f15946h;

    /* compiled from: OkHttpCall */
    static final class a extends S {

        /* renamed from: b  reason: collision with root package name */
        public final S f15947b;

        /* renamed from: c  reason: collision with root package name */
        public IOException f15948c;

        public a(S s) {
            this.f15947b = s;
        }

        public void close() {
            this.f15947b.close();
        }

        public long u() {
            return this.f15947b.u();
        }

        public F v() {
            return this.f15947b.v();
        }

        public i w() {
            return s.a((z) new u(this, this.f15947b.w()));
        }

        public void y() {
            IOException iOException = this.f15948c;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    /* compiled from: OkHttpCall */
    static final class b extends S {

        /* renamed from: b  reason: collision with root package name */
        public final F f15949b;

        /* renamed from: c  reason: collision with root package name */
        public final long f15950c;

        public b(F f2, long j2) {
            this.f15949b = f2;
            this.f15950c = j2;
        }

        public long u() {
            return this.f15950c;
        }

        public F v() {
            return this.f15949b;
        }

        public i w() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    public v(C c2, Object[] objArr, C1142i.a aVar, j<S, T> jVar) {
        this.f15939a = c2;
        this.f15940b = objArr;
        this.f15941c = aVar;
        this.f15942d = jVar;
    }

    public void a(C1160d<T> dVar) {
        C1142i iVar;
        Throwable th;
        H.a(dVar, "callback == null");
        synchronized (this) {
            if (!this.f15946h) {
                this.f15946h = true;
                iVar = this.f15944f;
                th = this.f15945g;
                if (iVar == null && th == null) {
                    try {
                        C1142i a2 = a();
                        this.f15944f = a2;
                        iVar = a2;
                    } catch (Throwable th2) {
                        th = th2;
                        H.a(th);
                        this.f15945g = th;
                    }
                }
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (th != null) {
            dVar.a((C1158b<T>) this, th);
            return;
        }
        if (this.f15943e) {
            iVar.cancel();
        }
        iVar.a(new t(this, dVar));
    }

    public void cancel() {
        C1142i iVar;
        this.f15943e = true;
        synchronized (this) {
            iVar = this.f15944f;
        }
        if (iVar != null) {
            iVar.cancel();
        }
    }

    public D<T> execute() {
        C1142i iVar;
        synchronized (this) {
            if (!this.f15946h) {
                this.f15946h = true;
                if (this.f15945g == null) {
                    iVar = this.f15944f;
                    if (iVar == null) {
                        try {
                            iVar = a();
                            this.f15944f = iVar;
                        } catch (IOException | Error | RuntimeException e2) {
                            H.a(e2);
                            this.f15945g = e2;
                            throw e2;
                        }
                    }
                } else if (this.f15945g instanceof IOException) {
                    throw ((IOException) this.f15945g);
                } else if (this.f15945g instanceof RuntimeException) {
                    throw ((RuntimeException) this.f15945g);
                } else {
                    throw ((Error) this.f15945g);
                }
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (this.f15943e) {
            iVar.cancel();
        }
        return a(iVar.execute());
    }

    public boolean m() {
        boolean z = true;
        if (this.f15943e) {
            return true;
        }
        synchronized (this) {
            if (this.f15944f == null || !this.f15944f.m()) {
                z = false;
            }
        }
        return z;
    }

    public v<T> clone() {
        return new v<>(this.f15939a, this.f15940b, this.f15941c, this.f15942d);
    }

    public final C1142i a() {
        C1142i a2 = this.f15941c.a(this.f15939a.a(this.f15940b));
        if (a2 != null) {
            return a2;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    public D<T> a(P p) {
        S s = p.s();
        P.a B = p.B();
        B.a((S) new b(s.v(), s.u()));
        P a2 = B.a();
        int v = a2.v();
        if (v < 200 || v >= 300) {
            try {
                return D.a(H.a(s), a2);
            } finally {
                s.close();
            }
        } else if (v == 204 || v == 205) {
            s.close();
            return D.a(null, a2);
        } else {
            a aVar = new a(s);
            try {
                return D.a(this.f15942d.a(aVar), a2);
            } catch (RuntimeException e2) {
                aVar.y();
                throw e2;
            }
        }
    }
}
