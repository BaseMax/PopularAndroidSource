package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.p;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;

public final class h extends p<h> {

    /* renamed from: a  reason: collision with root package name */
    private String f3176a;

    /* renamed from: b  reason: collision with root package name */
    private String f3177b;
    private String c;
    private long d;

    public final String getAction() {
        return this.f3177b;
    }

    public final String getCategory() {
        return this.f3176a;
    }

    public final String getLabel() {
        return this.c;
    }

    public final long getValue() {
        return this.d;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("category", this.f3176a);
        hashMap.put("action", this.f3177b);
        hashMap.put("label", this.c);
        hashMap.put(FirebaseAnalytics.b.VALUE, Long.valueOf(this.d));
        return zzl(hashMap);
    }

    public final /* synthetic */ void zzb(p pVar) {
        h hVar = (h) pVar;
        if (!TextUtils.isEmpty(this.f3176a)) {
            hVar.f3176a = this.f3176a;
        }
        if (!TextUtils.isEmpty(this.f3177b)) {
            hVar.f3177b = this.f3177b;
        }
        if (!TextUtils.isEmpty(this.c)) {
            hVar.c = this.c;
        }
        long j = this.d;
        if (j != 0) {
            hVar.d = j;
        }
    }
}
