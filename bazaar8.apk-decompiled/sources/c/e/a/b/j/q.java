package c.e.a.b.j;

import java.util.concurrent.Executor;

public final class q<TResult> implements y<TResult> {

    /* renamed from: a  reason: collision with root package name */
    public final Executor f11161a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f11162b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public C0980c<TResult> f11163c;

    public q(Executor executor, C0980c<TResult> cVar) {
        this.f11161a = executor;
        this.f11163c = cVar;
    }

    public final void a(g<TResult> gVar) {
        synchronized (this.f11162b) {
            if (this.f11163c != null) {
                this.f11161a.execute(new r(this, gVar));
            }
        }
    }
}
