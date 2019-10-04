package c.e.a.b.h.b;

import c.e.a.b.d.d.r;
import c.e.a.b.d.g.e;

public final class Ob {

    /* renamed from: a  reason: collision with root package name */
    public final e f10704a;

    /* renamed from: b  reason: collision with root package name */
    public long f10705b;

    public Ob(e eVar) {
        r.a(eVar);
        this.f10704a = eVar;
    }

    public final void a() {
        this.f10705b = 0;
    }

    public final void b() {
        this.f10705b = this.f10704a.a();
    }

    public final boolean a(long j2) {
        if (this.f10705b != 0 && this.f10704a.a() - this.f10705b < 3600000) {
            return false;
        }
        return true;
    }
}
