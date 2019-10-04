package com.google.android.gms.common.api;

import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.cp;
import com.google.android.gms.common.internal.ap;
import java.util.ArrayList;

public final class c extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayMap<cp<?>, ConnectionResult> f2737a;

    public c(ArrayMap<cp<?>, ConnectionResult> arrayMap) {
        this.f2737a = arrayMap;
    }

    public final ConnectionResult getConnectionResult(e<? extends a.C0065a> eVar) {
        cp<? extends a.C0065a> zzagn = eVar.zzagn();
        ap.checkArgument(this.f2737a.get(zzagn) != null, "The given API was not part of the availability request.");
        return this.f2737a.get(zzagn);
    }

    public final String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (cp next : this.f2737a.keySet()) {
            ConnectionResult connectionResult = this.f2737a.get(next);
            if (connectionResult.isSuccess()) {
                z = false;
            }
            String zzagy = next.zzagy();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(zzagy).length() + 2 + String.valueOf(valueOf).length());
            sb.append(zzagy);
            sb.append(": ");
            sb.append(valueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(z ? "None of the queried APIs are available. " : "Some of the queried APIs are unavailable. ");
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }

    public final ArrayMap<cp<?>, ConnectionResult> zzagj() {
        return this.f2737a;
    }
}
