package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;

public class ia {

    /* renamed from: a  reason: collision with root package name */
    private ib f6144a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public Cif f6145b;
    private hs c;
    private LocationListener d;

    static class a {
        a() {
        }

        public ib a(Context context, Looper looper, LocationManager locationManager, LocationListener locationListener) {
            return new ib(context, looper, locationManager, locationListener);
        }
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public ia(android.content.Context r13, android.os.Looper r14, com.yandex.metrica.impl.ob.ma r15, android.location.LocationManager r16, com.yandex.metrica.impl.ob.hq r17, com.yandex.metrica.impl.ob.ii r18, com.yandex.metrica.impl.ob.hm r19) {
        /*
            r12 = this;
            com.yandex.metrica.impl.ob.ia$a r4 = new com.yandex.metrica.impl.ob.ia$a
            r4.<init>()
            com.yandex.metrica.impl.ob.if r11 = new com.yandex.metrica.impl.ob.if
            r5 = r11
            r6 = r13
            r7 = r15
            r8 = r17
            r9 = r18
            r10 = r19
            r5.<init>(r6, r7, r8, r9, r10)
            com.yandex.metrica.impl.ob.hs r6 = new com.yandex.metrica.impl.ob.hs
            r1 = r13
            r3 = r16
            r6.<init>(r13, r3)
            r0 = r12
            r2 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.ia.<init>(android.content.Context, android.os.Looper, com.yandex.metrica.impl.ob.ma, android.location.LocationManager, com.yandex.metrica.impl.ob.hq, com.yandex.metrica.impl.ob.ii, com.yandex.metrica.impl.ob.hm):void");
    }

    public void a() {
        if (this.c.a() != null) {
            this.f6145b.a(this.c.a());
        }
    }

    public Location b() {
        return this.f6145b.a();
    }

    public Location c() {
        return this.c.a();
    }

    public void d() {
        this.f6144a.a();
    }

    public void e() {
        this.f6144a.b();
    }

    public void a(ma maVar, hq hqVar) {
        this.f6145b.a(maVar, hqVar);
    }

    ia(Context context, Looper looper, LocationManager locationManager, a aVar, Cif ifVar, hs hsVar) {
        this.d = new LocationListener() {
            public void onProviderDisabled(String str) {
            }

            public void onProviderEnabled(String str) {
            }

            public void onStatusChanged(String str, int i, Bundle bundle) {
            }

            public void onLocationChanged(Location location) {
                if (location != null) {
                    ia.this.f6145b.a(location);
                }
            }
        };
        this.c = hsVar;
        this.f6144a = aVar.a(context, looper, locationManager, this.d);
        this.f6145b = ifVar;
    }
}
