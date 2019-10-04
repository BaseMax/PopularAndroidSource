package c.e.a.b.h.b;

import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.measurement.internal.zzm;

/* renamed from: c.e.a.b.h.b.mb  reason: case insensitive filesystem */
public final class C0939mb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ zzm f10975a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0921gb f10976b;

    public C0939mb(C0921gb gbVar, zzm zzm) {
        this.f10976b = gbVar;
        this.f10975a = zzm;
    }

    public final void run() {
        C0934l d2 = this.f10976b.f10901d;
        if (d2 == null) {
            this.f10976b.e().t().a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            d2.d(this.f10975a);
            this.f10976b.a(d2, (AbstractSafeParcelable) null, this.f10975a);
            this.f10976b.H();
        } catch (RemoteException e2) {
            this.f10976b.e().t().a("Failed to send app launch to the service", e2);
        }
    }
}
