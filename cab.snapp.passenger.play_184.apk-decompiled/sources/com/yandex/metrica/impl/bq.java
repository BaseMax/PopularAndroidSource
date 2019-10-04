package com.yandex.metrica.impl;

import android.util.Pair;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.yandex.metrica.impl.ob.hl;
import com.yandex.metrica.impl.ob.hq;
import com.yandex.metrica.impl.ob.kh;
import com.yandex.metrica.impl.ob.lp;
import com.yandex.metrica.impl.ob.lr;
import com.yandex.metrica.impl.ob.mc;
import com.yandex.metrica.impl.ob.ne;
import com.yandex.metrica.impl.ob.no;
import com.yandex.metrica.impl.ob.nt;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.a.c;

public class bq {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, a.C0107a> f5784a = Collections.unmodifiableMap(new HashMap<String, a.C0107a>() {
        {
            put("wifi", a.C0107a.WIFI);
            put("cell", a.C0107a.CELL);
        }
    });

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f5785a;

        /* renamed from: b  reason: collision with root package name */
        public final String f5786b;
        public final String c;
        public final List<Pair<String, String>> d;
        public final Long e;
        public final List<C0107a> f;

        /* renamed from: com.yandex.metrica.impl.bq$a$a  reason: collision with other inner class name */
        public enum C0107a {
            WIFI,
            CELL
        }

        public a(String str, String str2, String str3, List<Pair<String, String>> list, Long l, List<C0107a> list2) {
            this.f5785a = str;
            this.f5786b = str2;
            this.c = str3;
            this.d = Collections.unmodifiableList(list);
            this.e = l;
            this.f = list2;
        }
    }

    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private lp.a f5789a = new lp.a();

        /* renamed from: b  reason: collision with root package name */
        private a f5790b;
        private boolean c;
        /* access modifiers changed from: private */
        public boolean d;
        /* access modifiers changed from: private */
        public boolean e;
        private List<String> f;
        private String g;
        private List<String> h;
        private String i;
        private List<String> j;
        private String k;
        private String l;
        private String m;
        private String n;
        private lr o = null;
        /* access modifiers changed from: private */
        public hq p;
        /* access modifiers changed from: private */
        public hl q;
        private Long r;
        private List<a> s;
        private String t;
        private List<String> u;
        private mc v;

        public enum a {
            BAD,
            OK
        }

        public lp a() {
            return this.f5789a.a();
        }

        public lp.a b() {
            return this.f5789a;
        }

        /* access modifiers changed from: package-private */
        public void a(boolean z) {
            this.f5789a.a(z);
        }

        /* access modifiers changed from: package-private */
        public void b(boolean z) {
            this.f5789a.b(z);
        }

        /* access modifiers changed from: package-private */
        public void c(boolean z) {
            this.d = z;
        }

        /* access modifiers changed from: package-private */
        public void d(boolean z) {
            this.e = z;
        }

        /* access modifiers changed from: package-private */
        public void a(List<String> list) {
            this.f = list;
        }

        public List<String> c() {
            return this.f;
        }

        /* access modifiers changed from: package-private */
        public void a(String str) {
            this.g = str;
        }

        public String d() {
            return this.g;
        }

        /* access modifiers changed from: package-private */
        public void b(List<String> list) {
            this.h = list;
        }

        public List<String> e() {
            return this.h;
        }

        /* access modifiers changed from: package-private */
        public void b(String str) {
            this.i = str;
        }

        public String f() {
            return this.i;
        }

        public void c(List<String> list) {
            this.j = list;
        }

        public List<String> g() {
            return this.j;
        }

        /* access modifiers changed from: package-private */
        public void c(String str) {
            this.k = str;
        }

        public String h() {
            return this.k;
        }

        /* access modifiers changed from: package-private */
        public void d(String str) {
            this.l = str;
        }

        public String i() {
            return this.l;
        }

        /* access modifiers changed from: package-private */
        public void e(String str) {
            this.m = str;
        }

        public String j() {
            return this.m;
        }

        /* access modifiers changed from: package-private */
        public void f(String str) {
            this.n = str;
        }

        public String k() {
            return this.n;
        }

        /* access modifiers changed from: package-private */
        public void a(a aVar) {
            this.f5790b = aVar;
        }

        public a l() {
            return this.f5790b;
        }

        public boolean m() {
            return this.c;
        }

        public void e(boolean z) {
            this.c = z;
        }

        /* access modifiers changed from: package-private */
        public void a(lr lrVar) {
            this.o = lrVar;
        }

        public lr n() {
            return this.o;
        }

        public hq o() {
            return this.p;
        }

        public hl p() {
            return this.q;
        }

        public void f(boolean z) {
            this.f5789a.c(z);
        }

        public void g(boolean z) {
            this.f5789a.d(z);
        }

        public void a(Long l2) {
            this.r = l2;
        }

        public Long q() {
            return this.r;
        }

        public void d(List<a> list) {
            this.s = list;
        }

        public List<a> r() {
            return this.s;
        }

        public String s() {
            return this.t;
        }

        public void g(String str) {
            this.t = str;
        }

        public List<String> t() {
            return this.u;
        }

        public void e(List<String> list) {
            this.u = list;
        }

        public mc u() {
            return this.v;
        }

        public void a(mc mcVar) {
            this.v = mcVar;
        }
    }

    private static String a(c cVar, String str) {
        try {
            return cVar.getJSONObject(str).getString(FirebaseAnalytics.b.VALUE);
        } catch (Exception unused) {
            return "";
        }
    }

    private static String b(c cVar, String str) {
        try {
            return cVar.getJSONObject(str).getJSONArray("urls").getString(0);
        } catch (Exception unused) {
            return "";
        }
    }

    private static List<String> c(c cVar, String str) {
        try {
            org.a.a jSONArray = cVar.getJSONObject(str).getJSONArray("urls");
            if (jSONArray == null || jSONArray.length() <= 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList(jSONArray.length());
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.getString(i));
            }
            return arrayList;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(23:1|2|3|(3:5|6|7)(1:8)|9|(12:11|(1:13)|14|(1:16)|17|(1:19)|20|(1:22)|23|(1:25)|26|(1:28))|29|(1:31)|32|33|(2:35|36)|37|(2:39|(1:43))|44|(1:46)|47|(3:49|50|51)|52|53|(1:55)|56|57|58) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:52:0x020f */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x021f A[Catch:{ Exception -> 0x0241 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.yandex.metrica.impl.bq.b a(byte[] r10) {
        /*
            r9 = this;
            java.lang.String r0 = "list"
            com.yandex.metrica.impl.bq$b r1 = new com.yandex.metrica.impl.bq$b
            r1.<init>()
            com.yandex.metrica.impl.ob.ne$a r2 = new com.yandex.metrica.impl.ob.ne$a     // Catch:{ Exception -> 0x0241 }
            java.lang.String r3 = new java.lang.String     // Catch:{ Exception -> 0x0241 }
            java.lang.String r4 = "UTF-8"
            r3.<init>(r10, r4)     // Catch:{ Exception -> 0x0241 }
            r2.<init>(r3)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r10 = "device_id"
            org.a.c r10 = r2.optJSONObject(r10)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r3 = "value"
            java.lang.String r4 = ""
            if (r10 == 0) goto L_0x002a
            java.lang.String r5 = "hash"
            java.lang.String r5 = r10.optString(r5)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r10 = r10.optString(r3)     // Catch:{ Exception -> 0x0241 }
            goto L_0x002c
        L_0x002a:
            r10 = r4
            r5 = r10
        L_0x002c:
            r1.c((java.lang.String) r10)     // Catch:{ Exception -> 0x0241 }
            r1.d((java.lang.String) r5)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r10 = "uuid"
            java.lang.String r10 = a((org.a.c) r2, (java.lang.String) r10)     // Catch:{ Exception -> 0x0241 }
            r1.e((java.lang.String) r10)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r10 = "query_hosts"
            org.a.c r5 = new org.a.c     // Catch:{ Exception -> 0x0241 }
            r5.<init>()     // Catch:{ Exception -> 0x0241 }
            java.lang.Object r10 = r2.a(r10, r5)     // Catch:{ Exception -> 0x0241 }
            org.a.c r10 = (org.a.c) r10     // Catch:{ Exception -> 0x0241 }
            boolean r5 = r10.has(r0)     // Catch:{ Exception -> 0x0241 }
            if (r5 == 0) goto L_0x00ac
            org.a.c r10 = r10.getJSONObject(r0)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r5 = "get_ad"
            java.lang.String r5 = b((org.a.c) r10, (java.lang.String) r5)     // Catch:{ Exception -> 0x0241 }
            boolean r6 = a((java.lang.String) r5)     // Catch:{ Exception -> 0x0241 }
            if (r6 == 0) goto L_0x0061
            r1.a((java.lang.String) r5)     // Catch:{ Exception -> 0x0241 }
        L_0x0061:
            java.lang.String r5 = "report"
            java.util.List r5 = c(r10, r5)     // Catch:{ Exception -> 0x0241 }
            boolean r6 = a((java.util.List<java.lang.String>) r5)     // Catch:{ Exception -> 0x0241 }
            if (r6 == 0) goto L_0x0070
            r1.b((java.util.List<java.lang.String>) r5)     // Catch:{ Exception -> 0x0241 }
        L_0x0070:
            java.lang.String r5 = "report_ad"
            java.lang.String r5 = b((org.a.c) r10, (java.lang.String) r5)     // Catch:{ Exception -> 0x0241 }
            boolean r6 = a((java.lang.String) r5)     // Catch:{ Exception -> 0x0241 }
            if (r6 == 0) goto L_0x007f
            r1.b((java.lang.String) r5)     // Catch:{ Exception -> 0x0241 }
        L_0x007f:
            java.lang.String r5 = "location"
            java.util.List r5 = c(r10, r5)     // Catch:{ Exception -> 0x0241 }
            boolean r6 = a((java.util.List<java.lang.String>) r5)     // Catch:{ Exception -> 0x0241 }
            if (r6 == 0) goto L_0x008e
            r1.c((java.util.List<java.lang.String>) r5)     // Catch:{ Exception -> 0x0241 }
        L_0x008e:
            java.lang.String r5 = "startup"
            java.util.List r5 = c(r10, r5)     // Catch:{ Exception -> 0x0241 }
            boolean r6 = a((java.util.List<java.lang.String>) r5)     // Catch:{ Exception -> 0x0241 }
            if (r6 == 0) goto L_0x009d
            r1.a((java.util.List<java.lang.String>) r5)     // Catch:{ Exception -> 0x0241 }
        L_0x009d:
            java.lang.String r5 = "diagnostic"
            java.util.List r10 = c(r10, r5)     // Catch:{ Exception -> 0x0241 }
            boolean r5 = a((java.util.List<java.lang.String>) r10)     // Catch:{ Exception -> 0x0241 }
            if (r5 == 0) goto L_0x00ac
            r1.e((java.util.List<java.lang.String>) r10)     // Catch:{ Exception -> 0x0241 }
        L_0x00ac:
            java.lang.String r10 = "distribution_customization"
            org.a.c r5 = new org.a.c     // Catch:{ Exception -> 0x0241 }
            r5.<init>()     // Catch:{ Exception -> 0x0241 }
            java.lang.Object r10 = r2.a(r10, r5)     // Catch:{ Exception -> 0x0241 }
            org.a.c r10 = (org.a.c) r10     // Catch:{ Exception -> 0x0241 }
            java.lang.String r5 = "clids"
            org.a.c r10 = r10.optJSONObject(r5)     // Catch:{ Exception -> 0x0241 }
            if (r10 == 0) goto L_0x00c4
            a((com.yandex.metrica.impl.bq.b) r1, (org.a.c) r10)     // Catch:{ Exception -> 0x0241 }
        L_0x00c4:
            java.lang.String r10 = "features"
            org.a.c r5 = new org.a.c     // Catch:{ Exception -> 0x0241 }
            r5.<init>()     // Catch:{ Exception -> 0x0241 }
            java.lang.Object r10 = r2.a(r10, r5)     // Catch:{ Exception -> 0x0241 }
            org.a.c r10 = (org.a.c) r10     // Catch:{ Exception -> 0x0241 }
            r5 = 0
            r1.a((boolean) r5)     // Catch:{ Exception -> 0x0241 }
            r1.b((boolean) r5)     // Catch:{ Exception -> 0x0241 }
            boolean r6 = r10.has(r0)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r7 = "background_location_collection"
            java.lang.String r8 = "foreground_location_collection"
            if (r6 == 0) goto L_0x017b
            org.a.c r10 = r10.getJSONObject(r0)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r0 = "easy_collecting"
            boolean r0 = a(r10, r0, r5)     // Catch:{ Exception -> 0x0241 }
            r1.a((boolean) r0)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r0 = "package_info"
            boolean r0 = a(r10, r0, r5)     // Catch:{ Exception -> 0x0241 }
            r1.b((boolean) r0)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r0 = "socket"
            boolean r0 = a(r10, r0, r5)     // Catch:{ Exception -> 0x0241 }
            r1.e((boolean) r0)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r0 = "permissions_collecting"
            boolean r0 = a(r10, r0, r5)     // Catch:{ Exception -> 0x0241 }
            r1.f((boolean) r0)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r0 = "features_collecting"
            boolean r0 = a(r10, r0, r5)     // Catch:{ Exception -> 0x0241 }
            r1.g((boolean) r0)     // Catch:{ Exception -> 0x0241 }
            boolean r0 = a(r10, r8, r5)     // Catch:{ Exception -> 0x0241 }
            r1.c((boolean) r0)     // Catch:{ Exception -> 0x0241 }
            boolean r0 = a(r10, r7, r5)     // Catch:{ Exception -> 0x0241 }
            r1.d((boolean) r0)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r0 = "telephony_restricted_to_location_tracking"
            a(r10, r0, r5)     // Catch:{ Exception -> 0x0241 }
            com.yandex.metrica.impl.ob.lp$a r0 = r1.b()     // Catch:{ Exception -> 0x0241 }
            java.lang.String r6 = "android_id"
            boolean r6 = a(r10, r6, r5)     // Catch:{ Exception -> 0x0241 }
            r0.e((boolean) r6)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r6 = "google_aid"
            boolean r6 = a(r10, r6, r5)     // Catch:{ Exception -> 0x0241 }
            r0.f((boolean) r6)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r6 = "wifi_around"
            boolean r6 = a(r10, r6, r5)     // Catch:{ Exception -> 0x0241 }
            r0.h((boolean) r6)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r6 = "wifi_connected"
            boolean r6 = a(r10, r6, r5)     // Catch:{ Exception -> 0x0241 }
            r0.i((boolean) r6)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r6 = "own_macs"
            boolean r6 = a(r10, r6, r5)     // Catch:{ Exception -> 0x0241 }
            r0.j((boolean) r6)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r6 = "cells_around"
            boolean r6 = a(r10, r6, r5)     // Catch:{ Exception -> 0x0241 }
            r0.k((boolean) r6)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r6 = "sim_info"
            boolean r6 = a(r10, r6, r5)     // Catch:{ Exception -> 0x0241 }
            r0.l((boolean) r6)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r6 = "sim_imei"
            boolean r6 = a(r10, r6, r5)     // Catch:{ Exception -> 0x0241 }
            r0.m((boolean) r6)     // Catch:{ Exception -> 0x0241 }
            java.lang.String r6 = "access_point"
            boolean r10 = a(r10, r6, r5)     // Catch:{ Exception -> 0x0241 }
            r0.n((boolean) r10)     // Catch:{ Exception -> 0x0241 }
        L_0x017b:
            java.lang.String r10 = "locale"
            org.a.c r10 = r2.optJSONObject(r10)     // Catch:{ Exception -> 0x0241 }
            if (r10 == 0) goto L_0x0197
            java.lang.String r0 = "country"
            org.a.c r10 = r10.optJSONObject(r0)     // Catch:{ Exception -> 0x0241 }
            if (r10 == 0) goto L_0x0197
            java.lang.String r0 = "reliable"
            boolean r0 = r10.optBoolean(r0, r5)     // Catch:{ Exception -> 0x0241 }
            if (r0 == 0) goto L_0x0197
            java.lang.String r4 = r10.optString(r3, r4)     // Catch:{ Exception -> 0x0241 }
        L_0x0197:
            r1.g((java.lang.String) r4)     // Catch:{ Exception -> 0x0241 }
            boolean r10 = r1.m()     // Catch:{ Exception -> 0x0241 }
            if (r10 == 0) goto L_0x01a3
            b((com.yandex.metrica.impl.bq.b) r1, (com.yandex.metrica.impl.ob.ne.a) r2)     // Catch:{ Exception -> 0x0241 }
        L_0x01a3:
            org.a.c r10 = r2.optJSONObject(r8)     // Catch:{ Exception -> 0x0241 }
            boolean r0 = r1.d     // Catch:{ Exception -> 0x0241 }
            com.yandex.metrica.impl.ob.gt r3 = new com.yandex.metrica.impl.ob.gt     // Catch:{ Exception -> 0x0241 }
            r3.<init>()     // Catch:{ Exception -> 0x0241 }
            com.yandex.metrica.impl.ob.kh$a$c r10 = a((org.a.c) r10, (boolean) r0)     // Catch:{ Exception -> 0x0241 }
            com.yandex.metrica.impl.ob.hq r10 = r3.a((com.yandex.metrica.impl.ob.kh.a.c) r10)     // Catch:{ Exception -> 0x0241 }
            com.yandex.metrica.impl.ob.hq unused = r1.p = r10     // Catch:{ Exception -> 0x0241 }
            org.a.c r10 = r2.optJSONObject(r7)     // Catch:{ Exception -> 0x0241 }
            boolean r0 = r1.e     // Catch:{ Exception -> 0x0241 }
            com.yandex.metrica.impl.ob.kh$a$a r3 = new com.yandex.metrica.impl.ob.kh$a$a     // Catch:{ Exception -> 0x0241 }
            r3.<init>()     // Catch:{ Exception -> 0x0241 }
            com.yandex.metrica.impl.ob.kh$a$c r0 = a((org.a.c) r10, (boolean) r0)     // Catch:{ Exception -> 0x0241 }
            r3.f6219b = r0     // Catch:{ Exception -> 0x0241 }
            java.lang.String r0 = "collection_duration_seconds"
            java.lang.Long r0 = com.yandex.metrica.impl.ob.ne.a(r10, r0)     // Catch:{ Exception -> 0x0241 }
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.SECONDS     // Catch:{ Exception -> 0x0241 }
            long r5 = r3.c     // Catch:{ Exception -> 0x0241 }
            long r4 = com.yandex.metrica.impl.ob.nt.a(r0, r4, r5)     // Catch:{ Exception -> 0x0241 }
            r3.c = r4     // Catch:{ Exception -> 0x0241 }
            java.lang.String r0 = "collection_interval_seconds"
            java.lang.Long r10 = com.yandex.metrica.impl.ob.ne.a(r10, r0)     // Catch:{ Exception -> 0x0241 }
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS     // Catch:{ Exception -> 0x0241 }
            long r4 = r3.d     // Catch:{ Exception -> 0x0241 }
            long r4 = com.yandex.metrica.impl.ob.nt.a(r10, r0, r4)     // Catch:{ Exception -> 0x0241 }
            r3.d = r4     // Catch:{ Exception -> 0x0241 }
            com.yandex.metrica.impl.ob.gq r10 = new com.yandex.metrica.impl.ob.gq     // Catch:{ Exception -> 0x0241 }
            r10.<init>()     // Catch:{ Exception -> 0x0241 }
            com.yandex.metrica.impl.ob.hl r10 = r10.a((com.yandex.metrica.impl.ob.kh.a.C0118a) r3)     // Catch:{ Exception -> 0x0241 }
            com.yandex.metrica.impl.ob.hl unused = r1.q = r10     // Catch:{ Exception -> 0x0241 }
            java.lang.String r10 = "time"
            org.a.c r10 = r2.optJSONObject(r10)     // Catch:{ Exception -> 0x0241 }
            if (r10 == 0) goto L_0x020f
            java.lang.String r0 = "max_valid_difference_seconds"
            long r3 = r10.getLong(r0)     // Catch:{ b -> 0x020f }
            java.lang.Long r10 = java.lang.Long.valueOf(r3)     // Catch:{ b -> 0x020f }
            r1.a((java.lang.Long) r10)     // Catch:{ b -> 0x020f }
        L_0x020f:
            a((com.yandex.metrica.impl.bq.b) r1, (com.yandex.metrica.impl.ob.ne.a) r2)     // Catch:{ Exception -> 0x0241 }
            com.yandex.metrica.impl.ob.kh$a$f r10 = new com.yandex.metrica.impl.ob.kh$a$f     // Catch:{ Exception -> 0x0241 }
            r10.<init>()     // Catch:{ Exception -> 0x0241 }
            java.lang.String r0 = "stat_sending"
            org.a.c r0 = r2.optJSONObject(r0)     // Catch:{ Exception -> 0x0241 }
            if (r0 == 0) goto L_0x022f
            java.lang.String r2 = "disabled_reporting_interval_seconds"
            java.lang.Long r0 = com.yandex.metrica.impl.ob.ne.a(r0, r2)     // Catch:{ Exception -> 0x0241 }
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.SECONDS     // Catch:{ Exception -> 0x0241 }
            long r3 = r10.f6225b     // Catch:{ Exception -> 0x0241 }
            long r2 = com.yandex.metrica.impl.ob.nt.a(r0, r2, r3)     // Catch:{ Exception -> 0x0241 }
            r10.f6225b = r2     // Catch:{ Exception -> 0x0241 }
        L_0x022f:
            com.yandex.metrica.impl.ob.gy r0 = new com.yandex.metrica.impl.ob.gy     // Catch:{ Exception -> 0x0241 }
            r0.<init>()     // Catch:{ Exception -> 0x0241 }
            com.yandex.metrica.impl.ob.mc r10 = r0.a((com.yandex.metrica.impl.ob.kh.a.f) r10)     // Catch:{ Exception -> 0x0241 }
            r1.a((com.yandex.metrica.impl.ob.mc) r10)     // Catch:{ Exception -> 0x0241 }
            com.yandex.metrica.impl.bq$b$a r10 = com.yandex.metrica.impl.bq.b.a.OK
            r1.a((com.yandex.metrica.impl.bq.b.a) r10)
            return r1
        L_0x0241:
            com.yandex.metrica.impl.bq$b r10 = new com.yandex.metrica.impl.bq$b
            r10.<init>()
            com.yandex.metrica.impl.bq$b$a r0 = com.yandex.metrica.impl.bq.b.a.BAD
            r10.a((com.yandex.metrica.impl.bq.b.a) r0)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.bq.a(byte[]):com.yandex.metrica.impl.bq$b");
    }

    private static kh.a.c a(c cVar, boolean z) {
        kh.a.c cVar2 = new kh.a.c();
        cVar2.f6221b = nt.a(ne.a(cVar, "min_update_interval_seconds"), TimeUnit.SECONDS, cVar2.f6221b);
        cVar2.c = nt.a(ne.d(cVar, "min_update_distance_meters"), cVar2.c);
        cVar2.d = nt.a(ne.b(cVar, "records_count_to_force_flush"), cVar2.d);
        cVar2.e = nt.a(ne.b(cVar, "max_records_count_in_batch"), cVar2.e);
        cVar2.f = nt.a(ne.a(cVar, "max_age_seconds_to_force_flush"), TimeUnit.SECONDS, cVar2.f);
        cVar2.g = nt.a(ne.b(cVar, "max_records_to_store_locally"), cVar2.g);
        cVar2.h = z;
        return cVar2;
    }

    private static void a(b bVar, ne.a aVar) throws org.a.b {
        if (aVar.has("requests")) {
            c jSONObject = aVar.getJSONObject("requests");
            if (jSONObject.has("list")) {
                org.a.a jSONArray = jSONObject.getJSONArray("list");
                ArrayList arrayList = new ArrayList(jSONArray.length());
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        arrayList.add(a(jSONArray.getJSONObject(i)));
                    } catch (org.a.b unused) {
                    }
                }
                if (!arrayList.isEmpty()) {
                    bVar.d((List<a>) arrayList);
                }
            }
        }
    }

    private static a a(c cVar) throws org.a.b {
        c jSONObject = cVar.getJSONObject("headers");
        ArrayList arrayList = new ArrayList(jSONObject.length());
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            org.a.a jSONArray = jSONObject.getJSONArray(next);
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(new Pair(next, jSONArray.getString(i)));
            }
        }
        a aVar = new a(cVar.optString("id", null), cVar.optString("url", null), cVar.optString("method", null), arrayList, Long.valueOf(cVar.getLong("delay_seconds")), b(cVar));
        return aVar;
    }

    private static List<a.C0107a> b(c cVar) throws org.a.b {
        ArrayList arrayList = new ArrayList();
        if (cVar.has("accept_network_types")) {
            org.a.a jSONArray = cVar.getJSONArray("accept_network_types");
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(f5784a.get(jSONArray.getString(i)));
            }
        }
        return arrayList;
    }

    private static boolean a(c cVar, String str, boolean z) throws org.a.b {
        if (cVar.has(str)) {
            return cVar.getJSONObject(str).optBoolean("enabled", z);
        }
        return false;
    }

    private static void b(b bVar, ne.a aVar) {
        c optJSONObject = aVar.optJSONObject("socket");
        if (optJSONObject != null) {
            long optLong = optJSONObject.optLong("seconds_to_live");
            String optString = optJSONObject.optString("token");
            org.a.a optJSONArray = optJSONObject.optJSONArray("ports");
            if (optLong > 0 && a(optString) && optJSONArray != null && optJSONArray.length() > 0) {
                ArrayList arrayList = new ArrayList(optJSONArray.length());
                for (int i = 0; i < optJSONArray.length(); i++) {
                    int optInt = optJSONArray.optInt(i);
                    if (optInt != 0) {
                        arrayList.add(Integer.valueOf(optInt));
                    }
                }
                if (!arrayList.isEmpty()) {
                    bVar.a(new lr(optLong, optString, arrayList));
                }
            }
        }
    }

    private static boolean a(String str) {
        return !bt.a(str);
    }

    private static boolean a(List<String> list) {
        return !bv.a((Collection) list);
    }

    private static void a(b bVar, c cVar) throws org.a.b {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = cVar.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            c optJSONObject = cVar.optJSONObject(next);
            if (optJSONObject != null && optJSONObject.has(FirebaseAnalytics.b.VALUE)) {
                hashMap.put(next, optJSONObject.getString(FirebaseAnalytics.b.VALUE));
            }
        }
        bVar.f(no.a((Map<String, String>) hashMap));
    }

    public static Long a(Map<String, List<String>> map) {
        if (!bv.a((Map) map)) {
            List list = map.get(io.fabric.sdk.android.services.network.c.HEADER_DATE);
            if (!bv.a((Collection) list)) {
                try {
                    return Long.valueOf(new SimpleDateFormat("E, d MMM yyyy HH:mm:ss z", Locale.US).parse((String) list.get(0)).getTime());
                } catch (Exception unused) {
                }
            }
        }
        return null;
    }
}
