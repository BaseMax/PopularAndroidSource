package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ap;

public class h extends cw {

    /* renamed from: b  reason: collision with root package name */
    final ArraySet<cp<?>> f2858b = new ArraySet<>();
    private al f;

    private h(bd bdVar) {
        super(bdVar);
        this.f2748a.zza("ConnectionlessLifecycleHelper", (LifecycleCallback) this);
    }

    private final void c() {
        if (!this.f2858b.isEmpty()) {
            this.f.zza(this);
        }
    }

    public static void zza(Activity activity, al alVar, cp<?> cpVar) {
        bd zzn = zzn(activity);
        h hVar = (h) zzn.zza("ConnectionlessLifecycleHelper", h.class);
        if (hVar == null) {
            hVar = new h(zzn);
        }
        hVar.f = alVar;
        ap.checkNotNull(cpVar, "ApiKey cannot be null");
        hVar.f2858b.add(cpVar);
        alVar.zza(hVar);
    }

    /* access modifiers changed from: protected */
    public final void a() {
        this.f.zzagz();
    }

    /* access modifiers changed from: protected */
    public final void a(ConnectionResult connectionResult, int i) {
        this.f.zza(connectionResult, i);
    }

    public final void onResume() {
        super.onResume();
        c();
    }

    public final void onStart() {
        super.onStart();
        c();
    }

    public final void onStop() {
        super.onStop();
        al alVar = this.f;
        synchronized (al.f2763a) {
            if (alVar.c == this) {
                alVar.c = null;
                alVar.d.clear();
            }
        }
    }
}
