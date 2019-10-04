package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.LocationManager;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class hs {

    /* renamed from: a  reason: collision with root package name */
    static final Set<String> f6123a = new HashSet(Arrays.asList(new String[]{"gps"}));

    /* renamed from: b  reason: collision with root package name */
    private Context f6124b;
    private LocationManager c;

    public hs(Context context, LocationManager locationManager) {
        this.f6124b = context;
        this.c = locationManager;
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x004f  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0022 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.location.Location a() {
        /*
            r12 = this;
            android.location.LocationManager r0 = r12.c
            r1 = 0
            if (r0 == 0) goto L_0x005e
            android.content.Context r0 = r12.f6124b
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            boolean r0 = com.yandex.metrica.impl.au.a(r0, r2)
            android.content.Context r2 = r12.f6124b
            java.lang.String r3 = "android.permission.ACCESS_FINE_LOCATION"
            boolean r2 = com.yandex.metrica.impl.au.a(r2, r3)
            android.location.LocationManager r3 = r12.c
            java.util.List r3 = r3.getAllProviders()
            if (r3 == 0) goto L_0x005e
            java.util.Iterator r3 = r3.iterator()
            r10 = r1
        L_0x0022:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L_0x005d
            java.lang.Object r4 = r3.next()
            java.lang.String r4 = (java.lang.String) r4
            java.util.Set<java.lang.String> r5 = f6123a
            boolean r5 = r5.contains(r4)
            if (r5 != 0) goto L_0x0022
            if (r0 == 0) goto L_0x004b
            java.lang.String r5 = "passive"
            boolean r5 = r5.equals(r4)     // Catch:{ Exception -> 0x0049 }
            if (r5 == 0) goto L_0x0042
            if (r2 == 0) goto L_0x004b
        L_0x0042:
            android.location.LocationManager r5 = r12.c     // Catch:{ Exception -> 0x0049 }
            android.location.Location r4 = r5.getLastKnownLocation(r4)     // Catch:{ Exception -> 0x0049 }
            goto L_0x004c
        L_0x0049:
            r11 = r1
            goto L_0x004d
        L_0x004b:
            r4 = r1
        L_0x004c:
            r11 = r4
        L_0x004d:
            if (r11 == 0) goto L_0x0022
            long r6 = com.yandex.metrica.impl.ob.hr.f6119a
            r8 = 200(0xc8, double:9.9E-322)
            r4 = r11
            r5 = r10
            boolean r4 = com.yandex.metrica.impl.ob.hr.a(r4, r5, r6, r8)
            if (r4 == 0) goto L_0x0022
            r10 = r11
            goto L_0x0022
        L_0x005d:
            r1 = r10
        L_0x005e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.hs.a():android.location.Location");
    }
}
