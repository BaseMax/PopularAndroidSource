package c.e.a.b.h.b;

public final class Ua implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ boolean f10770a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fa f10771b;

    public Ua(Fa fa, boolean z) {
        this.f10771b = fa;
        this.f10770a = z;
    }

    public final void run() {
        boolean f2 = this.f10771b.f11077a.f();
        boolean u = this.f10771b.f11077a.u();
        this.f10771b.f11077a.a(this.f10770a);
        if (u == this.f10770a) {
            this.f10771b.f11077a.e().B().a("Default data collection state already set to", Boolean.valueOf(this.f10770a));
        }
        if (this.f10771b.f11077a.f() == f2 || this.f10771b.f11077a.f() != this.f10771b.f11077a.u()) {
            this.f10771b.f11077a.e().y().a("Default data collection is different than actual status", Boolean.valueOf(this.f10770a), Boolean.valueOf(f2));
        }
        this.f10771b.K();
    }
}
