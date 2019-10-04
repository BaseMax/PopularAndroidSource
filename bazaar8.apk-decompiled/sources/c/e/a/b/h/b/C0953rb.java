package c.e.a.b.h.b;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzm;

/* renamed from: c.e.a.b.h.b.rb  reason: case insensitive filesystem */
public final class C0953rb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ boolean f11023a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f11024b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ zzaj f11025c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ zzm f11026d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f11027e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C0921gb f11028f;

    public C0953rb(C0921gb gbVar, boolean z, boolean z2, zzaj zzaj, zzm zzm, String str) {
        this.f11028f = gbVar;
        this.f11023a = z;
        this.f11024b = z2;
        this.f11025c = zzaj;
        this.f11026d = zzm;
        this.f11027e = str;
    }

    public final void run() {
        C0934l d2 = this.f11028f.f10901d;
        if (d2 == null) {
            this.f11028f.e().t().a("Discarding data. Failed to send event to service");
            return;
        }
        if (this.f11023a) {
            this.f11028f.a(d2, (AbstractSafeParcelable) this.f11024b ? null : this.f11025c, this.f11026d);
        } else {
            try {
                if (TextUtils.isEmpty(this.f11027e)) {
                    d2.a(this.f11025c, this.f11026d);
                } else {
                    d2.a(this.f11025c, this.f11027e, this.f11028f.e().D());
                }
            } catch (RemoteException e2) {
                this.f11028f.e().t().a("Failed to send event to the service", e2);
            }
        }
        this.f11028f.H();
    }
}
