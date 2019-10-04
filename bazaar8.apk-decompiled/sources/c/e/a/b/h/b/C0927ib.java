package c.e.a.b.h.b;

import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.measurement.internal.zzga;
import com.google.android.gms.measurement.internal.zzm;

/* renamed from: c.e.a.b.h.b.ib  reason: case insensitive filesystem */
public final class C0927ib implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ boolean f10927a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ zzga f10928b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ zzm f10929c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0921gb f10930d;

    public C0927ib(C0921gb gbVar, boolean z, zzga zzga, zzm zzm) {
        this.f10930d = gbVar;
        this.f10927a = z;
        this.f10928b = zzga;
        this.f10929c = zzm;
    }

    public final void run() {
        C0934l d2 = this.f10930d.f10901d;
        if (d2 == null) {
            this.f10930d.e().t().a("Discarding data. Failed to set user attribute");
            return;
        }
        this.f10930d.a(d2, (AbstractSafeParcelable) this.f10927a ? null : this.f10928b, this.f10929c);
        this.f10930d.H();
    }
}
