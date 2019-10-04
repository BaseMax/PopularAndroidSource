package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.p;
import java.util.HashMap;

public final class k extends p<k> {

    /* renamed from: a  reason: collision with root package name */
    private String f3275a;

    /* renamed from: b  reason: collision with root package name */
    private int f3276b;
    private int c;
    private String d;
    private String e;
    private boolean f;
    private boolean g;

    public k() {
        this((byte) 0);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private k(byte r5) {
        /*
            r4 = this;
            java.util.UUID r5 = java.util.UUID.randomUUID()
            long r0 = r5.getLeastSignificantBits()
            r2 = 2147483647(0x7fffffff, double:1.060997895E-314)
            long r0 = r0 & r2
            int r1 = (int) r0
            if (r1 == 0) goto L_0x0010
            goto L_0x001c
        L_0x0010:
            long r0 = r5.getMostSignificantBits()
            long r0 = r0 & r2
            int r1 = (int) r0
            if (r1 == 0) goto L_0x0019
            goto L_0x001c
        L_0x0019:
            r1 = 2147483647(0x7fffffff, float:NaN)
        L_0x001c:
            r4.<init>((int) r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.k.<init>(byte):void");
    }

    private k(int i) {
        if (i != 0) {
            this.f3276b = i;
            this.g = false;
            return;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("screenName", this.f3275a);
        hashMap.put("interstitial", Boolean.valueOf(this.f));
        hashMap.put("automatic", Boolean.valueOf(this.g));
        hashMap.put("screenId", Integer.valueOf(this.f3276b));
        hashMap.put("referrerScreenId", Integer.valueOf(this.c));
        hashMap.put("referrerScreenName", this.d);
        hashMap.put("referrerUri", this.e);
        return zzl(hashMap);
    }

    public final /* synthetic */ void zzb(p pVar) {
        k kVar = (k) pVar;
        if (!TextUtils.isEmpty(this.f3275a)) {
            kVar.f3275a = this.f3275a;
        }
        int i = this.f3276b;
        if (i != 0) {
            kVar.f3276b = i;
        }
        int i2 = this.c;
        if (i2 != 0) {
            kVar.c = i2;
        }
        if (!TextUtils.isEmpty(this.d)) {
            kVar.d = this.d;
        }
        if (!TextUtils.isEmpty(this.e)) {
            String str = this.e;
            if (TextUtils.isEmpty(str)) {
                str = null;
            }
            kVar.e = str;
        }
        boolean z = this.f;
        if (z) {
            kVar.f = z;
        }
        boolean z2 = this.g;
        if (z2) {
            kVar.g = z2;
        }
    }

    public final String zzwf() {
        return this.f3275a;
    }

    public final int zzwg() {
        return this.f3276b;
    }

    public final String zzwh() {
        return this.e;
    }
}
