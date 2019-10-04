package c.e.a.b.j;

public final class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f11174a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ u f11175b;

    public v(u uVar, g gVar) {
        this.f11175b = uVar;
        this.f11174a = gVar;
    }

    public final void run() {
        synchronized (this.f11175b.f11172b) {
            if (this.f11175b.f11173c != null) {
                this.f11175b.f11173c.a(this.f11174a.b());
            }
        }
    }
}
