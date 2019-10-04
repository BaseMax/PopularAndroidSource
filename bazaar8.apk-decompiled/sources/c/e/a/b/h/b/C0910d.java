package c.e.a.b.h.b;

/* renamed from: c.e.a.b.h.b.d  reason: case insensitive filesystem */
public final class C0910d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0967wa f10850a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0907c f10851b;

    public C0910d(C0907c cVar, C0967wa waVar) {
        this.f10851b = cVar;
        this.f10850a = waVar;
    }

    public final void run() {
        this.f10850a.a();
        if (nc.a()) {
            this.f10850a.d().a((Runnable) this);
            return;
        }
        boolean d2 = this.f10851b.d();
        long unused = this.f10851b.f10838d = 0;
        if (d2) {
            this.f10851b.c();
        }
    }
}
