package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.Location;
import android.net.Uri;
import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.yandex.metrica.impl.ac.GoogleAdvertisingIdGetter;
import com.yandex.metrica.impl.ar;
import com.yandex.metrica.impl.ay;
import com.yandex.metrica.impl.bs;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.ob.hq;
import com.yandex.metrica.impl.ob.ka;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.a.a;

class hz extends ar {

    /* renamed from: a  reason: collision with root package name */
    private ig f6141a;

    /* renamed from: b  reason: collision with root package name */
    private final bs f6142b;
    private hq c;
    private ft l;
    private fs m;
    private hp n;
    private gf o;
    private long p;
    private long q;
    private long r;

    /* renamed from: com.yandex.metrica.impl.ob.hz$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6143a = new int[hq.a.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            /*
                com.yandex.metrica.impl.ob.hq$a[] r0 = com.yandex.metrica.impl.ob.hq.a.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f6143a = r0
                int[] r0 = f6143a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.yandex.metrica.impl.ob.hq$a r1 = com.yandex.metrica.impl.ob.hq.a.FOREGROUND     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f6143a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.yandex.metrica.impl.ob.hq$a r1 = com.yandex.metrica.impl.ob.hq.a.BACKGROUND     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.hz.AnonymousClass1.<clinit>():void");
        }
    }

    public hz(Context context, ig igVar, bs bsVar) {
        this(igVar, bsVar, fq.a(context).g(), fq.a(context).h(), new hp(context), new gf(fq.a(context).c()));
    }

    public boolean b() {
        boolean z = false;
        if (this.f6142b.d() || TextUtils.isEmpty(this.f6141a.q()) || TextUtils.isEmpty(this.f6141a.r()) || bv.a((Collection) t())) {
            return false;
        }
        Map<Long, String> b2 = this.l.b(this.c.f);
        Map<Long, String> b3 = this.m.b(this.c.f);
        List<ic> arrayList = new ArrayList<>();
        List<hv> arrayList2 = new ArrayList<>();
        if (b2.size() > 0) {
            this.q = ((Long) Collections.max(b2.keySet())).longValue();
            arrayList = b(b2);
        }
        if (b3.size() > 0) {
            this.r = ((Long) Collections.max(b3.keySet())).longValue();
            arrayList2 = c(b3);
        }
        if (!(arrayList.size() == 0 && arrayList2.size() == 0)) {
            z = c(e.a((e) a(arrayList, arrayList2)));
        }
        return z;
    }

    public boolean c() {
        boolean c2 = super.c();
        this.o.c(this.p).i();
        return c2;
    }

    public void C() {
        this.l.c(this.q);
        this.m.c(this.r);
    }

    public void D() {
        long j = this.q;
        if (j > -1) {
            this.l.c(j);
        }
    }

    public boolean u() {
        return super.u() & (400 != l());
    }

    /* access modifiers changed from: package-private */
    public List<ic> b(Map<Long, String> map) {
        ic icVar;
        ArrayList arrayList = new ArrayList();
        for (Map.Entry next : map.entrySet()) {
            Long l2 = (Long) next.getKey();
            String str = (String) next.getValue();
            if (str == null) {
                icVar = null;
            } else {
                icVar = this.n.a(l2.longValue(), str);
            }
            if (icVar != null) {
                arrayList.add(icVar);
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: package-private */
    public List<hv> c(Map<Long, String> map) {
        hv hvVar;
        ArrayList arrayList = new ArrayList();
        for (Map.Entry next : map.entrySet()) {
            Long l2 = (Long) next.getKey();
            String str = (String) next.getValue();
            if (str == null) {
                hvVar = null;
            } else {
                hvVar = this.n.b(l2.longValue(), str);
            }
            if (hvVar != null) {
                arrayList.add(hvVar);
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: package-private */
    public ka.b a(List<ic> list, List<hv> list2) {
        ka.b bVar = new ka.b();
        if (list.size() > 0) {
            ArrayList arrayList = new ArrayList();
            for (ic a2 : list) {
                arrayList.add(a(a2));
            }
            bVar.f6188b = (ka.b.C0111b[]) arrayList.toArray(new ka.b.C0111b[arrayList.size()]);
        }
        if (list2.size() > 0) {
            bVar.c = b(list2);
        }
        return bVar;
    }

    private ka.b.a[] b(List<hv> list) {
        ArrayList arrayList = new ArrayList();
        for (hv a2 : list) {
            arrayList.add(a(a2));
        }
        return (ka.b.a[]) arrayList.toArray(new ka.b.a[arrayList.size()]);
    }

    /* access modifiers changed from: package-private */
    public ka.b.C0111b a(ic icVar) {
        ka.b.C0111b bVar = new ka.b.C0111b();
        Location c2 = icVar.c();
        bVar.f6190b = icVar.a().longValue();
        bVar.d = c2.getTime();
        int i = AnonymousClass1.f6143a[icVar.f6149a.ordinal()];
        int i2 = 2;
        bVar.l = (i == 1 || i != 2) ? 0 : 1;
        bVar.c = icVar.b();
        bVar.e = c2.getLatitude();
        bVar.f = c2.getLongitude();
        bVar.g = Math.round(c2.getAccuracy());
        bVar.h = Math.round(c2.getBearing());
        bVar.i = Math.round(c2.getSpeed());
        bVar.j = (int) Math.round(c2.getAltitude());
        String provider = c2.getProvider();
        if ("gps".equals(provider)) {
            i2 = 1;
        } else if (!"network".equals(provider)) {
            i2 = 0;
        }
        bVar.k = i2;
        return bVar;
    }

    /* access modifiers changed from: package-private */
    public ka.b.a a(hv hvVar) {
        ka.b.a aVar = new ka.b.a();
        aVar.f6189b = hvVar.a().longValue();
        aVar.c = hvVar.b();
        a d = hvVar.d();
        if (d != null) {
            aVar.d = ay.b(d);
        }
        a c2 = hvVar.c();
        if (c2 != null) {
            aVar.e = ay.a(c2);
        }
        return aVar;
    }

    public void a(Uri.Builder builder) {
        String str;
        super.a(builder);
        builder.appendPath(FirebaseAnalytics.b.LOCATION);
        builder.appendQueryParameter("deviceid", this.f6141a.q());
        builder.appendQueryParameter("device_type", this.f6141a.A());
        builder.appendQueryParameter("uuid", this.f6141a.r());
        builder.appendQueryParameter("analytics_sdk_version_name", this.f6141a.h());
        builder.appendQueryParameter("analytics_sdk_build_number", this.f6141a.i());
        builder.appendQueryParameter("analytics_sdk_build_type", this.f6141a.j());
        builder.appendQueryParameter("app_version_name", this.f6141a.p());
        builder.appendQueryParameter("app_build_number", this.f6141a.o());
        builder.appendQueryParameter("os_version", this.f6141a.m());
        builder.appendQueryParameter("os_api_level", String.valueOf(this.f6141a.n()));
        builder.appendQueryParameter("is_rooted", this.f6141a.s());
        builder.appendQueryParameter("app_framework", this.f6141a.t());
        builder.appendQueryParameter("app_id", this.f6141a.c());
        builder.appendQueryParameter("app_platform", this.f6141a.k());
        builder.appendQueryParameter("android_id", this.f6141a.z());
        builder.appendQueryParameter("request_id", String.valueOf(this.p));
        GoogleAdvertisingIdGetter.b B = this.f6141a.B();
        String str2 = "";
        if (B == null) {
            str = str2;
        } else {
            str = B.f5672a;
        }
        if (str == null) {
            str = str2;
        }
        builder.appendQueryParameter("adv_id", str);
        if (B != null) {
            str2 = a(B.f5673b);
        }
        builder.appendQueryParameter("limit_ad_tracking", str2);
    }

    hz(ig igVar, bs bsVar, ft ftVar, fs fsVar, hp hpVar, gf gfVar) {
        this.q = Long.MIN_VALUE;
        this.r = Long.MIN_VALUE;
        this.f6141a = igVar;
        this.f6142b = bsVar;
        this.c = this.f6141a.a();
        this.l = ftVar;
        this.m = fsVar;
        this.n = hpVar;
        this.o = gfVar;
        this.p = this.o.b(-1) + 1;
        a(this.f6141a.b());
    }
}
