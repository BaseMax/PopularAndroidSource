package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.n;
import java.util.Set;

public final class ax {

    /* renamed from: a  reason: collision with root package name */
    private final z f3073a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Boolean f3074b;
    private String c;
    private Set<Integer> d;

    protected ax(z zVar) {
        ap.checkNotNull(zVar);
        this.f3073a = zVar;
    }

    public static boolean zzyq() {
        return bf.zzdvx.get().booleanValue();
    }

    public static int zzyr() {
        return bf.zzdwu.get().intValue();
    }

    public static long zzys() {
        return bf.zzdwf.get().longValue();
    }

    public static long zzyt() {
        return bf.zzdwi.get().longValue();
    }

    public static int zzyu() {
        return bf.zzdwk.get().intValue();
    }

    public static int zzyv() {
        return bf.zzdwl.get().intValue();
    }

    public static String zzyw() {
        return bf.zzdwn.get();
    }

    public static String zzyx() {
        return bf.zzdwm.get();
    }

    public static String zzyy() {
        return bf.zzdwo.get();
    }

    public static long zzza() {
        return bf.zzdxc.get().longValue();
    }

    public final boolean zzyp() {
        if (this.f3074b == null) {
            synchronized (this) {
                if (this.f3074b == null) {
                    ApplicationInfo applicationInfo = this.f3073a.getContext().getApplicationInfo();
                    String zzamo = n.zzamo();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.f3074b = Boolean.valueOf(str != null && str.equals(zzamo));
                    }
                    if ((this.f3074b == null || !this.f3074b.booleanValue()) && "com.google.android.gms.analytics".equals(zzamo)) {
                        this.f3074b = Boolean.TRUE;
                    }
                    if (this.f3074b == null) {
                        this.f3074b = Boolean.TRUE;
                        this.f3073a.zzwt().zzdy("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f3074b.booleanValue();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r1.equals(r0) != false) goto L_0x0039;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.Set<java.lang.Integer> zzyz() {
        /*
            r6 = this;
            com.google.android.gms.internal.bg<java.lang.String> r0 = com.google.android.gms.internal.bf.zzdwx
            java.lang.Object r0 = r0.get()
            java.lang.String r0 = (java.lang.String) r0
            java.util.Set<java.lang.Integer> r1 = r6.d
            if (r1 == 0) goto L_0x0016
            java.lang.String r1 = r6.c
            if (r1 == 0) goto L_0x0016
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L_0x0039
        L_0x0016:
            java.lang.String r1 = ","
            java.lang.String[] r1 = android.text.TextUtils.split(r0, r1)
            java.util.HashSet r2 = new java.util.HashSet
            r2.<init>()
            int r3 = r1.length
            r4 = 0
        L_0x0023:
            if (r4 >= r3) goto L_0x0035
            r5 = r1[r4]
            int r5 = java.lang.Integer.parseInt(r5)     // Catch:{ NumberFormatException -> 0x0032 }
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ NumberFormatException -> 0x0032 }
            r2.add(r5)     // Catch:{ NumberFormatException -> 0x0032 }
        L_0x0032:
            int r4 = r4 + 1
            goto L_0x0023
        L_0x0035:
            r6.c = r0
            r6.d = r2
        L_0x0039:
            java.util.Set<java.lang.Integer> r0 = r6.d
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ax.zzyz():java.util.Set");
    }
}
