package c.e.a.b.j;

import c.e.a.b.d.d.r;
import com.google.android.gms.tasks.RuntimeExecutionException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

public final class B<TResult> extends g<TResult> {

    /* renamed from: a  reason: collision with root package name */
    public final Object f11134a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public final z<TResult> f11135b = new z<>();

    /* renamed from: c  reason: collision with root package name */
    public boolean f11136c;

    /* renamed from: d  reason: collision with root package name */
    public volatile boolean f11137d;

    /* renamed from: e  reason: collision with root package name */
    public TResult f11138e;

    /* renamed from: f  reason: collision with root package name */
    public Exception f11139f;

    public final <X extends Throwable> TResult a(Class<X> cls) {
        TResult tresult;
        synchronized (this.f11134a) {
            g();
            i();
            if (cls.isInstance(this.f11139f)) {
                throw ((Throwable) cls.cast(this.f11139f));
            } else if (this.f11139f == null) {
                tresult = this.f11138e;
            } else {
                throw new RuntimeExecutionException(this.f11139f);
            }
        }
        return tresult;
    }

    public final TResult b() {
        TResult tresult;
        synchronized (this.f11134a) {
            g();
            i();
            if (this.f11139f == null) {
                tresult = this.f11138e;
            } else {
                throw new RuntimeExecutionException(this.f11139f);
            }
        }
        return tresult;
    }

    public final boolean c() {
        return this.f11137d;
    }

    public final boolean d() {
        boolean z;
        synchronized (this.f11134a) {
            z = this.f11136c;
        }
        return z;
    }

    public final boolean e() {
        boolean z;
        synchronized (this.f11134a) {
            z = this.f11136c && !this.f11137d && this.f11139f == null;
        }
        return z;
    }

    public final boolean f() {
        synchronized (this.f11134a) {
            if (this.f11136c) {
                return false;
            }
            this.f11136c = true;
            this.f11137d = true;
            this.f11135b.a(this);
            return true;
        }
    }

    public final void g() {
        r.b(this.f11136c, "Task is not yet complete");
    }

    public final void h() {
        r.b(!this.f11136c, "Task is already complete");
    }

    public final void i() {
        if (this.f11137d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    public final void j() {
        synchronized (this.f11134a) {
            if (this.f11136c) {
                this.f11135b.a(this);
            }
        }
    }

    public final <TContinuationResult> g<TContinuationResult> b(Executor executor, C0978a<TResult, g<TContinuationResult>> aVar) {
        B b2 = new B();
        this.f11135b.a(new m(executor, aVar, b2));
        j();
        return b2;
    }

    public final Exception a() {
        Exception exc;
        synchronized (this.f11134a) {
            exc = this.f11139f;
        }
        return exc;
    }

    public final boolean b(TResult tresult) {
        synchronized (this.f11134a) {
            if (this.f11136c) {
                return false;
            }
            this.f11136c = true;
            this.f11138e = tresult;
            this.f11135b.a(this);
            return true;
        }
    }

    public final g<TResult> a(Executor executor, e<? super TResult> eVar) {
        this.f11135b.a(new u(executor, eVar));
        j();
        return this;
    }

    public final g<TResult> a(d dVar) {
        a(i.f11143a, dVar);
        return this;
    }

    public final g<TResult> a(Executor executor, d dVar) {
        this.f11135b.a(new s(executor, dVar));
        j();
        return this;
    }

    public final g<TResult> a(C0980c<TResult> cVar) {
        a(i.f11143a, cVar);
        return this;
    }

    public final g<TResult> a(Executor executor, C0980c<TResult> cVar) {
        this.f11135b.a(new q(executor, cVar));
        j();
        return this;
    }

    public final boolean b(Exception exc) {
        r.a(exc, (Object) "Exception must not be null");
        synchronized (this.f11134a) {
            if (this.f11136c) {
                return false;
            }
            this.f11136c = true;
            this.f11139f = exc;
            this.f11135b.a(this);
            return true;
        }
    }

    public final <TContinuationResult> g<TContinuationResult> a(Executor executor, C0978a<TResult, TContinuationResult> aVar) {
        B b2 = new B();
        this.f11135b.a(new k(executor, aVar, b2));
        j();
        return b2;
    }

    public final g<TResult> a(Executor executor, C0979b bVar) {
        this.f11135b.a(new o(executor, bVar));
        j();
        return this;
    }

    public final <TContinuationResult> g<TContinuationResult> a(Executor executor, f<TResult, TContinuationResult> fVar) {
        B b2 = new B();
        this.f11135b.a(new w(executor, fVar, b2));
        j();
        return b2;
    }

    public final void a(TResult tresult) {
        synchronized (this.f11134a) {
            h();
            this.f11136c = true;
            this.f11138e = tresult;
        }
        this.f11135b.a(this);
    }

    public final void a(Exception exc) {
        r.a(exc, (Object) "Exception must not be null");
        synchronized (this.f11134a) {
            h();
            this.f11136c = true;
            this.f11139f = exc;
        }
        this.f11135b.a(this);
    }
}
