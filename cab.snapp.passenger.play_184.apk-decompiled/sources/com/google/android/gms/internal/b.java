package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.p;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;

public final class b extends p<b> {

    /* renamed from: a  reason: collision with root package name */
    private String f3079a;

    /* renamed from: b  reason: collision with root package name */
    private String f3080b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;

    public final String getContent() {
        return this.e;
    }

    public final String getId() {
        return this.f;
    }

    public final String getName() {
        return this.f3079a;
    }

    public final String getSource() {
        return this.f3080b;
    }

    public final void setName(String str) {
        this.f3079a = str;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("name", this.f3079a);
        hashMap.put("source", this.f3080b);
        hashMap.put("medium", this.c);
        hashMap.put("keyword", this.d);
        hashMap.put(FirebaseAnalytics.b.CONTENT, this.e);
        hashMap.put("id", this.f);
        hashMap.put("adNetworkId", this.g);
        hashMap.put("gclid", this.h);
        hashMap.put("dclid", this.i);
        hashMap.put(FirebaseAnalytics.b.ACLID, this.j);
        return zzl(hashMap);
    }

    public final /* synthetic */ void zzb(p pVar) {
        b bVar = (b) pVar;
        if (!TextUtils.isEmpty(this.f3079a)) {
            bVar.f3079a = this.f3079a;
        }
        if (!TextUtils.isEmpty(this.f3080b)) {
            bVar.f3080b = this.f3080b;
        }
        if (!TextUtils.isEmpty(this.c)) {
            bVar.c = this.c;
        }
        if (!TextUtils.isEmpty(this.d)) {
            bVar.d = this.d;
        }
        if (!TextUtils.isEmpty(this.e)) {
            bVar.e = this.e;
        }
        if (!TextUtils.isEmpty(this.f)) {
            bVar.f = this.f;
        }
        if (!TextUtils.isEmpty(this.g)) {
            bVar.g = this.g;
        }
        if (!TextUtils.isEmpty(this.h)) {
            bVar.h = this.h;
        }
        if (!TextUtils.isEmpty(this.i)) {
            bVar.i = this.i;
        }
        if (!TextUtils.isEmpty(this.j)) {
            bVar.j = this.j;
        }
    }

    public final void zzdg(String str) {
        this.f3080b = str;
    }

    public final void zzdh(String str) {
        this.c = str;
    }

    public final void zzdi(String str) {
        this.d = str;
    }

    public final void zzdj(String str) {
        this.e = str;
    }

    public final void zzdk(String str) {
        this.f = str;
    }

    public final void zzdl(String str) {
        this.g = str;
    }

    public final void zzdm(String str) {
        this.h = str;
    }

    public final void zzdn(String str) {
        this.i = str;
    }

    public final void zzdo(String str) {
        this.j = str;
    }

    public final String zzvl() {
        return this.c;
    }

    public final String zzvm() {
        return this.d;
    }

    public final String zzvn() {
        return this.g;
    }

    public final String zzvo() {
        return this.h;
    }

    public final String zzvp() {
        return this.i;
    }

    public final String zzvq() {
        return this.j;
    }
}
