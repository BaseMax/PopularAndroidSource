package c.e.a.b.h.b;

/* renamed from: c.e.a.b.h.b.yb  reason: case insensitive filesystem */
public final class C0974yb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0934l f11109a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0971xb f11110b;

    public C0974yb(C0971xb xbVar, C0934l lVar) {
        this.f11110b = xbVar;
        this.f11109a = lVar;
    }

    public final void run() {
        synchronized (this.f11110b) {
            boolean unused = this.f11110b.f11104a = false;
            if (!this.f11110b.f11106c.C()) {
                this.f11110b.f11106c.e().B().a("Connected to service");
                this.f11110b.f11106c.a(this.f11109a);
            }
        }
    }
}
