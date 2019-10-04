package com.google.android.gms.internal;

import com.google.android.gms.measurement.AppMeasurement;

final class ku implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f3315a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3316b;
    private /* synthetic */ String c;
    private /* synthetic */ long d;
    private /* synthetic */ kc e;

    ku(kc kcVar, String str, String str2, String str3, long j) {
        this.e = kcVar;
        this.f3315a = str;
        this.f3316b = str2;
        this.c = str3;
        this.d = j;
    }

    public final void run() {
        if (this.f3315a == null) {
            this.e.f3279a.zzawq().zza(this.f3316b, (AppMeasurement.g) null);
            return;
        }
        AppMeasurement.g gVar = new AppMeasurement.g();
        gVar.zziwk = this.c;
        gVar.zziwl = this.f3315a;
        gVar.zziwm = this.d;
        this.e.f3279a.zzawq().zza(this.f3316b, gVar);
    }
}
