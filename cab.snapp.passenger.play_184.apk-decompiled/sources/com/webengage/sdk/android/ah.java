package com.webengage.sdk.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.adjust.sdk.Constants;
import com.koushikdutta.ion.bitmap.IonBitmapCache;
import com.webengage.sdk.android.actions.database.DataHolder;
import com.webengage.sdk.android.actions.database.f;
import com.webengage.sdk.android.actions.database.r;
import com.webengage.sdk.android.actions.database.y;
import com.webengage.sdk.android.utils.k;
import io.fabric.sdk.android.services.settings.t;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.a.b;
import org.a.c;

class ah implements ag {

    /* renamed from: a  reason: collision with root package name */
    Context f5494a = null;

    /* renamed from: b  reason: collision with root package name */
    private ScheduledThreadPoolExecutor f5495b = null;

    ah(Context context) {
        this.f5494a = context.getApplicationContext();
    }

    private void a(Analytics analytics) {
        String str;
        if (analytics.c().e("webengage_volatile_prefs.txt").contains(Constants.REFERRER)) {
            try {
                str = URLDecoder.decode(analytics.c().h(Constants.REFERRER), "UTF-8");
            } catch (UnsupportedEncodingException unused) {
                str = "";
            }
            analytics.c().g(Constants.REFERRER);
            HashMap hashMap = new HashMap();
            if (!str.isEmpty()) {
                hashMap.put(Constants.REFERRER, str);
                hashMap.putAll(new m().a(str));
            }
            WebEngage.startService(n.a(af.EVENT, k.a("app_installed", hashMap, null, null, this.f5494a), this.f5494a), this.f5494a);
        }
    }

    private void a(l lVar) {
        String h = lVar.h();
        Analytics a2 = c.a(this.f5494a);
        if (h != null) {
            if ("user_logged_out".equals(h)) {
                if (DataHolder.get().t()) {
                    long v = DataHolder.get().v();
                    if (v != -1) {
                        DataHolder.get().a(System.currentTimeMillis());
                        a2.a().a(System.currentTimeMillis() - v);
                    }
                }
                a2.a().f();
                a2.c().b("");
                ((ak) aj.a(this.f5494a, a2)).a();
                String h2 = a2.c().h();
                y a3 = y.a(this.f5494a);
                if (h2.isEmpty()) {
                    h2 = a2.c().i();
                }
                Map<String, Object> a4 = a3.a(h2);
                if (a4 != null && a4.size() > 0) {
                    DataHolder.get().a(a4);
                }
                if (DataHolder.get().t()) {
                    a2.a().d();
                } else {
                    a2.a().e();
                }
                a2.b().b();
            } else if (!"visitor_session_close".equals(h)) {
                if ("user_logged_in".equals(h)) {
                    a2.b().d(System.currentTimeMillis() + 60000);
                } else if ("notification_control_group".equals(h)) {
                    DataHolder.get().a(false);
                } else if ("app_upgraded".equals(h)) {
                    HashMap hashMap = new HashMap();
                    String c = a2.c().c();
                    if (!k.b(c)) {
                        hashMap.put("gcm_regId", c);
                        hashMap.put("gcm_project_number", null);
                        WebEngage.startService(n.a(af.EVENT, k.a("gcm_registered", null, hashMap, null, this.f5494a), this.f5494a), this.f5494a);
                    }
                }
            }
        }
    }

    private void b(Analytics analytics) {
        int d = analytics.c().d();
        PackageInfo d2 = k.d(this.f5494a);
        if (d2 != null) {
            int i = d2.versionCode;
            if (!(d == -1 || d == i)) {
                HashMap hashMap = new HashMap();
                hashMap.put("app_version_code_old", Integer.valueOf(d));
                hashMap.put("app_version_code_new", Integer.valueOf(i));
                WebEngage.startService(n.a(af.EVENT, k.a("app_upgraded", null, hashMap, null, this.f5494a), this.f5494a), this.f5494a);
                i.a(this.f5494a).onAppUpgraded(this.f5494a, d, i);
            }
            analytics.c().a(d2.versionCode);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00f5, code lost:
        if ("background".equals(r2) != false) goto L_0x0107;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0105, code lost:
        if ("background".equals(r2) != false) goto L_0x0107;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0107, code lost:
        r3.a().f();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:130:0x039f */
    /* JADX WARNING: Removed duplicated region for block: B:133:0x03b3 A[Catch:{ Exception -> 0x03e9 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean b(com.webengage.sdk.android.l r16) {
        /*
            r15 = this;
            r1 = r15
            java.lang.String r0 = "we_add_to_screen_data"
            java.lang.String r2 = r16.h()
            android.content.Context r3 = r1.f5494a
            com.webengage.sdk.android.Analytics r3 = com.webengage.sdk.android.c.a((android.content.Context) r3)
            r4 = 1
            if (r2 == 0) goto L_0x03e9
            java.lang.String r5 = "we_wk_activity_start"
            boolean r5 = r5.equals(r2)
            r8 = 15000(0x3a98, double:7.411E-320)
            r10 = 60000(0xea60, double:2.9644E-319)
            java.lang.String r12 = "com.webengage.sdk.android.actions.render.WebEngageActivity"
            java.lang.String r13 = "screen_path"
            java.lang.String r6 = "activity_count"
            r7 = 0
            r14 = 0
            if (r5 == 0) goto L_0x010f
            java.util.Map r0 = r16.k()
            if (r0 == 0) goto L_0x003a
            java.lang.Object r0 = r0.get(r13)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L_0x003a
            boolean r0 = r0.equals(r12)
            if (r0 == 0) goto L_0x003a
            return r7
        L_0x003a:
            com.webengage.sdk.android.actions.database.DataHolder r0 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.lang.String r2 = r0.b()
            java.util.Map r0 = r16.l()
            if (r0 == 0) goto L_0x03e9
            boolean r5 = r0.containsKey(r6)
            if (r5 == 0) goto L_0x03e9
            java.lang.Object r0 = r0.get(r6)
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            if (r0 != r4) goto L_0x03e9
            android.content.Context r0 = r1.f5494a     // Catch:{ Exception -> 0x0066 }
            com.webengage.sdk.android.ad r0 = com.webengage.sdk.android.ad.a((android.content.Context) r0)     // Catch:{ Exception -> 0x0066 }
            com.webengage.sdk.android.af r5 = com.webengage.sdk.android.af.JOURNEY_CONTEXT     // Catch:{ Exception -> 0x0066 }
            r0.a(r5, r14)     // Catch:{ Exception -> 0x0066 }
            goto L_0x0074
        L_0x0066:
            r0 = move-exception
            android.content.Context r5 = r1.f5494a     // Catch:{ Exception -> 0x0073 }
            com.webengage.sdk.android.ad r5 = com.webengage.sdk.android.ad.a((android.content.Context) r5)     // Catch:{ Exception -> 0x0073 }
            com.webengage.sdk.android.af r6 = com.webengage.sdk.android.af.EXCEPTION     // Catch:{ Exception -> 0x0073 }
            r5.a(r6, r0)     // Catch:{ Exception -> 0x0073 }
            goto L_0x0074
        L_0x0073:
        L_0x0074:
            com.webengage.sdk.android.actions.database.DataHolder r0 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.util.Map r0 = r0.B()
            if (r0 == 0) goto L_0x0088
            com.webengage.sdk.android.z r0 = r3.b()
            long r5 = java.lang.System.currentTimeMillis()
            long r5 = r5 + r8
            goto L_0x0091
        L_0x0088:
            com.webengage.sdk.android.z r0 = r3.b()
            long r5 = java.lang.System.currentTimeMillis()
            long r5 = r5 + r10
        L_0x0091:
            r0.b((long) r5)
            com.webengage.sdk.android.z r0 = r3.b()
            long r5 = java.lang.System.currentTimeMillis()
            r8 = 120000(0x1d4c0, double:5.9288E-319)
            long r5 = r5 + r8
            r0.c((long) r5)
            com.webengage.sdk.android.actions.database.DataHolder r0 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.lang.Long r0 = r0.x()
            if (r0 != 0) goto L_0x00b1
            java.lang.Long r0 = java.lang.Long.valueOf(r8)
        L_0x00b1:
            long r5 = r0.longValue()
            r8 = 0
            int r10 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
            if (r10 <= 0) goto L_0x00cc
            com.webengage.sdk.android.z r5 = r3.b()
            long r8 = java.lang.System.currentTimeMillis()
            long r10 = r0.longValue()
            long r8 = r8 + r10
            r5.e(r8)
            goto L_0x00d3
        L_0x00cc:
            com.webengage.sdk.android.z r0 = r3.b()
            r0.c()
        L_0x00d3:
            com.webengage.sdk.android.actions.database.DataHolder r0 = com.webengage.sdk.android.actions.database.DataHolder.get()
            long r5 = java.lang.System.currentTimeMillis()
            r0.a((long) r5)
            com.webengage.sdk.android.actions.database.DataHolder r0 = com.webengage.sdk.android.actions.database.DataHolder.get()
            boolean r0 = r0.u()
            java.lang.String r5 = "background"
            if (r0 == 0) goto L_0x0101
            com.webengage.sdk.android.actions.database.DataHolder r0 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r0.c((boolean) r7)
            boolean r0 = r5.equals(r2)
            if (r0 == 0) goto L_0x00f8
            goto L_0x0107
        L_0x00f8:
            com.webengage.sdk.android.aa r0 = r3.a()
            r0.d()
            goto L_0x03e9
        L_0x0101:
            boolean r0 = r5.equals(r2)
            if (r0 == 0) goto L_0x03e9
        L_0x0107:
            com.webengage.sdk.android.aa r0 = r3.a()
            r0.f()
            goto L_0x00f8
        L_0x010f:
            java.lang.String r5 = "we_wk_activity_stop"
            boolean r5 = r5.equals(r2)
            if (r5 == 0) goto L_0x016e
            java.util.Map r0 = r16.k()
            if (r0 == 0) goto L_0x012c
            java.lang.Object r0 = r0.get(r13)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L_0x012c
            boolean r0 = r0.equals(r12)
            if (r0 == 0) goto L_0x012c
            return r7
        L_0x012c:
            java.util.Map r0 = r16.l()
            if (r0 == 0) goto L_0x03e9
            boolean r2 = r0.containsKey(r6)
            if (r2 == 0) goto L_0x03e9
            java.lang.Object r0 = r0.get(r6)
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            if (r0 != 0) goto L_0x03e9
            com.webengage.sdk.android.actions.database.DataHolder r0 = com.webengage.sdk.android.actions.database.DataHolder.get()
            long r5 = r0.v()
            r7 = -1
            int r0 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r0 == 0) goto L_0x0165
            com.webengage.sdk.android.actions.database.DataHolder r0 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r0.a((long) r7)
            com.webengage.sdk.android.aa r0 = r3.a()
            long r2 = java.lang.System.currentTimeMillis()
            long r2 = r2 - r5
            r0.a(r2)
        L_0x0165:
            com.webengage.sdk.android.AbstractWebEngage r0 = com.webengage.sdk.android.WebEngage.get()
            r0.b((android.content.BroadcastReceiver) r14)
            goto L_0x03e9
        L_0x016e:
            java.lang.String r5 = "visitor_new_session"
            boolean r5 = r5.equals(r2)
            if (r5 == 0) goto L_0x02b1
            com.webengage.sdk.android.z r0 = r3.b()
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.util.List r2 = r2.D()
            r0.d((java.util.List<java.lang.Object>) r2)
            com.webengage.sdk.android.f r0 = r3.c()
            java.lang.String r0 = r0.h()
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x019c
            com.webengage.sdk.android.f r0 = r3.c()
            java.lang.String r0 = r0.i()
            goto L_0x01a4
        L_0x019c:
            com.webengage.sdk.android.f r0 = r3.c()
            java.lang.String r0 = r0.h()
        L_0x01a4:
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            com.webengage.sdk.android.actions.database.f r5 = com.webengage.sdk.android.actions.database.f.ANDROID
            r2.a((java.lang.String) r0, (com.webengage.sdk.android.actions.database.f) r5)
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            com.webengage.sdk.android.actions.database.f r5 = com.webengage.sdk.android.actions.database.f.SCOPES
            r2.a((java.lang.String) r0, (com.webengage.sdk.android.actions.database.f) r5)
            com.webengage.sdk.android.f r0 = r3.c()
            r0.a((java.util.List<java.lang.String>) r14)
            com.webengage.sdk.android.actions.database.f[] r0 = com.webengage.sdk.android.actions.database.f.values()
            int r2 = r0.length
        L_0x01c2:
            if (r7 >= r2) goto L_0x01da
            r5 = r0[r7]
            boolean r6 = r5.b()
            if (r6 != 0) goto L_0x01d7
            com.webengage.sdk.android.actions.database.DataHolder r6 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.lang.String r5 = r5.toString()
            r6.b((java.lang.String) r5, (java.lang.Object) r14)
        L_0x01d7:
            int r7 = r7 + 1
            goto L_0x01c2
        L_0x01da:
            com.webengage.sdk.android.aa r0 = r3.a()
            r0.a()
            java.util.Map r0 = r16.k()
            java.lang.String r2 = "session_type"
            java.lang.Object r0 = r0.get(r2)
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "online"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L_0x02a0
            android.content.Context r0 = r1.f5494a     // Catch:{ Exception -> 0x0219 }
            com.webengage.sdk.android.ad r0 = com.webengage.sdk.android.ad.a((android.content.Context) r0)     // Catch:{ Exception -> 0x0219 }
            com.webengage.sdk.android.af r2 = com.webengage.sdk.android.af.CONFIG_REFRESH     // Catch:{ Exception -> 0x0219 }
            r0.a(r2, r14)     // Catch:{ Exception -> 0x0219 }
            android.content.Context r0 = r1.f5494a     // Catch:{ Exception -> 0x0219 }
            com.webengage.sdk.android.ad r0 = com.webengage.sdk.android.ad.a((android.content.Context) r0)     // Catch:{ Exception -> 0x0219 }
            com.webengage.sdk.android.af r2 = com.webengage.sdk.android.af.FETCH_PROFILE     // Catch:{ Exception -> 0x0219 }
            r0.a(r2, r14)     // Catch:{ Exception -> 0x0219 }
            android.content.Context r0 = r1.f5494a     // Catch:{ Exception -> 0x0219 }
            com.webengage.sdk.android.ad r0 = com.webengage.sdk.android.ad.a((android.content.Context) r0)     // Catch:{ Exception -> 0x0219 }
            com.webengage.sdk.android.af r2 = com.webengage.sdk.android.af.JOURNEY_CONTEXT     // Catch:{ Exception -> 0x0219 }
            r0.a(r2, r14)     // Catch:{ Exception -> 0x0219 }
            goto L_0x0227
        L_0x0219:
            r0 = move-exception
            android.content.Context r2 = r1.f5494a     // Catch:{ Exception -> 0x0226 }
            com.webengage.sdk.android.ad r2 = com.webengage.sdk.android.ad.a((android.content.Context) r2)     // Catch:{ Exception -> 0x0226 }
            com.webengage.sdk.android.af r5 = com.webengage.sdk.android.af.EXCEPTION     // Catch:{ Exception -> 0x0226 }
            r2.a(r5, r0)     // Catch:{ Exception -> 0x0226 }
            goto L_0x0227
        L_0x0226:
        L_0x0227:
            com.webengage.sdk.android.actions.database.DataHolder r0 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.util.Map r0 = r0.B()
            if (r0 == 0) goto L_0x023b
            com.webengage.sdk.android.z r0 = r3.b()
            long r5 = java.lang.System.currentTimeMillis()
            long r5 = r5 + r8
            goto L_0x0244
        L_0x023b:
            com.webengage.sdk.android.z r0 = r3.b()
            long r5 = java.lang.System.currentTimeMillis()
            long r5 = r5 + r10
        L_0x0244:
            r0.b((long) r5)
            com.webengage.sdk.android.z r0 = r3.b()
            long r5 = java.lang.System.currentTimeMillis()
            r7 = 120000(0x1d4c0, double:5.9288E-319)
            long r5 = r5 + r7
            r0.c((long) r5)
            com.webengage.sdk.android.actions.database.DataHolder r0 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.lang.Long r0 = r0.x()
            if (r0 != 0) goto L_0x0264
            java.lang.Long r0 = java.lang.Long.valueOf(r7)
        L_0x0264:
            long r5 = r0.longValue()
            r7 = 0
            int r2 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r2 <= 0) goto L_0x027f
            com.webengage.sdk.android.z r2 = r3.b()
            long r5 = java.lang.System.currentTimeMillis()
            long r7 = r0.longValue()
            long r5 = r5 + r7
            r2.e(r5)
            goto L_0x0286
        L_0x027f:
            com.webengage.sdk.android.z r0 = r3.b()
            r0.c()
        L_0x0286:
            com.webengage.sdk.android.z r0 = r3.b()
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.util.List r2 = r2.D()
            r0.c((java.util.List<java.lang.Object>) r2)
            com.webengage.sdk.android.z r0 = r3.b()
            r2 = 10000(0x2710, double:4.9407E-320)
            r0.f(r2)
            goto L_0x03e9
        L_0x02a0:
            com.webengage.sdk.android.z r0 = r3.b()
            long r2 = java.lang.System.currentTimeMillis()
            r5 = 21600000(0x1499700, double:1.0671818E-316)
            long r2 = r2 + r5
            r0.a((long) r2)
            goto L_0x03e9
        L_0x02b1:
            java.lang.String r5 = "visitor_session_close"
            boolean r5 = r5.equals(r2)
            if (r5 != 0) goto L_0x03e9
            java.lang.String r5 = "user_logged_in"
            boolean r5 = r5.equals(r2)
            java.lang.String r6 = "user_logged_out"
            java.lang.String r8 = "WebEngage"
            if (r5 == 0) goto L_0x033b
            java.util.Map r0 = r16.l()
            java.lang.String r2 = "cuid"
            java.lang.Object r0 = r0.get(r2)
            java.lang.String r2 = r0.toString()
            com.webengage.sdk.android.f r0 = r3.c()
            java.lang.String r0 = r0.h()
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L_0x02f8
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "INVALID OPERATION: User: "
            r0.<init>(r3)
            r0.append(r2)
            java.lang.String r2 = " is Already Logged-in"
            r0.append(r2)
            java.lang.String r0 = r0.toString()
        L_0x02f4:
            com.webengage.sdk.android.Logger.e(r8, r0)
            return r7
        L_0x02f8:
            com.webengage.sdk.android.f r0 = r3.c()
            java.lang.String r0 = r0.h()
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L_0x0332
            com.webengage.sdk.android.f r0 = r3.c()
            java.lang.String r0 = r0.h()
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0332
            android.content.Context r0 = r1.f5494a     // Catch:{ Exception -> 0x0326 }
            com.webengage.sdk.android.ad r0 = com.webengage.sdk.android.ad.a((android.content.Context) r0)     // Catch:{ Exception -> 0x0326 }
            com.webengage.sdk.android.af r5 = com.webengage.sdk.android.af.EVENT     // Catch:{ Exception -> 0x0326 }
            android.content.Context r7 = r1.f5494a     // Catch:{ Exception -> 0x0326 }
            com.webengage.sdk.android.l r6 = com.webengage.sdk.android.k.a(r6, r14, r14, r14, r7)     // Catch:{ Exception -> 0x0326 }
            r0.a(r5, r6)     // Catch:{ Exception -> 0x0326 }
            goto L_0x0332
        L_0x0326:
            r0 = move-exception
            android.content.Context r5 = r1.f5494a     // Catch:{ Exception -> 0x0332 }
            com.webengage.sdk.android.ad r5 = com.webengage.sdk.android.ad.a((android.content.Context) r5)     // Catch:{ Exception -> 0x0332 }
            com.webengage.sdk.android.af r6 = com.webengage.sdk.android.af.EXCEPTION     // Catch:{ Exception -> 0x0332 }
            r5.a(r6, r0)     // Catch:{ Exception -> 0x0332 }
        L_0x0332:
            com.webengage.sdk.android.f r0 = r3.c()
            r0.b(r2)
            goto L_0x03e9
        L_0x033b:
            boolean r5 = r6.equals(r2)
            if (r5 == 0) goto L_0x0352
            com.webengage.sdk.android.f r0 = r3.c()
            java.lang.String r0 = r0.h()
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x03e9
            java.lang.String r0 = "INVALID OPERATION: User Not Logged-in"
            goto L_0x02f4
        L_0x0352:
            java.lang.String r5 = "we_wk_screen_navigated"
            boolean r5 = r5.equals(r2)
            if (r5 == 0) goto L_0x03e9
            com.webengage.sdk.android.z r5 = r3.b()
            com.webengage.sdk.android.actions.database.DataHolder r6 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.util.List r6 = r6.y()
            r5.b((java.util.List<java.lang.Object>) r6)
            com.webengage.sdk.android.z r5 = r3.b()
            com.webengage.sdk.android.actions.database.DataHolder r6 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.util.List r6 = r6.y()
            r5.a((java.util.List<java.lang.Object>) r6)
            java.lang.ref.WeakReference r3 = r3.getActivity()
            if (r3 == 0) goto L_0x03e9
            java.lang.Object r5 = r3.get()
            if (r5 == 0) goto L_0x03e9
            java.lang.Object r5 = r3.get()
            android.app.Activity r5 = (android.app.Activity) r5
            android.app.FragmentManager r5 = r5.getFragmentManager()
            android.app.Fragment r6 = r5.findFragmentByTag(r8)
            if (r6 == 0) goto L_0x039f
            android.app.FragmentTransaction r5 = r5.beginTransaction()
            android.app.FragmentTransaction r5 = r5.remove(r6)     // Catch:{ Exception -> 0x039f }
            r5.commitAllowingStateLoss()     // Catch:{ Exception -> 0x039f }
        L_0x039f:
            java.util.Map r5 = r16.j()     // Catch:{ Exception -> 0x03e9 }
            java.lang.Object r6 = r3.get()     // Catch:{ Exception -> 0x03e9 }
            android.app.Activity r6 = (android.app.Activity) r6     // Catch:{ Exception -> 0x03e9 }
            android.content.Intent r6 = r6.getIntent()     // Catch:{ Exception -> 0x03e9 }
            android.os.Bundle r6 = r6.getExtras()     // Catch:{ Exception -> 0x03e9 }
            if (r6 == 0) goto L_0x03e9
            java.lang.String r7 = r6.getString(r0)     // Catch:{ Exception -> 0x03e9 }
            if (r7 == 0) goto L_0x03e9
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch:{ Exception -> 0x03e9 }
            boolean r7 = r7.booleanValue()     // Catch:{ Exception -> 0x03e9 }
            if (r7 == 0) goto L_0x03e9
            if (r5 != 0) goto L_0x03ca
            java.util.HashMap r5 = new java.util.HashMap     // Catch:{ Exception -> 0x03e9 }
            r5.<init>()     // Catch:{ Exception -> 0x03e9 }
        L_0x03ca:
            java.util.Map r6 = com.webengage.sdk.android.utils.k.a((android.os.Bundle) r6)     // Catch:{ Exception -> 0x03e9 }
            java.lang.Object r2 = com.webengage.sdk.android.utils.DataType.cloneExternal(r2, r6)     // Catch:{ Exception -> 0x03e9 }
            java.util.Map r2 = (java.util.Map) r2     // Catch:{ Exception -> 0x03e9 }
            r5.putAll(r2)     // Catch:{ Exception -> 0x03e9 }
            java.lang.Object r2 = r3.get()     // Catch:{ Exception -> 0x03e9 }
            android.app.Activity r2 = (android.app.Activity) r2     // Catch:{ Exception -> 0x03e9 }
            android.content.Intent r2 = r2.getIntent()     // Catch:{ Exception -> 0x03e9 }
            r2.removeExtra(r0)     // Catch:{ Exception -> 0x03e9 }
            r0 = r16
            r0.a((java.util.Map<java.lang.String, java.lang.Object>) r5)     // Catch:{ Exception -> 0x03e9 }
        L_0x03e9:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.ah.b(com.webengage.sdk.android.l):boolean");
    }

    public boolean a(af afVar, Object obj) {
        int i = AnonymousClass2.f5498a[afVar.ordinal()];
        if (i == 1 || i == 2) {
            l lVar = (l) obj;
            if ("system".equals(lVar.f())) {
                return b(lVar);
            }
        } else if (i != 3 && i == 4) {
            Bundle bundle = (Bundle) obj;
            if ("show_system_tray_notification".equalsIgnoreCase(bundle.getString("message_action"))) {
                String string = bundle.getString("message_data");
                c cVar = null;
                try {
                    cVar = new c(string);
                } catch (b e) {
                    Logger.e("WebEngage", "Exception while parsing push message_data for deduping", e);
                }
                if (cVar != null) {
                    String optString = cVar.optString("experimentId");
                    String optString2 = cVar.optString(t.APP_IDENTIFIER_KEY);
                    f c = c.a(this.f5494a).c();
                    Set<String> j = c.j();
                    if (j == null || !j.contains(optString)) {
                        c.i(optString);
                    } else {
                        Logger.d("WebEngage", "Push {id: " + optString2 + ", experiment-id: " + optString + "} is already shown, hence not rendering.");
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public void b(af afVar, Object obj) {
        final Analytics a2 = c.a(this.f5494a);
        switch (afVar) {
            case EVENT:
            case INTERNAL_EVENT:
                l lVar = (l) obj;
                if ("system".equals(lVar.f())) {
                    a(lVar);
                    if (af.EVENT.equals(afVar) && "background".equals(DataHolder.get().b())) {
                        WebEngage.get().b((BroadcastReceiver) null);
                        break;
                    }
                }
                break;
            case DATA:
                a2.a().h();
                return;
            case CONFIG_REFRESH:
                if (DataHolder.get().t()) {
                    a2.b().c(System.currentTimeMillis() + 120000);
                    return;
                }
                break;
            case REPORT:
                if (!DataHolder.get().t()) {
                    a2.b().b(System.currentTimeMillis() + 10800000);
                    return;
                } else if (DataHolder.get().B() != null) {
                    a2.b().b(System.currentTimeMillis() + 15000);
                    return;
                } else {
                    a2.b().b(System.currentTimeMillis() + 60000);
                    return;
                }
            case FETCH_PROFILE:
                ArrayList arrayList = new ArrayList();
                arrayList.add(f.USER.toString());
                arrayList.add("cuid");
                String str = (String) DataHolder.get().a((List<? extends Object>) arrayList);
                if (!a2.c().h().isEmpty() && ((str == null || str.isEmpty()) && DataHolder.get().t())) {
                    a2.b().d(System.currentTimeMillis() + 60000);
                }
                a2.a().g();
                return;
            case JOURNEY_CONTEXT:
                try {
                    if (DataHolder.get().t() && DataHolder.get().B() != null) {
                        Long x = DataHolder.get().x();
                        if (x == null) {
                            x = 120000L;
                        }
                        if (x.longValue() > 0) {
                            a2.b().e(System.currentTimeMillis() + x.longValue());
                        } else {
                            a2.b().c();
                        }
                    }
                } catch (Exception unused) {
                }
                a2.a().g();
                return;
            case BOOT_UP:
                a2.a().g();
                try {
                    a(a2);
                    b(a2);
                } catch (Exception e) {
                    Logger.e("WebEngage", "Exception while checking for app install and app upgrade events", e);
                }
                z b2 = a2.b();
                if (!b2.d()) {
                    b2.f(a2.c().l());
                    return;
                }
                break;
            case AMPLIFY:
                a2.c().k();
                if (this.f5495b == null) {
                    this.f5495b = new ScheduledThreadPoolExecutor(1);
                }
                this.f5495b.schedule(new Runnable() {
                    public void run() {
                        long l = a2.c().l();
                        r.c(false);
                        a2.b().f(l);
                    }
                }, IonBitmapCache.DEFAULT_ERROR_CACHE_DURATION, TimeUnit.MILLISECONDS);
                break;
        }
    }
}
