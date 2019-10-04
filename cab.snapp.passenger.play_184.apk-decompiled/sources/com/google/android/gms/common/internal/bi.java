package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

public final class bi extends ay {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ax f2948a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public bi(ax axVar, int i, Bundle bundle) {
        super(axVar, i, null);
        this.f2948a = axVar;
    }

    /* access modifiers changed from: protected */
    public final void a(ConnectionResult connectionResult) {
        this.f2948a.e.zzf(connectionResult);
        this.f2948a.a(connectionResult);
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        this.f2948a.e.zzf(ConnectionResult.zzfkr);
        return true;
    }
}
