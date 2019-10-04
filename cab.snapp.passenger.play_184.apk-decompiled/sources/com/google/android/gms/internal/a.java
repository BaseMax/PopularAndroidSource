package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.p;
import java.util.HashMap;

public final class a extends p<a> {

    /* renamed from: a  reason: collision with root package name */
    private String f3042a;

    /* renamed from: b  reason: collision with root package name */
    private String f3043b;
    private String c;
    private String d;

    public final String getAppId() {
        return this.c;
    }

    public final void setAppId(String str) {
        this.c = str;
    }

    public final void setAppInstallerId(String str) {
        this.d = str;
    }

    public final void setAppName(String str) {
        this.f3042a = str;
    }

    public final void setAppVersion(String str) {
        this.f3043b = str;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("appName", this.f3042a);
        hashMap.put("appVersion", this.f3043b);
        hashMap.put("appId", this.c);
        hashMap.put("appInstallerId", this.d);
        return zzl(hashMap);
    }

    /* renamed from: zza */
    public final void zzb(a aVar) {
        if (!TextUtils.isEmpty(this.f3042a)) {
            aVar.f3042a = this.f3042a;
        }
        if (!TextUtils.isEmpty(this.f3043b)) {
            aVar.f3043b = this.f3043b;
        }
        if (!TextUtils.isEmpty(this.c)) {
            aVar.c = this.c;
        }
        if (!TextUtils.isEmpty(this.d)) {
            aVar.d = this.d;
        }
    }

    public final String zzvi() {
        return this.f3042a;
    }

    public final String zzvj() {
        return this.f3043b;
    }

    public final String zzvk() {
        return this.d;
    }
}
