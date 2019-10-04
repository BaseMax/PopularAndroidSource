package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

abstract class ay extends bc<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private int f2936a;

    /* renamed from: b  reason: collision with root package name */
    private Bundle f2937b;
    private /* synthetic */ ax c;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    protected ay(ax axVar, int i, Bundle bundle) {
        super(axVar, Boolean.TRUE);
        this.c = axVar;
        this.f2936a = i;
        this.f2937b = bundle;
    }

    /* access modifiers changed from: protected */
    public abstract void a(ConnectionResult connectionResult);

    /* JADX WARNING: type inference failed for: r4v11, types: [android.os.Parcelable] */
    /* access modifiers changed from: protected */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ void a(java.lang.Object r4) {
        /*
            r3 = this;
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            r0 = 1
            if (r4 != 0) goto L_0x000b
            com.google.android.gms.common.internal.ax r4 = r3.c
            r4.a((int) r0, null)
            return
        L_0x000b:
            int r4 = r3.f2936a
            r1 = 0
            if (r4 == 0) goto L_0x003e
            r2 = 10
            if (r4 == r2) goto L_0x0031
            com.google.android.gms.common.internal.ax r4 = r3.c
            r4.a((int) r0, null)
            android.os.Bundle r4 = r3.f2937b
            if (r4 == 0) goto L_0x0026
            java.lang.String r0 = "pendingIntent"
            android.os.Parcelable r4 = r4.getParcelable(r0)
            r1 = r4
            android.app.PendingIntent r1 = (android.app.PendingIntent) r1
        L_0x0026:
            com.google.android.gms.common.ConnectionResult r4 = new com.google.android.gms.common.ConnectionResult
            int r0 = r3.f2936a
            r4.<init>(r0, r1)
            r3.a((com.google.android.gms.common.ConnectionResult) r4)
            goto L_0x0053
        L_0x0031:
            com.google.android.gms.common.internal.ax r4 = r3.c
            r4.a((int) r0, null)
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r0 = "A fatal developer error has occurred. Check the logs for further information."
            r4.<init>(r0)
            throw r4
        L_0x003e:
            boolean r4 = r3.a()
            if (r4 != 0) goto L_0x0053
            com.google.android.gms.common.internal.ax r4 = r3.c
            r4.a((int) r0, null)
            com.google.android.gms.common.ConnectionResult r4 = new com.google.android.gms.common.ConnectionResult
            r0 = 8
            r4.<init>(r0, r1)
            r3.a((com.google.android.gms.common.ConnectionResult) r4)
        L_0x0053:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.ay.a(java.lang.Object):void");
    }

    /* access modifiers changed from: protected */
    public abstract boolean a();
}
