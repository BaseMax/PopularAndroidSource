package c.e.a.b.h.b;

public final class P implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Y f10706a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0957t f10707b;

    public P(O o, Y y, C0957t tVar) {
        this.f10706a = y;
        this.f10707b = tVar;
    }

    public final void run() {
        if (this.f10706a.n() == null) {
            this.f10707b.t().a("Install Referrer Reporter is null");
            return;
        }
        L n = this.f10706a.n();
        n.f10681a.z();
        n.a(n.f10681a.b().getPackageName());
    }
}
