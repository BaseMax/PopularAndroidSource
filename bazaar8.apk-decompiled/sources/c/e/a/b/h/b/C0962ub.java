package c.e.a.b.h.b;

import android.os.Bundle;
import android.os.RemoteException;
import c.e.a.b.g.f.fd;
import com.google.android.gms.measurement.internal.zzm;
import java.util.ArrayList;

/* renamed from: c.e.a.b.h.b.ub  reason: case insensitive filesystem */
public final class C0962ub implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f11078a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f11079b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ zzm f11080c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ fd f11081d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0921gb f11082e;

    public C0962ub(C0921gb gbVar, String str, String str2, zzm zzm, fd fdVar) {
        this.f11082e = gbVar;
        this.f11078a = str;
        this.f11079b = str2;
        this.f11080c = zzm;
        this.f11081d = fdVar;
    }

    public final void run() {
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            C0934l d2 = this.f11082e.f10901d;
            if (d2 == null) {
                this.f11082e.e().t().a("Failed to get conditional properties", this.f11078a, this.f11079b);
                return;
            }
            arrayList = cc.b(d2.a(this.f11078a, this.f11079b, this.f11080c));
            this.f11082e.H();
            this.f11082e.g().a(this.f11081d, arrayList);
        } catch (RemoteException e2) {
            this.f11082e.e().t().a("Failed to get conditional properties", this.f11078a, this.f11079b, e2);
        } finally {
            this.f11082e.g().a(this.f11081d, arrayList);
        }
    }
}
