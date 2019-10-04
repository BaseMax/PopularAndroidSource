package c.e.a.b.j;

import java.util.concurrent.Executor;

public final class k<TResult, TContinuationResult> implements y<TResult> {

    /* renamed from: a  reason: collision with root package name */
    public final Executor f11147a;

    /* renamed from: b  reason: collision with root package name */
    public final C0978a<TResult, TContinuationResult> f11148b;

    /* renamed from: c  reason: collision with root package name */
    public final B<TContinuationResult> f11149c;

    public k(Executor executor, C0978a<TResult, TContinuationResult> aVar, B<TContinuationResult> b2) {
        this.f11147a = executor;
        this.f11148b = aVar;
        this.f11149c = b2;
    }

    public final void a(g<TResult> gVar) {
        this.f11147a.execute(new l(this, gVar));
    }
}
