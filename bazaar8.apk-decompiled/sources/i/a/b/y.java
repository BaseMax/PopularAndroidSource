package i.a.b;

import h.e;
import h.f.b.j;
import h.h;
import i.a.C1109j;
import kotlin.Result;

/* compiled from: AbstractChannel.kt */
public final class y extends w {

    /* renamed from: d  reason: collision with root package name */
    public final Object f14728d;

    /* renamed from: e  reason: collision with root package name */
    public final C1109j<h> f14729e;

    public y(Object obj, C1109j<? super h> jVar) {
        j.b(jVar, "cont");
        this.f14728d = obj;
        this.f14729e = jVar;
    }

    public void a(o<?> oVar) {
        j.b(oVar, "closed");
        C1109j<h> jVar = this.f14729e;
        Throwable t = oVar.t();
        Result.a aVar = Result.f15776a;
        Object a2 = e.a(t);
        Result.a(a2);
        jVar.b(a2);
    }

    public void c(Object obj) {
        j.b(obj, "token");
        this.f14729e.c(obj);
    }

    public Object d(Object obj) {
        return this.f14729e.a(h.f14579a, obj);
    }

    public Object q() {
        return this.f14728d;
    }

    public String toString() {
        return "SendElement(" + q() + ')';
    }
}
