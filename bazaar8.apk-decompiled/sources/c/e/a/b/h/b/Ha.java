package c.e.a.b.h.b;

import android.os.Bundle;

public final class Ha implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f10640a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f10641b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ long f10642c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Bundle f10643d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f10644e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ boolean f10645f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ boolean f10646g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ String f10647h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ Fa f10648i;

    public Ha(Fa fa, String str, String str2, long j2, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.f10648i = fa;
        this.f10640a = str;
        this.f10641b = str2;
        this.f10642c = j2;
        this.f10643d = bundle;
        this.f10644e = z;
        this.f10645f = z2;
        this.f10646g = z3;
        this.f10647h = str3;
    }

    public final void run() {
        this.f10648i.a(this.f10640a, this.f10641b, this.f10642c, this.f10643d, this.f10644e, this.f10645f, this.f10646g, this.f10647h);
    }
}
