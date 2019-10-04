package c.e.a.b.h.b;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzm;

/* renamed from: c.e.a.b.h.b.qb  reason: case insensitive filesystem */
public final class C0951qb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ zzm f11015a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0921gb f11016b;

    public C0951qb(C0921gb gbVar, zzm zzm) {
        this.f11016b = gbVar;
        this.f11015a = zzm;
    }

    public final void run() {
        C0934l d2 = this.f11016b.f10901d;
        if (d2 == null) {
            this.f11016b.e().t().a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            d2.b(this.f11015a);
            this.f11016b.H();
        } catch (RemoteException e2) {
            this.f11016b.e().t().a("Failed to send measurementEnabled to the service", e2);
        }
    }
}
