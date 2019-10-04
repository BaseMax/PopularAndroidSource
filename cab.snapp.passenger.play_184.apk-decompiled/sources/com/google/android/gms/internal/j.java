package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.p;
import com.google.android.gms.common.internal.ap;
import java.util.HashMap;

public final class j extends p<j> {

    /* renamed from: a  reason: collision with root package name */
    private String f3230a;

    /* renamed from: b  reason: collision with root package name */
    private String f3231b;
    private String c;
    private String d;
    private boolean e;
    private String f;
    private boolean g;
    private double h;

    public final String getUserId() {
        return this.c;
    }

    public final void setClientId(String str) {
        this.f3231b = str;
    }

    public final void setUserId(String str) {
        this.c = str;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("hitType", this.f3230a);
        hashMap.put("clientId", this.f3231b);
        hashMap.put("userId", this.c);
        hashMap.put("androidAdId", this.d);
        hashMap.put("AdTargetingEnabled", Boolean.valueOf(this.e));
        hashMap.put("sessionControl", this.f);
        hashMap.put("nonInteraction", Boolean.valueOf(this.g));
        hashMap.put("sampleRate", Double.valueOf(this.h));
        return zzl(hashMap);
    }

    public final void zzai(boolean z) {
        this.e = z;
    }

    public final void zzaj(boolean z) {
        this.g = true;
    }

    public final /* synthetic */ void zzb(p pVar) {
        j jVar = (j) pVar;
        if (!TextUtils.isEmpty(this.f3230a)) {
            jVar.f3230a = this.f3230a;
        }
        if (!TextUtils.isEmpty(this.f3231b)) {
            jVar.f3231b = this.f3231b;
        }
        if (!TextUtils.isEmpty(this.c)) {
            jVar.c = this.c;
        }
        if (!TextUtils.isEmpty(this.d)) {
            jVar.d = this.d;
        }
        boolean z = true;
        if (this.e) {
            jVar.e = true;
        }
        if (!TextUtils.isEmpty(this.f)) {
            jVar.f = this.f;
        }
        boolean z2 = this.g;
        if (z2) {
            jVar.g = z2;
        }
        double d2 = this.h;
        if (d2 != 0.0d) {
            if (d2 < 0.0d || d2 > 100.0d) {
                z = false;
            }
            ap.checkArgument(z, "Sample rate must be between 0% and 100%");
            jVar.h = d2;
        }
    }

    public final void zzdp(String str) {
        this.f3230a = str;
    }

    public final void zzdq(String str) {
        this.d = str;
    }

    public final String zzvy() {
        return this.f3230a;
    }

    public final String zzvz() {
        return this.f3231b;
    }

    public final String zzwa() {
        return this.d;
    }

    public final boolean zzwb() {
        return this.e;
    }

    public final String zzwc() {
        return this.f;
    }

    public final boolean zzwd() {
        return this.g;
    }

    public final double zzwe() {
        return this.h;
    }
}
