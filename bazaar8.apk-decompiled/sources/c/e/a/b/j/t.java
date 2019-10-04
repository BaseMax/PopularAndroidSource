package c.e.a.b.j;

public final class t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f11169a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ s f11170b;

    public t(s sVar, g gVar) {
        this.f11170b = sVar;
        this.f11169a = gVar;
    }

    public final void run() {
        synchronized (this.f11170b.f11167b) {
            if (this.f11170b.f11168c != null) {
                this.f11170b.f11168c.a(this.f11169a.a());
            }
        }
    }
}
