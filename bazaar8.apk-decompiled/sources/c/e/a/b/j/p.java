package c.e.a.b.j;

public final class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ o f11160a;

    public p(o oVar) {
        this.f11160a = oVar;
    }

    public final void run() {
        synchronized (this.f11160a.f11158b) {
            if (this.f11160a.f11159c != null) {
                this.f11160a.f11159c.a();
            }
        }
    }
}
