package c.e.a.b.h.b;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzm;

/* renamed from: c.e.a.b.h.b.jb  reason: case insensitive filesystem */
public final class C0930jb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ zzm f10939a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0921gb f10940b;

    public C0930jb(C0921gb gbVar, zzm zzm) {
        this.f10940b = gbVar;
        this.f10939a = zzm;
    }

    public final void run() {
        C0934l d2 = this.f10940b.f10901d;
        if (d2 == null) {
            this.f10940b.e().t().a("Failed to reset data on the service; null service");
            return;
        }
        try {
            d2.a(this.f10939a);
        } catch (RemoteException e2) {
            this.f10940b.e().t().a("Failed to reset data on the service", e2);
        }
        this.f10940b.H();
    }
}
