package j.a.b;

import j.E;
import j.I;
import j.L;
import j.P;
import j.a.c.h;

/* compiled from: ConnectInterceptor */
public final class a implements E {

    /* renamed from: a  reason: collision with root package name */
    public final I f15311a;

    public a(I i2) {
        this.f15311a = i2;
    }

    public P a(E.a aVar) {
        h hVar = (h) aVar;
        L e2 = hVar.e();
        f i2 = hVar.i();
        return hVar.a(e2, i2, i2.a(this.f15311a, aVar, !e2.e().equals("GET")), i2.c());
    }
}
