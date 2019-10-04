package com.google.android.gms.internal;

import android.content.Intent;

final /* synthetic */ class mm implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ml f3389a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3390b;
    private final iz c;
    private final Intent d;

    mm(ml mlVar, int i, iz izVar, Intent intent) {
        this.f3389a = mlVar;
        this.f3390b = i;
        this.c = izVar;
        this.d = intent;
    }

    public final void run() {
        ml mlVar = this.f3389a;
        int i = this.f3390b;
        iz izVar = this.c;
        Intent intent = this.d;
        if (((mp) mlVar.f3388a).callServiceStopSelfResult(i)) {
            izVar.zzazj().zzj("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            mlVar.a().zzazj().log("Completed wakeful intent.");
            ((mp) mlVar.f3388a).zzm(intent);
        }
    }
}
