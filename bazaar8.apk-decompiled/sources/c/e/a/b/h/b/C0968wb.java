package c.e.a.b.h.b;

import android.os.Bundle;
import android.os.RemoteException;
import c.e.a.b.g.f.fd;
import com.google.android.gms.measurement.internal.zzm;

/* renamed from: c.e.a.b.h.b.wb  reason: case insensitive filesystem */
public final class C0968wb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f11097a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f11098b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ boolean f11099c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ zzm f11100d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ fd f11101e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C0921gb f11102f;

    public C0968wb(C0921gb gbVar, String str, String str2, boolean z, zzm zzm, fd fdVar) {
        this.f11102f = gbVar;
        this.f11097a = str;
        this.f11098b = str2;
        this.f11099c = z;
        this.f11100d = zzm;
        this.f11101e = fdVar;
    }

    public final void run() {
        Bundle bundle = new Bundle();
        try {
            C0934l d2 = this.f11102f.f10901d;
            if (d2 == null) {
                this.f11102f.e().t().a("Failed to get user properties", this.f11097a, this.f11098b);
                return;
            }
            bundle = cc.a(d2.a(this.f11097a, this.f11098b, this.f11099c, this.f11100d));
            this.f11102f.H();
            this.f11102f.g().a(this.f11101e, bundle);
        } catch (RemoteException e2) {
            this.f11102f.e().t().a("Failed to get user properties", this.f11097a, e2);
        } finally {
            this.f11102f.g().a(this.f11101e, bundle);
        }
    }
}
