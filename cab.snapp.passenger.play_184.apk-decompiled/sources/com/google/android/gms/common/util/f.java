package com.google.android.gms.common.util;

import android.content.Context;

public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f3007a;

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f3008b;
    private static Boolean c;
    private static Boolean d;
    private static Boolean e;

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x003c, code lost:
        if (f3008b.booleanValue() != false) goto L_0x003e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean zza(android.content.res.Resources r4) {
        /*
            r0 = 0
            if (r4 != 0) goto L_0x0004
            return r0
        L_0x0004:
            java.lang.Boolean r1 = f3007a
            if (r1 != 0) goto L_0x0045
            android.content.res.Configuration r1 = r4.getConfiguration()
            int r1 = r1.screenLayout
            r1 = r1 & 15
            r2 = 3
            r3 = 1
            if (r1 <= r2) goto L_0x0016
            r1 = 1
            goto L_0x0017
        L_0x0016:
            r1 = 0
        L_0x0017:
            if (r1 != 0) goto L_0x003e
            java.lang.Boolean r1 = f3008b
            if (r1 != 0) goto L_0x0036
            android.content.res.Configuration r4 = r4.getConfiguration()
            int r1 = r4.screenLayout
            r1 = r1 & 15
            if (r1 > r2) goto L_0x002f
            int r4 = r4.smallestScreenWidthDp
            r1 = 600(0x258, float:8.41E-43)
            if (r4 < r1) goto L_0x002f
            r4 = 1
            goto L_0x0030
        L_0x002f:
            r4 = 0
        L_0x0030:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            f3008b = r4
        L_0x0036:
            java.lang.Boolean r4 = f3008b
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L_0x003f
        L_0x003e:
            r0 = 1
        L_0x003f:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r0)
            f3007a = r4
        L_0x0045:
            java.lang.Boolean r4 = f3007a
            boolean r4 = r4.booleanValue()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.f.zza(android.content.res.Resources):boolean");
    }

    public static boolean zzcs(Context context) {
        if (c == null) {
            c = Boolean.valueOf(m.zzamm() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return c.booleanValue();
    }

    public static boolean zzct(Context context) {
        return (!m.isAtLeastN() || zzcu(context)) && zzcs(context);
    }

    public static boolean zzcu(Context context) {
        if (d == null) {
            d = Boolean.valueOf(m.zzamn() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return d.booleanValue();
    }

    public static boolean zzcv(Context context) {
        if (e == null) {
            e = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        return e.booleanValue();
    }
}
