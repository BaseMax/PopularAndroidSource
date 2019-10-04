package c.e.a.b.h.b;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.measurement.internal.zzm;
import com.google.android.gms.measurement.internal.zzr;

/* renamed from: c.e.a.b.h.b.sb  reason: case insensitive filesystem */
public final class C0956sb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ boolean f11031a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f11032b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ zzr f11033c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ zzm f11034d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ zzr f11035e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C0921gb f11036f;

    public C0956sb(C0921gb gbVar, boolean z, boolean z2, zzr zzr, zzm zzm, zzr zzr2) {
        this.f11036f = gbVar;
        this.f11031a = z;
        this.f11032b = z2;
        this.f11033c = zzr;
        this.f11034d = zzm;
        this.f11035e = zzr2;
    }

    public final void run() {
        C0934l d2 = this.f11036f.f10901d;
        if (d2 == null) {
            this.f11036f.e().t().a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.f11031a) {
            this.f11036f.a(d2, (AbstractSafeParcelable) this.f11032b ? null : this.f11033c, this.f11034d);
        } else {
            try {
                if (TextUtils.isEmpty(this.f11035e.f13256a)) {
                    d2.a(this.f11033c, this.f11034d);
                } else {
                    d2.a(this.f11033c);
                }
            } catch (RemoteException e2) {
                this.f11036f.e().t().a("Failed to send conditional user property to the service", e2);
            }
        }
        this.f11036f.H();
    }
}
