package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.cv;
import com.google.android.gms.location.k;

final class hl extends gx {

    /* renamed from: a  reason: collision with root package name */
    private cv<Status> f3186a;

    public hl(cv<Status> cvVar) {
        this.f3186a = cvVar;
    }

    private final void a(int i) {
        if (this.f3186a == null) {
            Log.wtf("LocationClientImpl", "onRemoveGeofencesResult called multiple times");
            return;
        }
        this.f3186a.setResult(k.zzdw(k.zzdv(i)));
        this.f3186a = null;
    }

    public final void zza(int i, PendingIntent pendingIntent) {
        a(i);
    }

    public final void zza(int i, String[] strArr) {
        Log.wtf("LocationClientImpl", "Unexpected call to onAddGeofencesResult");
    }

    public final void zzb(int i, String[] strArr) {
        a(i);
    }
}
