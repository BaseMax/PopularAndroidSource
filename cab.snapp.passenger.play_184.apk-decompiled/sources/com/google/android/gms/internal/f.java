package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.p;
import java.util.HashMap;

public final class f extends p<f> {

    /* renamed from: a  reason: collision with root package name */
    private String f3143a;
    public int zzchl;
    public int zzchm;
    public int zzdrm;
    public int zzdrn;
    public int zzdro;

    public final String getLanguage() {
        return this.f3143a;
    }

    public final void setLanguage(String str) {
        this.f3143a = str;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("language", this.f3143a);
        hashMap.put("screenColors", Integer.valueOf(this.zzdrm));
        hashMap.put("screenWidth", Integer.valueOf(this.zzchl));
        hashMap.put("screenHeight", Integer.valueOf(this.zzchm));
        hashMap.put("viewportWidth", Integer.valueOf(this.zzdrn));
        hashMap.put("viewportHeight", Integer.valueOf(this.zzdro));
        return zzl(hashMap);
    }

    public final /* synthetic */ void zzb(p pVar) {
        f fVar = (f) pVar;
        int i = this.zzdrm;
        if (i != 0) {
            fVar.zzdrm = i;
        }
        int i2 = this.zzchl;
        if (i2 != 0) {
            fVar.zzchl = i2;
        }
        int i3 = this.zzchm;
        if (i3 != 0) {
            fVar.zzchm = i3;
        }
        int i4 = this.zzdrn;
        if (i4 != 0) {
            fVar.zzdrn = i4;
        }
        int i5 = this.zzdro;
        if (i5 != 0) {
            fVar.zzdro = i5;
        }
        if (!TextUtils.isEmpty(this.f3143a)) {
            fVar.f3143a = this.f3143a;
        }
    }
}
