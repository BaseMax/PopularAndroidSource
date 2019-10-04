package f.a.a.g;

import b.b.a.C0201l;
import f.a.a.e.g;

/* compiled from: InlineDialog */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public C0201l f14431a;

    /* renamed from: b  reason: collision with root package name */
    public g f14432b;

    public c(g gVar) {
        this.f14432b = gVar;
    }

    public abstract C0201l a();

    public void b() {
        d().dismiss();
    }

    public g c() {
        return this.f14432b;
    }

    public C0201l d() {
        return this.f14431a;
    }

    public void e() {
    }

    public void f() {
        if (!c().f().w().e()) {
            if (this.f14431a == null) {
                this.f14431a = a();
                this.f14431a.setOnDismissListener(new b(this));
            }
            if (!(c() == null || c().f() == null || !c().f().y())) {
                c().f().w().b();
                this.f14431a.show();
            }
        }
    }
}
