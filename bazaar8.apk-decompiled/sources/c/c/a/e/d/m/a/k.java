package c.c.a.e.d.m.a;

import b.C.a.f;
import h.h;
import java.util.concurrent.Callable;

/* compiled from: PurchaseDao_Impl */
class k implements Callable<h> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ o f5259a;

    public k(o oVar) {
        this.f5259a = oVar;
    }

    public h call() {
        f a2 = this.f5259a.f5269c.a();
        this.f5259a.f5267a.c();
        try {
            a2.l();
            this.f5259a.f5267a.o();
            return h.f14579a;
        } finally {
            this.f5259a.f5267a.e();
            this.f5259a.f5269c.a(a2);
        }
    }
}
