package b.H.a;

import b.H.a.d.a.c;
import b.H.f;

/* compiled from: WorkerWrapper */
class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ c f1594a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ q f1595b;

    public o(q qVar, c cVar) {
        this.f1595b = qVar;
        this.f1594a = cVar;
    }

    public void run() {
        try {
            f.a().a(q.f1599a, String.format("Starting work for %s", new Object[]{this.f1595b.f1604f.f1468e}), new Throwable[0]);
            this.f1595b.r = this.f1595b.f1605g.i();
            this.f1594a.b(this.f1595b.r);
        } catch (Throwable th) {
            this.f1594a.a(th);
        }
    }
}
