package c.e.a.b.j;

import java.util.concurrent.Executor;

public final class w<TResult, TContinuationResult> implements C0979b, d, e<TContinuationResult>, y<TResult> {

    /* renamed from: a  reason: collision with root package name */
    public final Executor f11176a;

    /* renamed from: b  reason: collision with root package name */
    public final f<TResult, TContinuationResult> f11177b;

    /* renamed from: c  reason: collision with root package name */
    public final B<TContinuationResult> f11178c;

    public w(Executor executor, f<TResult, TContinuationResult> fVar, B<TContinuationResult> b2) {
        this.f11176a = executor;
        this.f11177b = fVar;
        this.f11178c = b2;
    }

    public final void a(g<TResult> gVar) {
        this.f11176a.execute(new x(this, gVar));
    }

    public final void a(TContinuationResult tcontinuationresult) {
        this.f11178c.a(tcontinuationresult);
    }

    public final void a(Exception exc) {
        this.f11178c.a(exc);
    }

    public final void a() {
        this.f11178c.f();
    }
}
