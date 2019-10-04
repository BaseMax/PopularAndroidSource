package c.c.a.e.d.s;

import d.b.c;
import g.a.a;

/* compiled from: SearchRepository_Factory */
public final class i implements c<h> {

    /* renamed from: a  reason: collision with root package name */
    public final a<f> f5420a;

    public i(a<f> aVar) {
        this.f5420a = aVar;
    }

    public static i a(a<f> aVar) {
        return new i(aVar);
    }

    public static h b(a<f> aVar) {
        return new h(aVar.get());
    }

    public h get() {
        return b(this.f5420a);
    }
}
