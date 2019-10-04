package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.c.f;
import com.google.android.gms.c.g;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.z;
import java.util.concurrent.CancellationException;

public class bl extends cw {

    /* renamed from: b  reason: collision with root package name */
    private g<Void> f2797b = new g<>();

    private bl(bd bdVar) {
        super(bdVar);
        this.f2748a.zza("GmsAvailabilityHelper", (LifecycleCallback) this);
    }

    public static bl zzp(Activity activity) {
        bd zzn = zzn(activity);
        bl blVar = (bl) zzn.zza("GmsAvailabilityHelper", bl.class);
        if (blVar == null) {
            return new bl(zzn);
        }
        if (blVar.f2797b.getTask().isComplete()) {
            blVar.f2797b = new g<>();
        }
        return blVar;
    }

    /* access modifiers changed from: protected */
    public final void a() {
        int isGooglePlayServicesAvailable = this.e.isGooglePlayServicesAvailable(this.f2748a.zzajn());
        if (isGooglePlayServicesAvailable == 0) {
            this.f2797b.setResult(null);
            return;
        }
        if (!this.f2797b.getTask().isComplete()) {
            zzb(new ConnectionResult(isGooglePlayServicesAvailable, null), 0);
        }
    }

    /* access modifiers changed from: protected */
    public final void a(ConnectionResult connectionResult, int i) {
        this.f2797b.setException(z.zzy(new Status(connectionResult.getErrorCode(), connectionResult.getErrorMessage(), connectionResult.getResolution())));
    }

    public final f<Void> getTask() {
        return this.f2797b.getTask();
    }

    public final void onDestroy() {
        super.onDestroy();
        this.f2797b.trySetException(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }
}
