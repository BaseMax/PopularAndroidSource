package c.e.a.b.j;

public final class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f11164a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ q f11165b;

    public r(q qVar, g gVar) {
        this.f11165b = qVar;
        this.f11164a = gVar;
    }

    public final void run() {
        synchronized (this.f11165b.f11162b) {
            if (this.f11165b.f11163c != null) {
                this.f11165b.f11163c.a(this.f11164a);
            }
        }
    }
}
