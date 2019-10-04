package c.e.a.b.j;

import java.util.concurrent.Executor;

public final class m<TResult, TContinuationResult> implements C0979b, d, e<TContinuationResult>, y<TResult> {

    /* renamed from: a  reason: collision with root package name */
    public final Executor f11152a;

    /* renamed from: b  reason: collision with root package name */
    public final C0978a<TResult, g<TContinuationResult>> f11153b;

    /* renamed from: c  reason: collision with root package name */
    public final B<TContinuationResult> f11154c;

    public m(Executor executor, C0978a<TResult, g<TContinuationResult>> aVar, B<TContinuationResult> b2) {
        this.f11152a = executor;
        this.f11153b = aVar;
        this.f11154c = b2;
    }

    public final void a(g<TResult> gVar) {
        this.f11152a.execute(new n(this, gVar));
    }

    public final void a(TContinuationResult tcontinuationresult) {
        this.f11154c.a(tcontinuationresult);
    }

    public final void a(Exception exc) {
        this.f11154c.a(exc);
    }

    public final void a() {
        this.f11154c.f();
    }
}
