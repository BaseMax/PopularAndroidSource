package com.yandex.metrica.impl;

import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.yandex.metrica.impl.ac.GoogleAdvertisingIdGetter;
import com.yandex.metrica.impl.b;
import com.yandex.metrica.impl.ob.ac;
import com.yandex.metrica.impl.ob.e;
import com.yandex.metrica.impl.ob.ee;
import com.yandex.metrica.impl.ob.en;
import com.yandex.metrica.impl.ob.fo;
import com.yandex.metrica.impl.ob.ka;
import com.yandex.metrica.impl.ob.le;
import com.yandex.metrica.impl.ob.mu;
import com.yandex.metrica.impl.ob.mw;
import com.yandex.metrica.impl.ob.my;
import com.yandex.metrica.impl.ob.mz;
import com.yandex.metrica.impl.ob.nk;
import com.yandex.metrica.impl.ob.nt;
import com.yandex.metrica.impl.ob.oj;
import com.yandex.metrica.impl.ob.os;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class bc extends m {
    ka.c l;
    fo m;
    List<Long> n;
    int o;
    int p;
    private final ac q;
    private c r;
    private final os<byte[]> s;
    private final nk t;
    private le u;

    static class a {
        a() {
        }

        /* access modifiers changed from: package-private */
        public bc a(ac acVar) {
            return new bc(acVar);
        }
    }

    static final class b {

        /* renamed from: a  reason: collision with root package name */
        final ka.c.e f5745a;

        /* renamed from: b  reason: collision with root package name */
        final b.a f5746b;
        final boolean c;

        b(ka.c.e eVar, b.a aVar, boolean z) {
            this.f5745a = eVar;
            this.f5746b = aVar;
            this.c = z;
        }
    }

    static final class c {

        /* renamed from: a  reason: collision with root package name */
        final List<ka.c.e> f5747a;

        /* renamed from: b  reason: collision with root package name */
        final List<Long> f5748b;
        final org.a.c c;

        c(List<ka.c.e> list, List<Long> list2, org.a.c cVar) {
            this.f5747a = list;
            this.f5748b = list2;
            this.c = cVar;
        }
    }

    /* access modifiers changed from: protected */
    public boolean a(long j) {
        return -2 == j;
    }

    public bc(ac acVar) {
        this(acVar, acVar.l(), acVar.k());
    }

    bc(ac acVar, fo foVar, le leVar) {
        this.o = 0;
        this.p = -1;
        this.s = new oj(245760, "event value in ReportTask");
        this.q = acVar;
        this.m = foVar;
        this.u = leVar;
        this.t = acVar.n();
    }

    /* access modifiers changed from: package-private */
    public ka.c a(c cVar, ka.c.C0112c[] cVarArr) {
        ka.c cVar2 = new ka.c();
        ka.c.d dVar = new ka.c.d();
        dVar.f6195b = nt.a(this.c.f6364b, this.u.r());
        dVar.c = nt.a(this.c.f6363a, this.u.q());
        this.o += com.yandex.metrica.impl.ob.b.b(4, (e) dVar);
        cVar2.c = dVar;
        a(cVar2);
        cVar2.f6191b = (ka.c.e[]) cVar.f5747a.toArray(new ka.c.e[cVar.f5747a.size()]);
        cVar2.d = a(cVar.c);
        cVar2.e = cVarArr;
        this.o += com.yandex.metrica.impl.ob.b.i(8);
        return cVar2;
    }

    /* access modifiers changed from: package-private */
    public void a(final ka.c cVar) {
        mw.a(this.q.c()).a((mz) new mz() {
            public void a(my myVar) {
                ka.c cVar = cVar;
                List<String> c = myVar.c();
                if (!bv.a((Collection) c)) {
                    cVar.f = new String[c.size()];
                    for (int i = 0; i < c.size(); i++) {
                        String str = c.get(i);
                        if (!TextUtils.isEmpty(str)) {
                            cVar.f[i] = str;
                            bc.this.o += com.yandex.metrica.impl.ob.b.b(cVar.f[i]);
                            bc.this.o += com.yandex.metrica.impl.ob.b.i(9);
                        }
                    }
                }
                ka.c cVar2 = cVar;
                List<mu> a2 = myVar.a();
                if (!bv.a((Collection) a2)) {
                    cVar2.g = new ka.c.f[a2.size()];
                    for (int i2 = 0; i2 < a2.size(); i2++) {
                        cVar2.g[i2] = ay.a(a2.get(i2));
                        bc.this.o += com.yandex.metrica.impl.ob.b.b((e) cVar2.g[i2]);
                        bc.this.o += com.yandex.metrica.impl.ob.b.i(10);
                    }
                }
            }
        });
    }

    public boolean b() {
        this.u = this.q.k();
        a(this.u.b());
        if (!this.u.e() || bv.a((Collection) t())) {
            return false;
        }
        this.n = null;
        ka.c.C0112c[] G = G();
        this.r = H();
        if (this.r.f5747a.isEmpty()) {
            return false;
        }
        this.l = a(this.r, G);
        this.n = this.r.f5748b;
        c(e.a((e) this.l));
        return true;
    }

    /* access modifiers changed from: package-private */
    public ka.c.C0112c[] G() {
        ka.c.C0112c[] a2 = ay.a(this.q.c());
        if (a2 != null) {
            for (ka.c.C0112c b2 : a2) {
                this.o += com.yandex.metrica.impl.ob.b.b((e) b2);
            }
        }
        return a2;
    }

    private static ka.c.a[] a(org.a.c cVar) {
        int length = cVar.length();
        if (length <= 0) {
            return null;
        }
        ka.c.a[] aVarArr = new ka.c.a[length];
        Iterator<String> keys = cVar.keys();
        int i = 0;
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                ka.c.a aVar = new ka.c.a();
                aVar.f6192b = next;
                aVar.c = cVar.getString(next);
                aVarArr[i] = aVar;
            } catch (org.a.b unused) {
            }
            i++;
        }
        return aVarArr;
    }

    /* access modifiers changed from: protected */
    public void a(Uri.Builder builder) {
        String str;
        super.a(builder);
        builder.path("report");
        a(builder, "deviceid", this.c.f6363a, this.u.q());
        a(builder, "uuid", this.c.f6364b, this.u.r());
        a(builder, "analytics_sdk_version", this.c.c);
        a(builder, "analytics_sdk_version_name", this.c.d);
        a(builder, "app_version_name", this.c.g, this.u.p());
        a(builder, "app_build_number", this.c.i, this.u.o());
        a(builder, "os_version", this.c.j, this.u.m());
        a(builder, "os_api_level", this.c.k);
        a(builder, "analytics_sdk_build_number", this.c.e);
        a(builder, "analytics_sdk_build_type", this.c.f);
        a(builder, "app_debuggable", this.c.h);
        a(builder, "locale", this.c.l, this.u.y());
        a(builder, "is_rooted", this.c.m, this.u.s());
        a(builder, "app_framework", this.c.n, this.u.t());
        a(builder, "attribution_id", this.c.o);
        builder.appendQueryParameter("api_key_128", this.u.D());
        builder.appendQueryParameter("app_id", this.u.c());
        builder.appendQueryParameter("app_platform", this.u.k());
        builder.appendQueryParameter("model", this.u.l());
        builder.appendQueryParameter("manufacturer", this.u.f());
        builder.appendQueryParameter("screen_width", String.valueOf(this.u.u()));
        builder.appendQueryParameter("screen_height", String.valueOf(this.u.v()));
        builder.appendQueryParameter("screen_dpi", String.valueOf(this.u.w()));
        builder.appendQueryParameter("scalefactor", String.valueOf(this.u.x()));
        builder.appendQueryParameter("device_type", this.u.A());
        builder.appendQueryParameter("android_id", this.u.z());
        a(builder, "clids_set", this.u.a());
        GoogleAdvertisingIdGetter.b B = this.u.B();
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

    private static void a(Uri.Builder builder, String str, String str2, String str3) {
        builder.appendQueryParameter(str, bt.c(str2, str3));
    }

    private static void a(Uri.Builder builder, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            builder.appendQueryParameter(str, str2);
        }
    }

    /* access modifiers changed from: protected */
    public void C() {
        long[] jArr;
        ka.c.e[] eVarArr = this.l.f6191b;
        for (int i = 0; i < eVarArr.length; i++) {
            ka.c.e eVar = eVarArr[i];
            this.m.a(this.n.get(i).longValue(), ay.a(eVar.c.d).a(), eVar.d.length);
            ay.a();
        }
        ee a2 = this.q.f().a();
        if (a2 == null) {
            jArr = new long[0];
        } else {
            jArr = new long[]{a2.c()};
        }
        this.m.a(jArr);
    }

    public boolean u() {
        return super.u() & (400 != l());
    }

    public void g() {
        if (x() && this.t.b()) {
            for (int i = 0; i < this.r.f5747a.size(); i++) {
                this.t.a(this.r.f5747a.get(i), "Event sent");
            }
        }
        this.r = null;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:20:0x0097 */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00a6 A[EDGE_INSN: B:36:0x00a6->B:30:0x00a6 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0014 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.yandex.metrica.impl.bc.c H() {
        /*
            r12 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            org.a.c r2 = new org.a.c
            r2.<init>()
            r3 = 0
            android.database.Cursor r4 = r12.I()     // Catch:{ Exception -> 0x00a5, all -> 0x009f }
        L_0x0014:
            boolean r5 = r4.moveToNext()     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            if (r5 == 0) goto L_0x00a6
            android.content.ContentValues r5 = new android.content.ContentValues     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            r5.<init>()     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            com.yandex.metrica.impl.ob.nc.a((android.database.Cursor) r4, (android.content.ContentValues) r5)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            java.lang.String r6 = "id"
            java.lang.Long r6 = r5.getAsLong(r6)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            long r6 = r6.longValue()     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            java.lang.String r8 = "type"
            java.lang.Integer r8 = r5.getAsInteger(r8)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            com.yandex.metrica.impl.ob.en r8 = com.yandex.metrica.impl.ob.en.a(r8)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            boolean r9 = r12.a((long) r6)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            if (r9 != 0) goto L_0x0014
            com.yandex.metrica.impl.ob.ka$c$g r5 = com.yandex.metrica.impl.ay.a((android.content.ContentValues) r5)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            int r8 = com.yandex.metrica.impl.ay.a((com.yandex.metrica.impl.ob.en) r8)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            com.yandex.metrica.impl.ob.le r9 = r12.u     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            java.lang.String r9 = r9.y()     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            com.yandex.metrica.impl.ob.ka$c$e$b r5 = com.yandex.metrica.impl.ay.a(r9, r8, r5)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            int r8 = r12.o     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            r9 = 1
            r10 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r9 = com.yandex.metrica.impl.ob.b.c((int) r9, (long) r10)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            int r8 = r8 + r9
            r12.o = r8     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            int r8 = r12.o     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            r9 = 2
            int r9 = com.yandex.metrica.impl.ob.b.b((int) r9, (com.yandex.metrica.impl.ob.e) r5)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            int r8 = r8 + r9
            r12.o = r8     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            int r8 = r12.o     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            r9 = 250880(0x3d400, float:3.51558E-40)
            if (r8 >= r9) goto L_0x00a6
            com.yandex.metrica.impl.bc$b r5 = r12.a((long) r6, (com.yandex.metrica.impl.ob.ka.c.e.b) r5)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            if (r5 == 0) goto L_0x0014
            if (r3 != 0) goto L_0x0079
            com.yandex.metrica.impl.b$a r3 = r5.f5746b     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            goto L_0x0081
        L_0x0079:
            com.yandex.metrica.impl.b$a r8 = r5.f5746b     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            boolean r8 = r3.equals(r8)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            if (r8 == 0) goto L_0x00a6
        L_0x0081:
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            r1.add(r6)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            com.yandex.metrica.impl.ob.ka$c$e r6 = r5.f5745a     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            r0.add(r6)     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            org.a.c r6 = new org.a.c     // Catch:{ b -> 0x0097 }
            com.yandex.metrica.impl.b$a r7 = r5.f5746b     // Catch:{ b -> 0x0097 }
            java.lang.String r7 = r7.f5735a     // Catch:{ b -> 0x0097 }
            r6.<init>((java.lang.String) r7)     // Catch:{ b -> 0x0097 }
            r2 = r6
        L_0x0097:
            boolean r5 = r5.c     // Catch:{ Exception -> 0x00a6, all -> 0x009d }
            if (r5 != 0) goto L_0x00a6
            goto L_0x0014
        L_0x009d:
            r0 = move-exception
            goto L_0x00a1
        L_0x009f:
            r0 = move-exception
            r4 = r3
        L_0x00a1:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r4)
            throw r0
        L_0x00a5:
            r4 = r3
        L_0x00a6:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r4)
            com.yandex.metrica.impl.bc$c r3 = new com.yandex.metrica.impl.bc$c
            r3.<init>(r0, r1, r2)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.bc.H():com.yandex.metrica.impl.bc$c");
    }

    private static int a(b.a aVar) {
        try {
            ka.c.a[] a2 = a(new org.a.c(aVar.f5735a));
            if (a2 == null) {
                return 0;
            }
            int i = 0;
            for (ka.c.a b2 : a2) {
                i += com.yandex.metrica.impl.ob.b.b(7, (e) b2);
            }
            return i;
        } catch (org.a.b unused) {
            return 0;
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x013b, code lost:
        r12 = r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0192, code lost:
        r11 = th;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0192 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:3:0x0015] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.yandex.metrica.impl.bc.b a(long r10, com.yandex.metrica.impl.ob.ka.c.e.b r12) {
        /*
            r9 = this;
            com.yandex.metrica.impl.ob.ka$c$e r0 = new com.yandex.metrica.impl.ob.ka$c$e
            r0.<init>()
            r0.f6197b = r10
            r0.c = r12
            int r12 = r12.d
            com.yandex.metrica.impl.ob.en r12 = com.yandex.metrica.impl.ay.a((int) r12)
            r1 = 0
            r2 = 0
            android.database.Cursor r10 = r9.a((long) r10, (com.yandex.metrica.impl.ob.en) r12)     // Catch:{ Exception -> 0x019c, all -> 0x0196 }
            java.util.ArrayList r11 = new java.util.ArrayList     // Catch:{ Exception -> 0x0194, all -> 0x0192 }
            r11.<init>()     // Catch:{ Exception -> 0x0194, all -> 0x0192 }
            r12 = r1
        L_0x001b:
            boolean r3 = r10.moveToNext()     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            if (r3 == 0) goto L_0x0179
            android.content.ContentValues r3 = new android.content.ContentValues     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            r3.<init>()     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ob.nc.a((android.database.Cursor) r10, (android.content.ContentValues) r3)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r4 = "type"
            java.lang.Integer r4 = r3.getAsInteger(r4)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            int r4 = r4.intValue()     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ob.le r5 = r9.u     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            boolean r5 = r5.I()     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = com.yandex.metrica.impl.ay.c.a(r4, r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "custom_type"
            java.lang.Integer r5 = r3.getAsInteger(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.b((java.lang.Integer) r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "name"
            java.lang.String r5 = r3.getAsString(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.a((java.lang.String) r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "value"
            java.lang.String r5 = r3.getAsString(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.b((java.lang.String) r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "time"
            java.lang.Long r5 = r3.getAsLong(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            long r5 = r5.longValue()     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.a((long) r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "number"
            java.lang.Integer r5 = r3.getAsInteger(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            int r5 = r5.intValue()     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.a((int) r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "cell_info"
            java.lang.String r5 = r3.getAsString(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.e(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "location_info"
            java.lang.String r5 = r3.getAsString(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.c((java.lang.String) r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "wifi_network_info"
            java.lang.String r5 = r3.getAsString(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.d(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "error_environment"
            java.lang.String r5 = r3.getAsString(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.g(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "user_info"
            java.lang.String r5 = r3.getAsString(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.h(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "truncated"
            java.lang.Integer r5 = r3.getAsInteger(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            int r5 = r5.intValue()     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.b((int) r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "connection_type"
            java.lang.Integer r5 = r3.getAsInteger(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            int r5 = r5.intValue()     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.c((int) r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "cellular_connection_type"
            java.lang.String r5 = r3.getAsString(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.i(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "wifi_access_point"
            java.lang.String r5 = r3.getAsString(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.f(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "profile_id"
            java.lang.String r5 = r3.getAsString(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.j(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "encrypting_mode"
            java.lang.Integer r5 = r3.getAsInteger(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            int r5 = r5.intValue()     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ob.oe r5 = com.yandex.metrica.impl.ob.oe.a(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.a((com.yandex.metrica.impl.ob.oe) r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r5 = "first_occurrence_status"
            java.lang.Integer r5 = r3.getAsInteger(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.t r5 = com.yandex.metrica.impl.t.a(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ay$c r4 = r4.a((com.yandex.metrica.impl.t) r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.Integer r5 = r4.c()     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            if (r5 == 0) goto L_0x010e
            com.yandex.metrica.impl.ob.ka$c$e$a r4 = r4.e()     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            goto L_0x010f
        L_0x010e:
            r4 = r1
        L_0x010f:
            if (r4 == 0) goto L_0x001b
            com.yandex.metrica.impl.b$a r5 = new com.yandex.metrica.impl.b$a     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r6 = "app_environment"
            java.lang.String r6 = r3.getAsString(r6)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.String r7 = "app_environment_revision"
            java.lang.Long r3 = r3.getAsLong(r7)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            long r7 = r3.longValue()     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            r5.<init>(r6, r7)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            if (r12 != 0) goto L_0x013d
            int r12 = r9.p     // Catch:{ Exception -> 0x013b, all -> 0x0192 }
            if (r12 >= 0) goto L_0x0139
            int r12 = a((com.yandex.metrica.impl.b.a) r5)     // Catch:{ Exception -> 0x013b, all -> 0x0192 }
            r9.p = r12     // Catch:{ Exception -> 0x013b, all -> 0x0192 }
            int r12 = r9.o     // Catch:{ Exception -> 0x013b, all -> 0x0192 }
            int r3 = r9.p     // Catch:{ Exception -> 0x013b, all -> 0x0192 }
            int r12 = r12 + r3
            r9.o = r12     // Catch:{ Exception -> 0x013b, all -> 0x0192 }
        L_0x0139:
            r12 = r5
            goto L_0x0145
        L_0x013b:
            r12 = r5
            goto L_0x019e
        L_0x013d:
            boolean r3 = r12.equals(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            if (r3 != 0) goto L_0x0145
            r2 = 1
            goto L_0x0179
        L_0x0145:
            com.yandex.metrica.impl.ob.os<byte[]> r3 = r9.s     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            byte[] r5 = r4.f     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.Object r3 = r3.a(r5)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            byte[] r3 = (byte[]) r3     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            byte[] r5 = r4.f     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            boolean r5 = r5.equals(r3)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            if (r5 != 0) goto L_0x0163
            r4.f = r3     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            int r5 = r4.k     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            byte[] r6 = r4.f     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            int r6 = r6.length     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            int r3 = r3.length     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            int r6 = r6 - r3
            int r5 = r5 + r6
            r4.k = r5     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
        L_0x0163:
            int r3 = r9.o     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            r5 = 3
            int r5 = com.yandex.metrica.impl.ob.b.b((int) r5, (com.yandex.metrica.impl.ob.e) r4)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            int r3 = r3 + r5
            r9.o = r3     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            int r3 = r9.o     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            r5 = 250880(0x3d400, float:3.51558E-40)
            if (r3 >= r5) goto L_0x0179
            r11.add(r4)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            goto L_0x001b
        L_0x0179:
            int r3 = r11.size()     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            if (r3 <= 0) goto L_0x018e
            int r1 = r11.size()     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ob.ka$c$e$a[] r1 = new com.yandex.metrica.impl.ob.ka.c.e.a[r1]     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            java.lang.Object[] r11 = r11.toArray(r1)     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            com.yandex.metrica.impl.ob.ka$c$e$a[] r11 = (com.yandex.metrica.impl.ob.ka.c.e.a[]) r11     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            r0.d = r11     // Catch:{ Exception -> 0x019e, all -> 0x0192 }
            goto L_0x019e
        L_0x018e:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r10)
            return r1
        L_0x0192:
            r11 = move-exception
            goto L_0x0198
        L_0x0194:
            r12 = r1
            goto L_0x019e
        L_0x0196:
            r11 = move-exception
            r10 = r1
        L_0x0198:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r10)
            throw r11
        L_0x019c:
            r10 = r1
            r12 = r10
        L_0x019e:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r10)
            com.yandex.metrica.impl.bc$b r10 = new com.yandex.metrica.impl.bc$b
            r10.<init>(r0, r12, r2)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.bc.a(long, com.yandex.metrica.impl.ob.ka$c$e$b):com.yandex.metrica.impl.bc$b");
    }

    /* access modifiers changed from: protected */
    public Cursor I() {
        return this.m.a((Map<String, String>) this.f5843b);
    }

    /* access modifiers changed from: protected */
    public Cursor a(long j, en enVar) {
        return this.m.a(j, enVar);
    }

    public static a J() {
        return new a();
    }
}
