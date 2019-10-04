package c.e.a.b.h.b;

public final class Wa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ long f10784a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fa f10785b;

    public Wa(Fa fa, long j2) {
        this.f10785b = fa;
        this.f10784a = j2;
    }

    public final void run() {
        this.f10785b.h().r.a(this.f10784a);
        this.f10785b.e().A().a("Session timeout duration set", Long.valueOf(this.f10784a));
    }
}
