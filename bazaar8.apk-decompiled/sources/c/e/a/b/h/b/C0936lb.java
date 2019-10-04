package c.e.a.b.h.b;

import android.os.RemoteException;
import c.e.a.b.g.f.fd;
import com.google.android.gms.measurement.internal.zzm;

/* renamed from: c.e.a.b.h.b.lb  reason: case insensitive filesystem */
public final class C0936lb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ zzm f10969a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ fd f10970b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C0921gb f10971c;

    public C0936lb(C0921gb gbVar, zzm zzm, fd fdVar) {
        this.f10971c = gbVar;
        this.f10969a = zzm;
        this.f10970b = fdVar;
    }

    public final void run() {
        try {
            C0934l d2 = this.f10971c.f10901d;
            if (d2 == null) {
                this.f10971c.e().t().a("Failed to get app instance id");
                return;
            }
            String c2 = d2.c(this.f10969a);
            if (c2 != null) {
                this.f10971c.p().a(c2);
                this.f10971c.h().m.a(c2);
            }
            this.f10971c.H();
            this.f10971c.g().a(this.f10970b, c2);
        } catch (RemoteException e2) {
            this.f10971c.e().t().a("Failed to get app instance id", e2);
        } finally {
            this.f10971c.g().a(this.f10970b, (String) null);
        }
    }
}
