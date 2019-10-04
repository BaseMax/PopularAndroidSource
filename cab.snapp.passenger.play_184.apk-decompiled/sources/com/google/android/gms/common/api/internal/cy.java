package com.google.android.gms.common.api.internal;

import android.content.DialogInterface;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.b;

final class cy implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ cw f2838a;

    /* renamed from: b  reason: collision with root package name */
    private final cx f2839b;

    cy(cw cwVar, cx cxVar) {
        this.f2838a = cwVar;
        this.f2839b = cxVar;
    }

    public final void run() {
        if (this.f2838a.c) {
            ConnectionResult connectionResult = this.f2839b.f2837b;
            if (connectionResult.hasResolution()) {
                this.f2838a.f2748a.startActivityForResult(GoogleApiActivity.zza(this.f2838a.getActivity(), connectionResult.getResolution(), this.f2839b.f2836a, false), 1);
            } else if (this.f2838a.e.isUserResolvableError(connectionResult.getErrorCode())) {
                this.f2838a.e.zza(this.f2838a.getActivity(), this.f2838a.f2748a, connectionResult.getErrorCode(), 2, this.f2838a);
            } else if (connectionResult.getErrorCode() == 18) {
                b.zza(this.f2838a.getActivity().getApplicationContext(), (ax) new cz(this, b.zza(this.f2838a.getActivity(), (DialogInterface.OnCancelListener) this.f2838a)));
            } else {
                this.f2838a.a(connectionResult, this.f2839b.f2836a);
            }
        }
    }
}
