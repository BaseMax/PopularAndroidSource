package c.c.a.e.d.m.a;

import h.h;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: PurchaseDao_Impl */
class j implements Callable<h> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ List f5257a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ o f5258b;

    public j(o oVar, List list) {
        this.f5258b = oVar;
        this.f5257a = list;
    }

    public h call() {
        this.f5258b.f5267a.c();
        try {
            this.f5258b.f5268b.a(this.f5257a);
            this.f5258b.f5267a.o();
            return h.f14579a;
        } finally {
            this.f5258b.f5267a.e();
        }
    }
}
