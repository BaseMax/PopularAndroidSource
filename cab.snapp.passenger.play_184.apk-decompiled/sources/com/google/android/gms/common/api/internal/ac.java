package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;

final class ac implements f.c {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ bz f2753a;

    ac(bz bzVar) {
        this.f2753a = bzVar;
    }

    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f2753a.setResult(new Status(8));
    }
}
