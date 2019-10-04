package f.a.a.g.d;

import f.a.a.c.b.o;
import f.a.a.c.d;
import f.a.a.e.g;
import f.a.a.e.j;
import f.a.a.e.m;

/* compiled from: ActionCallListener */
public abstract class a implements o.a {

    /* renamed from: a  reason: collision with root package name */
    public g f14441a;

    /* renamed from: b  reason: collision with root package name */
    public m f14442b;

    public a(g gVar) {
        this.f14441a = gVar;
        this.f14442b = new m(gVar.f());
    }

    public void a() {
        this.f14442b.show();
    }

    public g b() {
        return this.f14441a;
    }

    public void a(String str) {
        if (this.f14441a.f().y()) {
            this.f14442b.dismiss();
        }
    }

    public void a(int i2, String str) {
        this.f14442b.dismiss();
        new j(this.f14441a.f(), d.b(this.f14441a.f(), i2, str), d.a(this.f14441a.f(), i2, str), str).f();
    }
}
