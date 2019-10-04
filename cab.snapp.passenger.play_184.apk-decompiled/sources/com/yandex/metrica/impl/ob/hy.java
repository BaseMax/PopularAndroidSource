package com.yandex.metrica.impl.ob;

import android.location.Location;

class hy {

    /* renamed from: a  reason: collision with root package name */
    private String f6139a;

    /* renamed from: b  reason: collision with root package name */
    private hq f6140b;
    private hn c;
    private Location d;
    private long e;
    private nq f;
    private ii g;
    private hm h;

    public hy(String str, hq hqVar, hn hnVar, ii iiVar, hm hmVar) {
        this(str, hqVar, hnVar, null, 0, new np(), iiVar, hmVar);
    }

    hy(String str, hq hqVar, hn hnVar, Location location, long j, nq nqVar, ii iiVar, hm hmVar) {
        this.f6139a = str;
        this.f6140b = hqVar;
        this.c = hnVar;
        this.d = location;
        this.e = j;
        this.f = nqVar;
        this.g = iiVar;
        this.h = hmVar;
    }

    public void a(ma maVar, hq hqVar) {
        this.f6140b = hqVar;
        this.g.a(maVar, this.f6140b);
        this.h.a(this.f6140b);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x004c, code lost:
        if (r3 == false) goto L_0x0051;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x004e, code lost:
        if (r4 == false) goto L_0x0051;
     */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.location.Location r10) {
        /*
            r9 = this;
            r0 = 1
            r1 = 0
            if (r10 == 0) goto L_0x0051
            com.yandex.metrica.impl.ob.hq r2 = r9.f6140b
            if (r2 == 0) goto L_0x0051
            android.location.Location r2 = r9.d
            if (r2 == 0) goto L_0x0052
            com.yandex.metrica.impl.ob.nq r2 = r9.f
            long r2 = r2.a()
            long r4 = r9.e
            long r2 = r2 - r4
            com.yandex.metrica.impl.ob.hq r4 = r9.f6140b
            long r4 = r4.c
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 <= 0) goto L_0x001f
            r2 = 1
            goto L_0x0020
        L_0x001f:
            r2 = 0
        L_0x0020:
            android.location.Location r3 = r9.d
            float r3 = r10.distanceTo(r3)
            com.yandex.metrica.impl.ob.hq r4 = r9.f6140b
            float r4 = r4.d
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 <= 0) goto L_0x0030
            r3 = 1
            goto L_0x0031
        L_0x0030:
            r3 = 0
        L_0x0031:
            android.location.Location r4 = r9.d
            if (r4 == 0) goto L_0x0049
            long r4 = r10.getTime()
            android.location.Location r6 = r9.d
            long r6 = r6.getTime()
            long r4 = r4 - r6
            r6 = 0
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 < 0) goto L_0x0047
            goto L_0x0049
        L_0x0047:
            r4 = 0
            goto L_0x004a
        L_0x0049:
            r4 = 1
        L_0x004a:
            if (r2 != 0) goto L_0x004e
            if (r3 == 0) goto L_0x0051
        L_0x004e:
            if (r4 == 0) goto L_0x0051
            goto L_0x0052
        L_0x0051:
            r0 = 0
        L_0x0052:
            if (r0 == 0) goto L_0x006f
            r9.d = r10
            long r0 = java.lang.System.currentTimeMillis()
            r9.e = r0
            com.yandex.metrica.impl.ob.hn r0 = r9.c
            java.lang.String r1 = r9.f6139a
            com.yandex.metrica.impl.ob.hq r2 = r9.f6140b
            r0.a(r1, r10, r2)
            com.yandex.metrica.impl.ob.ii r10 = r9.g
            r10.a()
            com.yandex.metrica.impl.ob.hm r10 = r9.h
            r10.a()
        L_0x006f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.hy.a(android.location.Location):void");
    }
}
