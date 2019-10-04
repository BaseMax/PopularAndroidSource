package c.e.a.b.h.b;

public final class Bb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0934l f10586a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0971xb f10587b;

    public Bb(C0971xb xbVar, C0934l lVar) {
        this.f10587b = xbVar;
        this.f10586a = lVar;
    }

    public final void run() {
        synchronized (this.f10587b) {
            boolean unused = this.f10587b.f11104a = false;
            if (!this.f10587b.f11106c.C()) {
                this.f10587b.f11106c.e().A().a("Connected to remote service");
                this.f10587b.f11106c.a(this.f10586a);
            }
        }
    }
}
