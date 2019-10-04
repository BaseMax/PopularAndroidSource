package c.c.a.e.d.m.a;

import b.C.a.f;
import h.h;
import java.util.concurrent.Callable;

/* compiled from: PurchaseDao_Impl */
class l implements Callable<h> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f5260a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f5261b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ o f5262c;

    public l(o oVar, String str, String str2) {
        this.f5262c = oVar;
        this.f5260a = str;
        this.f5261b = str2;
    }

    public h call() {
        f a2 = this.f5262c.f5270d.a();
        String str = this.f5260a;
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        String str2 = this.f5261b;
        if (str2 == null) {
            a2.a(2);
        } else {
            a2.a(2, str2);
        }
        this.f5262c.f5267a.c();
        try {
            a2.l();
            this.f5262c.f5267a.o();
            return h.f14579a;
        } finally {
            this.f5262c.f5267a.e();
            this.f5262c.f5270d.a(a2);
        }
    }
}
