package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;

public final class be extends w {

    /* renamed from: a  reason: collision with root package name */
    private ax f2941a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2942b;

    public be(ax axVar, int i) {
        this.f2941a = axVar;
        this.f2942b = i;
    }

    public final void zza(int i, Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }

    public final void zza(int i, IBinder iBinder, Bundle bundle) {
        ap.checkNotNull(this.f2941a, "onPostInitComplete can be called only once per call to getRemoteService");
        this.f2941a.a(i, iBinder, bundle, this.f2942b);
        this.f2941a = null;
    }
}
