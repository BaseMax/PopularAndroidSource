package com.google.android.gms.common.api.internal;

import androidx.collection.ArrayMap;
import com.google.android.gms.c.f;
import com.google.android.gms.c.g;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.e;
import java.util.Map;
import java.util.Set;

public final class cr {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayMap<cp<?>, ConnectionResult> f2829a = new ArrayMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayMap<cp<?>, String> f2830b = new ArrayMap<>();
    private final g<Map<cp<?>, String>> c = new g<>();
    private int d;
    private boolean e = false;

    public cr(Iterable<? extends e<?>> iterable) {
        for (e zzagn : iterable) {
            this.f2829a.put(zzagn.zzagn(), null);
        }
        this.d = this.f2829a.keySet().size();
    }

    public final f<Map<cp<?>, String>> getTask() {
        return this.c.getTask();
    }

    public final void zza(cp<?> cpVar, ConnectionResult connectionResult, String str) {
        this.f2829a.put(cpVar, connectionResult);
        this.f2830b.put(cpVar, str);
        this.d--;
        if (!connectionResult.isSuccess()) {
            this.e = true;
        }
        if (this.d == 0) {
            if (this.e) {
                this.c.setException(new c(this.f2829a));
                return;
            }
            this.c.setResult(this.f2830b);
        }
    }

    public final Set<cp<?>> zzaha() {
        return this.f2829a.keySet();
    }
}
