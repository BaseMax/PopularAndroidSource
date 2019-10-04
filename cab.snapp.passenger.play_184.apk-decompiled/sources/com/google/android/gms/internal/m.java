package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.p;
import java.util.HashMap;

public final class m extends p<m> {
    public String mCategory;
    public String zzdrq;
    public String zzdsj;
    public long zzdsk;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("variableName", this.zzdsj);
        hashMap.put("timeInMillis", Long.valueOf(this.zzdsk));
        hashMap.put("category", this.mCategory);
        hashMap.put("label", this.zzdrq);
        return zzl(hashMap);
    }

    public final /* synthetic */ void zzb(p pVar) {
        m mVar = (m) pVar;
        if (!TextUtils.isEmpty(this.zzdsj)) {
            mVar.zzdsj = this.zzdsj;
        }
        long j = this.zzdsk;
        if (j != 0) {
            mVar.zzdsk = j;
        }
        if (!TextUtils.isEmpty(this.mCategory)) {
            mVar.mCategory = this.mCategory;
        }
        if (!TextUtils.isEmpty(this.zzdrq)) {
            mVar.zzdrq = this.zzdrq;
        }
    }
}
