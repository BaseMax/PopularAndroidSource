package com.yandex.metrica.impl;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import com.google.android.gms.measurement.AppMeasurement;
import com.yandex.metrica.impl.bw;
import com.yandex.metrica.impl.ob.en;
import com.yandex.metrica.impl.ob.ka;
import com.yandex.metrica.impl.ob.kb;
import com.yandex.metrica.impl.ob.kw;
import com.yandex.metrica.impl.ob.mu;
import com.yandex.metrica.impl.ob.ne;
import com.yandex.metrica.impl.ob.nr;
import com.yandex.metrica.impl.ob.ns;
import com.yandex.metrica.impl.ob.od;
import com.yandex.metrica.impl.ob.oe;
import com.yandex.metrica.impl.s;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class ay {

    /* renamed from: a  reason: collision with root package name */
    private static Map<en, Integer> f5728a;

    /* renamed from: b  reason: collision with root package name */
    private static SparseArray<en> f5729b;
    /* access modifiers changed from: private */
    public static Map<t, Integer> c;

    /* renamed from: com.yandex.metrica.impl.ay$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5730a = new int[s.a.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|8) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        static {
            /*
                com.yandex.metrica.impl.s$a[] r0 = com.yandex.metrica.impl.s.a.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5730a = r0
                int[] r0 = f5730a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.yandex.metrica.impl.s$a r1 = com.yandex.metrica.impl.s.a.EVENT_TYPE_INIT     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5730a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.yandex.metrica.impl.s$a r1 = com.yandex.metrica.impl.s.a.EVENT_TYPE_FIRST_ACTIVATION     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f5730a     // Catch:{ NoSuchFieldError -> 0x002a }
                com.yandex.metrica.impl.s$a r1 = com.yandex.metrica.impl.s.a.EVENT_TYPE_APP_UPDATE     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ay.AnonymousClass1.<clinit>():void");
        }
    }

    static class a extends e {
        /* access modifiers changed from: protected */
        public String a() {
            return "";
        }

        a() {
        }
    }

    static class b extends c {
        b() {
        }

        /* access modifiers changed from: protected */
        public byte[] b() {
            return Base64.decode(this.f5732b, 0);
        }
    }

    static class c {
        private static final Map<s.a, Class<?>> s;
        private static final Map<s.a, Integer> t;

        /* renamed from: a  reason: collision with root package name */
        protected String f5731a;

        /* renamed from: b  reason: collision with root package name */
        protected String f5732b;
        protected int c;
        protected long d;
        protected String e;
        protected String f;
        protected String g;
        protected Integer h;
        protected Integer i;
        protected String j;
        protected String k;
        protected int l;
        protected int m;
        protected String n;
        protected String o;
        protected String p;
        protected oe q;
        protected t r;

        /* access modifiers changed from: protected */
        public int f() {
            return 0;
        }

        static {
            HashMap hashMap = new HashMap();
            hashMap.put(s.a.EVENT_TYPE_REGULAR, e.class);
            hashMap.put(s.a.EVENT_TYPE_SEND_REFERRER, j.class);
            hashMap.put(s.a.EVENT_TYPE_ALIVE, f.class);
            hashMap.put(s.a.EVENT_TYPE_NATIVE_CRASH, i.class);
            hashMap.put(s.a.EVENT_TYPE_EXCEPTION_USER, e.class);
            hashMap.put(s.a.EVENT_TYPE_IDENTITY, h.class);
            hashMap.put(s.a.EVENT_TYPE_STATBOX, e.class);
            hashMap.put(s.a.EVENT_TYPE_SET_USER_INFO, e.class);
            hashMap.put(s.a.EVENT_TYPE_REPORT_USER_INFO, e.class);
            hashMap.put(s.a.EVENT_TYPE_EXCEPTION_UNHANDLED, e.class);
            hashMap.put(s.a.EVENT_TYPE_START, f.class);
            hashMap.put(s.a.EVENT_TYPE_CUSTOM_EVENT, d.class);
            hashMap.put(s.a.EVENT_TYPE_APP_OPEN, e.class);
            hashMap.put(s.a.EVENT_TYPE_PERMISSIONS, a.class);
            hashMap.put(s.a.EVENT_TYPE_APP_FEATURES, a.class);
            hashMap.put(s.a.EVENT_TYPE_SEND_USER_PROFILE, b.class);
            hashMap.put(s.a.EVENT_TYPE_SEND_REVENUE_EVENT, b.class);
            s = Collections.unmodifiableMap(hashMap);
            HashMap hashMap2 = new HashMap();
            hashMap2.put(s.a.EVENT_TYPE_INIT, 1);
            hashMap2.put(s.a.EVENT_TYPE_REGULAR, 4);
            hashMap2.put(s.a.EVENT_TYPE_SEND_REFERRER, 5);
            hashMap2.put(s.a.EVENT_TYPE_ALIVE, 7);
            hashMap2.put(s.a.EVENT_TYPE_EXCEPTION_UNHANDLED, 3);
            hashMap2.put(s.a.EVENT_TYPE_NATIVE_CRASH, 3);
            hashMap2.put(s.a.EVENT_TYPE_EXCEPTION_USER, 6);
            hashMap2.put(s.a.EVENT_TYPE_IDENTITY, 8);
            hashMap2.put(s.a.EVENT_TYPE_STATBOX, 11);
            hashMap2.put(s.a.EVENT_TYPE_SET_USER_INFO, 12);
            hashMap2.put(s.a.EVENT_TYPE_REPORT_USER_INFO, 12);
            hashMap2.put(s.a.EVENT_TYPE_FIRST_ACTIVATION, 13);
            hashMap2.put(s.a.EVENT_TYPE_START, 2);
            hashMap2.put(s.a.EVENT_TYPE_APP_OPEN, 16);
            hashMap2.put(s.a.EVENT_TYPE_APP_UPDATE, 17);
            hashMap2.put(s.a.EVENT_TYPE_PERMISSIONS, 18);
            hashMap2.put(s.a.EVENT_TYPE_APP_FEATURES, 19);
            hashMap2.put(s.a.EVENT_TYPE_SEND_USER_PROFILE, 20);
            hashMap2.put(s.a.EVENT_TYPE_SEND_REVENUE_EVENT, 21);
            t = Collections.unmodifiableMap(hashMap2);
        }

        static c a(int i2, boolean z) {
            c cVar;
            s.a a2 = s.a.a(i2);
            int i3 = AnonymousClass1.f5730a[a2.ordinal()];
            Class cls = (i3 == 1 || i3 == 2 || i3 == 3) ? z ? e.class : g.class : s.get(a2);
            Integer num = t.get(a2);
            try {
                cVar = (c) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Exception unused) {
                cVar = new c();
            }
            return cVar.a(num);
        }

        /* access modifiers changed from: package-private */
        public c a(String str) {
            this.f5731a = str;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c b(String str) {
            this.f5732b = str;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c a(int i2) {
            this.c = i2;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c a(long j2) {
            this.d = j2;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c c(String str) {
            this.e = str;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c d(String str) {
            this.g = str;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c e(String str) {
            this.f = str;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c a(Integer num) {
            this.h = num;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c f(String str) {
            this.o = str;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c b(Integer num) {
            this.i = num;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c g(String str) {
            this.j = str;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c h(String str) {
            this.k = str;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c b(int i2) {
            this.l = i2;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c c(int i2) {
            this.m = i2;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c i(String str) {
            this.n = str;
            return this;
        }

        public c j(String str) {
            this.p = str;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c a(oe oeVar) {
            this.q = oeVar;
            return this;
        }

        /* access modifiers changed from: package-private */
        public c a(t tVar) {
            this.r = tVar;
            return this;
        }

        /* access modifiers changed from: protected */
        public String a() {
            return this.f5731a;
        }

        /* access modifiers changed from: protected */
        public byte[] b() {
            String str = this.f5732b;
            return str == null ? new byte[0] : bt.c(str);
        }

        /* access modifiers changed from: protected */
        public Integer c() {
            return this.h;
        }

        /* access modifiers changed from: protected */
        public String d() {
            return this.j;
        }

        /* access modifiers changed from: package-private */
        public ka.c.e.a e() {
            ka.c.e.a aVar = new ka.c.e.a();
            ka.c.e.a.b a2 = ay.a(this.m, this.n, this.g, this.f, this.o);
            ka.c.b d2 = ay.d(this.e);
            ka.c.e.a.C0113a f2 = ay.f(this.k);
            if (a2 != null) {
                aVar.h = a2;
            }
            if (d2 != null) {
                aVar.g = d2;
            }
            if (a() != null) {
                aVar.e = a();
            }
            if (b() != null) {
                aVar.f = b();
            }
            if (d() != null) {
                aVar.i = d();
            }
            if (f2 != null) {
                aVar.j = f2;
            }
            aVar.d = c().intValue();
            aVar.f6198b = (long) this.c;
            aVar.c = this.d;
            aVar.k = this.l;
            aVar.l = f();
            aVar.m = ay.e(this.e);
            String str = this.p;
            aVar.n = str == null ? new byte[0] : str.getBytes();
            Integer num = (Integer) ay.c.get(this.r);
            if (num != null) {
                aVar.o = num.intValue();
            }
            return aVar;
        }
    }

    static class d extends e {
        d() {
        }

        /* access modifiers changed from: protected */
        public Integer c() {
            return this.i;
        }
    }

    static class e extends c {
        private od s;

        e() {
            this(new od(v.a().b()));
        }

        e(od odVar) {
            this.s = odVar;
        }

        /* access modifiers changed from: protected */
        public byte[] b() {
            return this.s.a(this.q).a(super.b());
        }
    }

    static class f extends c {
        /* access modifiers changed from: protected */
        public String a() {
            return "";
        }

        /* access modifiers changed from: protected */
        public byte[] b() {
            return new byte[0];
        }

        f() {
        }
    }

    static class g extends c {
        /* access modifiers changed from: protected */
        public byte[] b() {
            return new byte[0];
        }

        g() {
        }
    }

    static class h extends e {
        h() {
        }

        public int f() {
            return this.q == oe.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER ? 1 : 0;
        }
    }

    static class i extends c {
        i() {
        }

        /* access modifiers changed from: protected */
        public byte[] b() {
            return bt.c(w.c(this.f5732b));
        }
    }

    static class j extends c {
        j() {
        }

        /* access modifiers changed from: protected */
        public byte[] b() {
            try {
                kw a2 = kw.a(Base64.decode(this.f5732b, 0));
                kb kbVar = new kb();
                kbVar.f6206b = a2.f6342a == null ? new byte[0] : a2.f6342a.getBytes();
                kbVar.d = a2.f6343b;
                kbVar.c = a2.c;
                return com.yandex.metrica.impl.ob.e.a((com.yandex.metrica.impl.ob.e) kbVar);
            } catch (com.yandex.metrica.impl.ob.d unused) {
                return new byte[0];
            }
        }
    }

    public static void a() {
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(en.FOREGROUND, 0);
        hashMap.put(en.BACKGROUND, 1);
        f5728a = Collections.unmodifiableMap(hashMap);
        SparseArray<en> sparseArray = new SparseArray<>();
        sparseArray.put(0, en.FOREGROUND);
        sparseArray.put(1, en.BACKGROUND);
        f5729b = sparseArray;
        HashMap hashMap2 = new HashMap();
        hashMap2.put(t.FIRST_OCCURRENCE, 1);
        hashMap2.put(t.NON_FIRST_OCCURENCE, 0);
        hashMap2.put(t.UNKNOWN, -1);
        c = Collections.unmodifiableMap(hashMap2);
    }

    public static ka.c.g a(ContentValues contentValues) {
        Long asLong = contentValues.getAsLong("start_time");
        Long asLong2 = contentValues.getAsLong("server_time_offset");
        Boolean asBoolean = contentValues.getAsBoolean("obtained_before_first_sync");
        long longValue = asLong.longValue();
        ka.c.g gVar = new ka.c.g();
        gVar.f6204b = longValue;
        gVar.c = nr.a(longValue);
        if (asLong2 != null) {
            gVar.d = asLong2.longValue();
        }
        if (asBoolean != null) {
            gVar.e = asBoolean.booleanValue();
        }
        return gVar;
    }

    public static ka.c.f a(mu muVar) {
        ka.c.f fVar = new ka.c.f();
        if (muVar.a() != null) {
            fVar.f6203b = muVar.a().intValue();
        }
        if (muVar.b() != null) {
            fVar.c = muVar.b().intValue();
        }
        if (!TextUtils.isEmpty(muVar.d())) {
            fVar.d = muVar.d();
        }
        fVar.e = muVar.c();
        if (!TextUtils.isEmpty(muVar.e())) {
            fVar.f = muVar.e();
        }
        return fVar;
    }

    public static en a(int i2) {
        return f5729b.get(i2);
    }

    public static ka.d[] a(String str) {
        try {
            return a(new org.a.a(str));
        } catch (Exception unused) {
            return null;
        }
    }

    public static ka.d[] a(org.a.a aVar) {
        try {
            ka.d[] dVarArr = new ka.d[aVar.length()];
            int i2 = 0;
            while (i2 < aVar.length()) {
                try {
                    dVarArr[i2] = a(aVar.getJSONObject(i2));
                    i2++;
                } catch (Exception unused) {
                    return dVarArr;
                }
            }
            return dVarArr;
        } catch (Exception unused2) {
            return null;
        }
    }

    public static ka.d a(org.a.c cVar) throws org.a.b {
        try {
            ka.d dVar = new ka.d();
            dVar.f6205b = cVar.getString("mac");
            dVar.c = cVar.getInt("signal_strength");
            dVar.d = cVar.getString("ssid");
            dVar.e = cVar.optBoolean("is_connected");
            return dVar;
        } catch (Exception unused) {
            ka.d dVar2 = new ka.d();
            dVar2.f6205b = cVar.getString("mac");
            return dVar2;
        }
    }

    static ka.c.e.a.b.C0114a b(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                org.a.c cVar = new org.a.c(str);
                ka.c.e.a.b.C0114a aVar = new ka.c.e.a.b.C0114a();
                aVar.f6201b = cVar.optString("ssid");
                int optInt = cVar.optInt("state", -1);
                if (!(optInt == 0 || optInt == 1 || optInt == 2)) {
                    if (optInt == 3) {
                        aVar.c = 2;
                    } else if (optInt != 4) {
                    }
                    return aVar;
                }
                aVar.c = 1;
                return aVar;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static ka.c.e.b a(String str, int i2, ka.c.g gVar) {
        ka.c.e.b bVar = new ka.c.e.b();
        bVar.f6202b = gVar;
        bVar.c = str;
        bVar.d = i2;
        return bVar;
    }

    static int a(en enVar) {
        return f5728a.get(enVar).intValue();
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(4:5|6|7|9) */
    /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:?, code lost:
        return new com.yandex.metrica.impl.ob.ka.a[]{b(new org.a.c(r3))};
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0011 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.yandex.metrica.impl.ob.ka.a[] c(java.lang.String r3) {
        /*
            r0 = 0
            boolean r1 = android.text.TextUtils.isEmpty(r3)     // Catch:{ b -> 0x0011 }
            if (r1 != 0) goto L_0x0021
            org.a.a r1 = new org.a.a     // Catch:{ b -> 0x0011 }
            r1.<init>((java.lang.String) r3)     // Catch:{ b -> 0x0011 }
            com.yandex.metrica.impl.ob.ka$a[] r0 = b((org.a.a) r1)     // Catch:{ b -> 0x0011 }
            goto L_0x0021
        L_0x0011:
            org.a.c r1 = new org.a.c     // Catch:{ Exception -> 0x0021 }
            r1.<init>((java.lang.String) r3)     // Catch:{ Exception -> 0x0021 }
            r3 = 1
            com.yandex.metrica.impl.ob.ka$a[] r3 = new com.yandex.metrica.impl.ob.ka.a[r3]     // Catch:{ Exception -> 0x0021 }
            r2 = 0
            com.yandex.metrica.impl.ob.ka$a r1 = b((org.a.c) r1)     // Catch:{ Exception -> 0x0021 }
            r3[r2] = r1     // Catch:{ Exception -> 0x0021 }
            r0 = r3
        L_0x0021:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ay.c(java.lang.String):com.yandex.metrica.impl.ob.ka$a[]");
    }

    public static ka.a[] b(org.a.a aVar) {
        try {
            ka.a[] aVarArr = new ka.a[aVar.length()];
            int i2 = 0;
            while (i2 < aVar.length()) {
                try {
                    org.a.c jSONObject = aVar.getJSONObject(i2);
                    if (jSONObject != null) {
                        aVarArr[i2] = b(jSONObject);
                    }
                    i2++;
                } catch (Exception unused) {
                    return aVarArr;
                }
            }
            return aVarArr;
        } catch (Exception unused2) {
            return null;
        }
    }

    static ka.a b(org.a.c cVar) {
        ka.a aVar = new ka.a();
        if (cVar.has("signal_strength")) {
            int optInt = cVar.optInt("signal_strength");
            if (optInt != -1) {
                aVar.c = optInt;
            }
        }
        if (cVar.has("cell_id")) {
            aVar.f6187b = cVar.optInt("cell_id");
        }
        if (cVar.has("lac")) {
            aVar.d = cVar.optInt("lac");
        }
        if (cVar.has("country_code")) {
            aVar.e = cVar.optInt("country_code");
        }
        if (cVar.has("operator_id")) {
            aVar.f = cVar.optInt("operator_id");
        }
        if (cVar.has("operator_name")) {
            aVar.g = cVar.optString("operator_name");
        }
        if (cVar.has("is_connected")) {
            aVar.h = cVar.optBoolean("is_connected");
        }
        aVar.i = cVar.optInt("cell_type", 0);
        if (cVar.has("pci")) {
            aVar.j = cVar.optInt("pci");
        }
        return aVar;
    }

    public static ka.c.b d(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                ne.a aVar = new ne.a(str);
                if (aVar.b("lon") && aVar.b("lat")) {
                    ka.c.b bVar = new ka.c.b();
                    try {
                        bVar.c = aVar.getDouble("lon");
                        bVar.f6193b = aVar.getDouble("lat");
                        bVar.h = aVar.optInt("altitude");
                        bVar.f = aVar.optInt("direction");
                        bVar.e = aVar.optInt("precision");
                        bVar.g = aVar.optInt("speed");
                        bVar.d = aVar.optLong(AppMeasurement.d.TIMESTAMP) / 1000;
                        if (!aVar.b("provider")) {
                            return bVar;
                        }
                        String a2 = aVar.a("provider");
                        if ("gps".equals(a2)) {
                            bVar.i = 1;
                            return bVar;
                        } else if (!"network".equals(a2)) {
                            return bVar;
                        } else {
                            bVar.i = 2;
                            return bVar;
                        }
                    } catch (Exception unused) {
                        return bVar;
                    }
                }
            }
        } catch (Exception unused2) {
        }
        return null;
    }

    static int e(String str) {
        try {
            ne.a aVar = new ne.a(str);
            if (aVar.b("enabled")) {
                return aVar.getBoolean("enabled") ? 1 : 0;
            }
            return -1;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static ka.c.e.a.b a(int i2, String str, String str2, String str3, String str4) {
        ka.c.e.a.b bVar = new ka.c.e.a.b();
        bVar.d = i2;
        if (str != null) {
            bVar.e = str;
        }
        ka.a[] c2 = c(str3);
        if (c2 != null) {
            bVar.f6200b = c2;
        }
        bVar.c = a(str2);
        if (!TextUtils.isEmpty(str4)) {
            bVar.f = b(str4);
        }
        return bVar;
    }

    public static ka.c.e.a.C0113a f(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                com.yandex.metrica.d a2 = ns.a(str);
                ka.c.e.a.C0113a aVar = new ka.c.e.a.C0113a();
                aVar.f6199b = a2.a();
                if (!TextUtils.isEmpty(a2.b())) {
                    aVar.c = a2.b();
                }
                if (!bv.a((Map) a2.c())) {
                    aVar.d = ne.a((Map) a2.c());
                }
                return aVar;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static ka.c.C0112c[] a(Context context) {
        List<bw.a> b2 = bw.a(context).b();
        if (bv.a((Collection) b2)) {
            return null;
        }
        ka.c.C0112c[] cVarArr = new ka.c.C0112c[b2.size()];
        for (int i2 = 0; i2 < b2.size(); i2++) {
            ka.c.C0112c cVar = new ka.c.C0112c();
            bw.a aVar = b2.get(i2);
            cVar.f6194b = aVar.f5802a;
            cVar.c = aVar.f5803b;
            cVarArr[i2] = cVar;
        }
        return cVarArr;
    }
}
