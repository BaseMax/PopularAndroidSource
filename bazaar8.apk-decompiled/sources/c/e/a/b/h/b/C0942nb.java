package c.e.a.b.h.b;

import android.os.RemoteException;

/* renamed from: c.e.a.b.h.b.nb  reason: case insensitive filesystem */
public final class C0942nb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0909cb f10982a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0921gb f10983b;

    public C0942nb(C0921gb gbVar, C0909cb cbVar) {
        this.f10983b = gbVar;
        this.f10982a = cbVar;
    }

    public final void run() {
        C0934l d2 = this.f10983b.f10901d;
        if (d2 == null) {
            this.f10983b.e().t().a("Failed to send current screen to service");
            return;
        }
        try {
            if (this.f10982a == null) {
                d2.a(0, (String) null, (String) null, this.f10983b.b().getPackageName());
            } else {
                d2.a(this.f10982a.f10843c, this.f10982a.f10841a, this.f10982a.f10842b, this.f10983b.b().getPackageName());
            }
            this.f10983b.H();
        } catch (RemoteException e2) {
            this.f10983b.e().t().a("Failed to send current screen to the service", e2);
        }
    }
}
