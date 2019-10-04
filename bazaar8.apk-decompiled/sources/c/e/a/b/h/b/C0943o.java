package c.e.a.b.h.b;

import android.content.Context;
import com.google.android.gms.measurement.internal.zzm;

/* renamed from: c.e.a.b.h.b.o  reason: case insensitive filesystem */
public final class C0943o extends C0977zb {

    /* renamed from: c  reason: collision with root package name */
    public String f10985c;

    /* renamed from: d  reason: collision with root package name */
    public String f10986d;

    /* renamed from: e  reason: collision with root package name */
    public int f10987e;

    /* renamed from: f  reason: collision with root package name */
    public String f10988f;

    /* renamed from: g  reason: collision with root package name */
    public String f10989g;

    /* renamed from: h  reason: collision with root package name */
    public long f10990h;

    /* renamed from: i  reason: collision with root package name */
    public long f10991i;

    /* renamed from: j  reason: collision with root package name */
    public long f10992j;

    /* renamed from: k  reason: collision with root package name */
    public int f10993k;

    /* renamed from: l  reason: collision with root package name */
    public String f10994l;
    public String m;

    public C0943o(Y y, long j2) {
        super(y);
        this.f10992j = j2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x00ad  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00c4  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00d6  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0101  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x019f A[Catch:{ IllegalStateException -> 0x01ce }] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x01a0 A[Catch:{ IllegalStateException -> 0x01ce }] */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x01a9 A[Catch:{ IllegalStateException -> 0x01ce }] */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x01bc A[Catch:{ IllegalStateException -> 0x01ce }] */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x01e6  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x01f1  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void A() {
        /*
            r13 = this;
            android.content.Context r0 = r13.b()
            java.lang.String r0 = r0.getPackageName()
            android.content.Context r1 = r13.b()
            android.content.pm.PackageManager r1 = r1.getPackageManager()
            java.lang.String r2 = "Unknown"
            java.lang.String r3 = ""
            r4 = 0
            java.lang.String r5 = "unknown"
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r1 != 0) goto L_0x002f
            c.e.a.b.h.b.t r1 = r13.e()
            c.e.a.b.h.b.v r1 = r1.t()
            java.lang.Object r7 = c.e.a.b.h.b.C0957t.a((java.lang.String) r0)
            java.lang.String r8 = "PackageManager is null, app identity information might be inaccurate. appId"
            r1.a(r8, r7)
        L_0x002c:
            r1 = r2
            goto L_0x0091
        L_0x002f:
            java.lang.String r5 = r1.getInstallerPackageName(r0)     // Catch:{ IllegalArgumentException -> 0x0034 }
            goto L_0x0045
        L_0x0034:
            c.e.a.b.h.b.t r7 = r13.e()
            c.e.a.b.h.b.v r7 = r7.t()
            java.lang.Object r8 = c.e.a.b.h.b.C0957t.a((java.lang.String) r0)
            java.lang.String r9 = "Error retrieving app installer package name. appId"
            r7.a(r9, r8)
        L_0x0045:
            if (r5 != 0) goto L_0x004a
            java.lang.String r5 = "manual_install"
            goto L_0x0053
        L_0x004a:
            java.lang.String r7 = "com.android.vending"
            boolean r7 = r7.equals(r5)
            if (r7 == 0) goto L_0x0053
            r5 = r3
        L_0x0053:
            android.content.Context r7 = r13.b()     // Catch:{ NameNotFoundException -> 0x007c }
            java.lang.String r7 = r7.getPackageName()     // Catch:{ NameNotFoundException -> 0x007c }
            android.content.pm.PackageInfo r7 = r1.getPackageInfo(r7, r4)     // Catch:{ NameNotFoundException -> 0x007c }
            if (r7 == 0) goto L_0x002c
            android.content.pm.ApplicationInfo r8 = r7.applicationInfo     // Catch:{ NameNotFoundException -> 0x007c }
            java.lang.CharSequence r1 = r1.getApplicationLabel(r8)     // Catch:{ NameNotFoundException -> 0x007c }
            boolean r8 = android.text.TextUtils.isEmpty(r1)     // Catch:{ NameNotFoundException -> 0x007c }
            if (r8 != 0) goto L_0x0072
            java.lang.String r1 = r1.toString()     // Catch:{ NameNotFoundException -> 0x007c }
            goto L_0x0073
        L_0x0072:
            r1 = r2
        L_0x0073:
            java.lang.String r2 = r7.versionName     // Catch:{ NameNotFoundException -> 0x0078 }
            int r6 = r7.versionCode     // Catch:{ NameNotFoundException -> 0x0078 }
            goto L_0x0091
        L_0x0078:
            r12 = r2
            r2 = r1
            r1 = r12
            goto L_0x007d
        L_0x007c:
            r1 = r2
        L_0x007d:
            c.e.a.b.h.b.t r7 = r13.e()
            c.e.a.b.h.b.v r7 = r7.t()
            java.lang.Object r8 = c.e.a.b.h.b.C0957t.a((java.lang.String) r0)
            java.lang.String r9 = "Error retrieving package info. appId, appName"
            r7.a(r9, r8, r2)
            r12 = r2
            r2 = r1
            r1 = r12
        L_0x0091:
            r13.f10985c = r0
            r13.f10988f = r5
            r13.f10986d = r2
            r13.f10987e = r6
            r13.f10989g = r1
            r1 = 0
            r13.f10990h = r1
            r13.a()
            android.content.Context r5 = r13.b()
            com.google.android.gms.common.api.Status r5 = c.e.a.b.d.a.a.C0756d.a((android.content.Context) r5)
            r6 = 1
            if (r5 == 0) goto L_0x00b5
            boolean r7 = r5.A()
            if (r7 == 0) goto L_0x00b5
            r7 = 1
            goto L_0x00b6
        L_0x00b5:
            r7 = 0
        L_0x00b6:
            c.e.a.b.h.b.Y r8 = r13.f11077a
            java.lang.String r8 = r8.q()
            boolean r8 = android.text.TextUtils.isEmpty(r8)
            java.lang.String r9 = "am"
            if (r8 != 0) goto L_0x00d2
            c.e.a.b.h.b.Y r8 = r13.f11077a
            java.lang.String r8 = r8.r()
            boolean r8 = r9.equals(r8)
            if (r8 == 0) goto L_0x00d2
            r8 = 1
            goto L_0x00d3
        L_0x00d2:
            r8 = 0
        L_0x00d3:
            r7 = r7 | r8
            if (r7 != 0) goto L_0x00ff
            if (r5 != 0) goto L_0x00e6
            c.e.a.b.h.b.t r5 = r13.e()
            c.e.a.b.h.b.v r5 = r5.t()
            java.lang.String r8 = "GoogleService failed to initialize (no status)"
            r5.a(r8)
            goto L_0x00ff
        L_0x00e6:
            c.e.a.b.h.b.t r8 = r13.e()
            c.e.a.b.h.b.v r8 = r8.t()
            int r10 = r5.x()
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)
            java.lang.String r5 = r5.y()
            java.lang.String r11 = "GoogleService failed to initialize, status"
            r8.a(r11, r10, r5)
        L_0x00ff:
            if (r7 == 0) goto L_0x016b
            c.e.a.b.h.b.pc r5 = r13.i()
            java.lang.Boolean r5 = r5.r()
            c.e.a.b.h.b.pc r7 = r13.i()
            boolean r7 = r7.q()
            if (r7 == 0) goto L_0x0129
            c.e.a.b.h.b.Y r5 = r13.f11077a
            boolean r5 = r5.p()
            if (r5 == 0) goto L_0x016b
            c.e.a.b.h.b.t r5 = r13.e()
            c.e.a.b.h.b.v r5 = r5.z()
            java.lang.String r6 = "Collection disabled with firebase_analytics_collection_deactivated=1"
            r5.a(r6)
            goto L_0x016b
        L_0x0129:
            if (r5 == 0) goto L_0x0147
            boolean r7 = r5.booleanValue()
            if (r7 != 0) goto L_0x0147
            c.e.a.b.h.b.Y r5 = r13.f11077a
            boolean r5 = r5.p()
            if (r5 == 0) goto L_0x016b
            c.e.a.b.h.b.t r5 = r13.e()
            c.e.a.b.h.b.v r5 = r5.z()
            java.lang.String r6 = "Collection disabled with firebase_analytics_collection_enabled=0"
            r5.a(r6)
            goto L_0x016b
        L_0x0147:
            if (r5 != 0) goto L_0x015d
            boolean r5 = c.e.a.b.d.a.a.C0756d.b()
            if (r5 == 0) goto L_0x015d
            c.e.a.b.h.b.t r5 = r13.e()
            c.e.a.b.h.b.v r5 = r5.z()
            java.lang.String r6 = "Collection disabled with google_app_measurement_enable=0"
            r5.a(r6)
            goto L_0x016b
        L_0x015d:
            c.e.a.b.h.b.t r5 = r13.e()
            c.e.a.b.h.b.v r5 = r5.B()
            java.lang.String r7 = "Collection enabled"
            r5.a(r7)
            goto L_0x016c
        L_0x016b:
            r6 = 0
        L_0x016c:
            r13.f10994l = r3
            r13.m = r3
            r13.f10991i = r1
            r13.a()
            c.e.a.b.h.b.Y r1 = r13.f11077a
            java.lang.String r1 = r1.q()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L_0x0195
            c.e.a.b.h.b.Y r1 = r13.f11077a
            java.lang.String r1 = r1.r()
            boolean r1 = r9.equals(r1)
            if (r1 == 0) goto L_0x0195
            c.e.a.b.h.b.Y r1 = r13.f11077a
            java.lang.String r1 = r1.q()
            r13.m = r1
        L_0x0195:
            java.lang.String r1 = c.e.a.b.d.a.a.C0756d.a()     // Catch:{ IllegalStateException -> 0x01ce }
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch:{ IllegalStateException -> 0x01ce }
            if (r2 == 0) goto L_0x01a0
            goto L_0x01a1
        L_0x01a0:
            r3 = r1
        L_0x01a1:
            r13.f10994l = r3     // Catch:{ IllegalStateException -> 0x01ce }
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch:{ IllegalStateException -> 0x01ce }
            if (r1 != 0) goto L_0x01ba
            c.e.a.b.d.d.t r1 = new c.e.a.b.d.d.t     // Catch:{ IllegalStateException -> 0x01ce }
            android.content.Context r2 = r13.b()     // Catch:{ IllegalStateException -> 0x01ce }
            r1.<init>(r2)     // Catch:{ IllegalStateException -> 0x01ce }
            java.lang.String r2 = "admob_app_id"
            java.lang.String r1 = r1.a(r2)     // Catch:{ IllegalStateException -> 0x01ce }
            r13.m = r1     // Catch:{ IllegalStateException -> 0x01ce }
        L_0x01ba:
            if (r6 == 0) goto L_0x01e0
            c.e.a.b.h.b.t r1 = r13.e()     // Catch:{ IllegalStateException -> 0x01ce }
            c.e.a.b.h.b.v r1 = r1.B()     // Catch:{ IllegalStateException -> 0x01ce }
            java.lang.String r2 = "App package, google app id"
            java.lang.String r3 = r13.f10985c     // Catch:{ IllegalStateException -> 0x01ce }
            java.lang.String r5 = r13.f10994l     // Catch:{ IllegalStateException -> 0x01ce }
            r1.a(r2, r3, r5)     // Catch:{ IllegalStateException -> 0x01ce }
            goto L_0x01e0
        L_0x01ce:
            r1 = move-exception
            c.e.a.b.h.b.t r2 = r13.e()
            c.e.a.b.h.b.v r2 = r2.t()
            java.lang.Object r0 = c.e.a.b.h.b.C0957t.a((java.lang.String) r0)
            java.lang.String r3 = "getGoogleAppId or isMeasurementEnabled failed with exception. appId"
            r2.a(r3, r0, r1)
        L_0x01e0:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 16
            if (r0 < r1) goto L_0x01f1
            android.content.Context r0 = r13.b()
            boolean r0 = c.e.a.b.d.h.a.a(r0)
            r13.f10993k = r0
            return
        L_0x01f1:
            r13.f10993k = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.C0943o.A():void");
    }

    public final String B() {
        w();
        return this.f10994l;
    }

    public final String C() {
        w();
        return this.f10985c;
    }

    public final String D() {
        w();
        return this.m;
    }

    public final String E() {
        try {
            Class<?> loadClass = b().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            if (loadClass == null) {
                return null;
            }
            try {
                Object invoke = loadClass.getDeclaredMethod("getInstance", new Class[]{Context.class}).invoke(null, new Object[]{b()});
                if (invoke == null) {
                    return null;
                }
                try {
                    return (String) loadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(invoke, new Object[0]);
                } catch (Exception unused) {
                    e().y().a("Failed to retrieve Firebase Instance Id");
                    return null;
                }
            } catch (Exception unused2) {
                e().x().a("Failed to obtain Firebase Analytics instance");
                return null;
            }
        } catch (ClassNotFoundException unused3) {
            return null;
        }
    }

    public final int F() {
        w();
        return this.f10987e;
    }

    public final int G() {
        w();
        return this.f10993k;
    }

    public final zzm a(String str) {
        String str2;
        Boolean bool;
        l();
        j();
        String C = C();
        String B = B();
        w();
        String str3 = this.f10986d;
        long F = (long) F();
        w();
        String str4 = this.f10988f;
        long n = i().n();
        w();
        l();
        if (this.f10990h == 0) {
            this.f10990h = this.f11077a.i().b(b(), b().getPackageName());
        }
        long j2 = this.f10990h;
        boolean f2 = this.f11077a.f();
        boolean z = !h().y;
        l();
        j();
        if (!i().m(this.f10985c) || this.f11077a.f()) {
            str2 = E();
        } else {
            str2 = null;
        }
        w();
        boolean z2 = f2;
        long j3 = this.f10991i;
        long v = this.f11077a.v();
        int G = G();
        pc i2 = i();
        i2.j();
        Boolean e2 = i2.e("google_analytics_adid_collection_enabled");
        boolean booleanValue = Boolean.valueOf(e2 == null || e2.booleanValue()).booleanValue();
        pc i3 = i();
        i3.j();
        Boolean e3 = i3.e("google_analytics_ssaid_collection_enabled");
        boolean booleanValue2 = Boolean.valueOf(e3 == null || e3.booleanValue()).booleanValue();
        boolean A = h().A();
        String D = D();
        long j4 = j3;
        if (i().e(C(), C0931k.ya)) {
            if (i().e("google_analytics_default_allow_ad_personalization_signals") != null) {
                bool = Boolean.valueOf(!r1.booleanValue());
                zzm zzm = new zzm(C, B, str3, F, str4, n, j2, str, z2, z, str2, j4, v, G, booleanValue, booleanValue2, A, D, bool, this.f10992j);
                return zzm;
            }
        }
        bool = null;
        zzm zzm2 = new zzm(C, B, str3, F, str4, n, j2, str, z2, z, str2, j4, v, G, booleanValue, booleanValue2, A, D, bool, this.f10992j);
        return zzm2;
    }

    public final boolean z() {
        return true;
    }
}
