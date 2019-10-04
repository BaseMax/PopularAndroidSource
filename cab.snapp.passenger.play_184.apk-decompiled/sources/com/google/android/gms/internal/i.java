package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.p;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.HashMap;

public final class i extends p<i> {
    public String zzdrs;
    public boolean zzdrt;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("description", this.zzdrs);
        hashMap.put(AppMeasurement.d.FATAL, Boolean.valueOf(this.zzdrt));
        return zzl(hashMap);
    }

    public final /* synthetic */ void zzb(p pVar) {
        i iVar = (i) pVar;
        if (!TextUtils.isEmpty(this.zzdrs)) {
            iVar.zzdrs = this.zzdrs;
        }
        boolean z = this.zzdrt;
        if (z) {
            iVar.zzdrt = z;
        }
    }
}
