package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.p;
import java.util.HashMap;

public final class l extends p<l> {
    public String zzdrp;
    public String zzdsh;
    public String zzdsi;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("network", this.zzdsh);
        hashMap.put("action", this.zzdrp);
        hashMap.put("target", this.zzdsi);
        return zzl(hashMap);
    }

    public final /* synthetic */ void zzb(p pVar) {
        l lVar = (l) pVar;
        if (!TextUtils.isEmpty(this.zzdsh)) {
            lVar.zzdsh = this.zzdsh;
        }
        if (!TextUtils.isEmpty(this.zzdrp)) {
            lVar.zzdrp = this.zzdrp;
        }
        if (!TextUtils.isEmpty(this.zzdsi)) {
            lVar.zzdsi = this.zzdsi;
        }
    }
}
