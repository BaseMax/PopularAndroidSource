package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.yandex.metrica.impl.d;
import java.util.concurrent.TimeUnit;

class hr extends ho {

    /* renamed from: a  reason: collision with root package name */
    public static final long f6119a = TimeUnit.MINUTES.toMillis(2);

    /* renamed from: b  reason: collision with root package name */
    public static final long f6120b = TimeUnit.SECONDS.toMillis(10);
    private d.a<Location> c;
    private a d;
    private long e;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f6121a;

        /* renamed from: b  reason: collision with root package name */
        public final long f6122b;

        public a(long j, long j2) {
            this.f6121a = j;
            this.f6122b = j2;
        }
    }

    public hr(hn hnVar) {
        this(hnVar, new a(f6119a, 200), f6120b);
    }

    public Location a() {
        d.a<Location> aVar = this.c;
        if (aVar == null) {
            return null;
        }
        return aVar.d();
    }

    public static boolean a(Location location, Location location2, long j, long j2) {
        if (location2 == null) {
            return true;
        }
        if (location == null) {
            return false;
        }
        long time = location.getTime() - location2.getTime();
        boolean z = time > j;
        boolean z2 = time < (-j);
        boolean z3 = time > 0;
        if (z) {
            return true;
        }
        if (z2) {
            return false;
        }
        int accuracy = (int) (location.getAccuracy() - location2.getAccuracy());
        boolean z4 = accuracy > 0;
        boolean z5 = accuracy < 0;
        boolean z6 = ((long) accuracy) > j2;
        String provider = location.getProvider();
        String provider2 = location2.getProvider();
        boolean equals = provider == null ? provider2 == null : provider.equals(provider2);
        if (z5) {
            return true;
        }
        if (!z3 || z4) {
            return z3 && !z6 && equals;
        }
        return true;
    }

    hr(hn hnVar, a aVar, long j) {
        super(hnVar);
        this.d = aVar;
        this.e = j;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.location.Location r7, com.yandex.metrica.impl.ob.hq r8) {
        /*
            r6 = this;
            if (r7 == 0) goto L_0x003b
            com.yandex.metrica.impl.d$a<android.location.Location> r8 = r6.c
            if (r8 == 0) goto L_0x0029
            long r0 = r6.e
            boolean r8 = r8.a((long) r0)
            if (r8 != 0) goto L_0x0029
            com.yandex.metrica.impl.d$a<android.location.Location> r8 = r6.c
            java.lang.Object r8 = r8.a()
            r1 = r8
            android.location.Location r1 = (android.location.Location) r1
            com.yandex.metrica.impl.ob.hr$a r8 = r6.d
            long r2 = r8.f6121a
            com.yandex.metrica.impl.ob.hr$a r8 = r6.d
            long r4 = r8.f6122b
            r0 = r7
            boolean r8 = a(r0, r1, r2, r4)
            if (r8 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            r8 = 0
            goto L_0x002a
        L_0x0029:
            r8 = 1
        L_0x002a:
            if (r8 == 0) goto L_0x003b
            android.location.Location r8 = new android.location.Location
            r8.<init>(r7)
            com.yandex.metrica.impl.d$a r7 = new com.yandex.metrica.impl.d$a
            r7.<init>()
            r7.a(r8)
            r6.c = r7
        L_0x003b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.hr.a(android.location.Location, com.yandex.metrica.impl.ob.hq):void");
    }
}
