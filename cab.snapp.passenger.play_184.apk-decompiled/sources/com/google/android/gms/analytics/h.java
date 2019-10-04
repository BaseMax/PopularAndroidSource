package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserView;
import com.adjust.sdk.Constants;
import com.google.android.gms.analytics.d;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.bn;
import com.google.android.gms.internal.cd;
import com.google.android.gms.internal.ce;
import com.google.android.gms.internal.x;
import com.google.android.gms.internal.z;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

public final class h extends x {

    /* renamed from: a  reason: collision with root package name */
    final bn f2577a;

    /* renamed from: b  reason: collision with root package name */
    final a f2578b;
    cd c;
    private boolean d;
    private final Map<String, String> e = new HashMap();
    private final Map<String, String> f = new HashMap();
    private c g;

    class a extends x implements d.a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f2579a;

        /* renamed from: b  reason: collision with root package name */
        private int f2580b;
        private long c = -1;
        private boolean d;
        private long e;

        protected a(z zVar) {
            super(zVar);
        }

        public final void enableAutoActivityTracking(boolean z) {
            this.f2579a = z;
            a();
        }

        public final void setSessionTimeout(long j) {
            this.c = j;
            a();
        }

        public final void zzvf() {
        }

        public final synchronized boolean zzvg() {
            boolean z;
            z = this.d;
            this.d = false;
            return z;
        }

        private final void a() {
            if (this.c >= 0 || this.f2579a) {
                zzww().a((d.a) h.this.f2578b);
            } else {
                zzww().b((d.a) h.this.f2578b);
            }
        }

        public final void zzl(Activity activity) {
            String str;
            if (this.f2580b == 0) {
                if (this.zzdta.zzws().elapsedRealtime() >= this.e + Math.max(1000, this.c)) {
                    this.d = true;
                }
            }
            this.f2580b++;
            if (this.f2579a) {
                Intent intent = activity.getIntent();
                if (intent != null) {
                    h.this.setCampaignParamsOnNextHit(intent.getData());
                }
                HashMap hashMap = new HashMap();
                hashMap.put("&t", "screenview");
                h hVar = h.this;
                if (hVar.c != null) {
                    cd cdVar = h.this.c;
                    str = activity.getClass().getCanonicalName();
                    String str2 = cdVar.zzdzi.get(str);
                    if (str2 != null) {
                        str = str2;
                    }
                } else {
                    str = activity.getClass().getCanonicalName();
                }
                hVar.set("&cd", str);
                if (TextUtils.isEmpty((CharSequence) hashMap.get("&dr"))) {
                    ap.checkNotNull(activity);
                    Intent intent2 = activity.getIntent();
                    String str3 = null;
                    if (intent2 != null) {
                        String stringExtra = intent2.getStringExtra("android.intent.extra.REFERRER_NAME");
                        if (!TextUtils.isEmpty(stringExtra)) {
                            str3 = stringExtra;
                        }
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        hashMap.put("&dr", str3);
                    }
                }
                h.this.send(hashMap);
            }
        }

        public final void zzm(Activity activity) {
            this.f2580b--;
            this.f2580b = Math.max(0, this.f2580b);
            if (this.f2580b == 0) {
                this.e = this.zzdta.zzws().elapsedRealtime();
            }
        }
    }

    private static String a(Map.Entry<String, String> entry) {
        String key = entry.getKey();
        if (!(key.startsWith("&") && key.length() >= 2)) {
            return null;
        }
        return entry.getKey().substring(1);
    }

    private static void a(Map<String, String> map, Map<String, String> map2) {
        ap.checkNotNull(map2);
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                String a2 = a(next);
                if (a2 != null) {
                    map2.put(a2, (String) next.getValue());
                }
            }
        }
    }

    private static void b(Map<String, String> map, Map<String, String> map2) {
        ap.checkNotNull(map2);
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                String a2 = a(next);
                if (a2 != null && !map2.containsKey(a2)) {
                    map2.put(a2, (String) next.getValue());
                }
            }
        }
    }

    public final void enableAdvertisingIdCollection(boolean z) {
        this.d = z;
    }

    public final void enableAutoActivityTracking(boolean z) {
        this.f2578b.enableAutoActivityTracking(z);
    }

    public final void set(String str, String str2) {
        ap.checkNotNull(str, "Key should be non-null");
        if (!TextUtils.isEmpty(str)) {
            this.e.put(str, str2);
        }
    }

    public final void setAnonymizeIp(boolean z) {
        set("&aip", ce.zzak(z));
    }

    public final void setAppId(String str) {
        set("&aid", str);
    }

    public final void setAppInstallerId(String str) {
        set("&aiid", str);
    }

    public final void setAppName(String str) {
        set("&an", str);
    }

    public final void setAppVersion(String str) {
        set("&av", str);
    }

    public final void setCampaignParamsOnNextHit(Uri uri) {
        if (uri != null && !uri.isOpaque()) {
            String queryParameter = uri.getQueryParameter(Constants.REFERRER);
            if (!TextUtils.isEmpty(queryParameter)) {
                String valueOf = String.valueOf(queryParameter);
                Uri parse = Uri.parse(valueOf.length() != 0 ? "http://hostname/?".concat(valueOf) : new String("http://hostname/?"));
                String queryParameter2 = parse.getQueryParameter("utm_id");
                if (queryParameter2 != null) {
                    this.f.put("&ci", queryParameter2);
                }
                String queryParameter3 = parse.getQueryParameter("anid");
                if (queryParameter3 != null) {
                    this.f.put("&anid", queryParameter3);
                }
                String queryParameter4 = parse.getQueryParameter("utm_campaign");
                if (queryParameter4 != null) {
                    this.f.put("&cn", queryParameter4);
                }
                String queryParameter5 = parse.getQueryParameter("utm_content");
                if (queryParameter5 != null) {
                    this.f.put("&cc", queryParameter5);
                }
                String queryParameter6 = parse.getQueryParameter("utm_medium");
                if (queryParameter6 != null) {
                    this.f.put("&cm", queryParameter6);
                }
                String queryParameter7 = parse.getQueryParameter("utm_source");
                if (queryParameter7 != null) {
                    this.f.put("&cs", queryParameter7);
                }
                String queryParameter8 = parse.getQueryParameter("utm_term");
                if (queryParameter8 != null) {
                    this.f.put("&ck", queryParameter8);
                }
                String queryParameter9 = parse.getQueryParameter("dclid");
                if (queryParameter9 != null) {
                    this.f.put("&dclid", queryParameter9);
                }
                String queryParameter10 = parse.getQueryParameter("gclid");
                if (queryParameter10 != null) {
                    this.f.put("&gclid", queryParameter10);
                }
                String queryParameter11 = parse.getQueryParameter(FirebaseAnalytics.b.ACLID);
                if (queryParameter11 != null) {
                    this.f.put("&aclid", queryParameter11);
                }
            }
        }
    }

    public final void setClientId(String str) {
        set("&cid", str);
    }

    public final void setEncoding(String str) {
        set("&de", str);
    }

    public final void setHostname(String str) {
        set("&dh", str);
    }

    public final void setLanguage(String str) {
        set("&ul", str);
    }

    public final void setLocation(String str) {
        set("&dl", str);
    }

    public final void setPage(String str) {
        set("&dp", str);
    }

    public final void setReferrer(String str) {
        set("&dr", str);
    }

    public final void setSampleRate(double d2) {
        set("&sf", Double.toString(d2));
    }

    public final void setScreenColors(String str) {
        set("&sd", str);
    }

    public final void setScreenName(String str) {
        set("&cd", str);
    }

    public final void setScreenResolution(int i, int i2) {
        if (i >= 0 || i2 >= 0) {
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            set("&sr", sb.toString());
            return;
        }
        zzdx("Invalid width or height. The values should be non-negative.");
    }

    public final void setSessionTimeout(long j) {
        this.f2578b.setSessionTimeout(j * 1000);
    }

    public final void setTitle(String str) {
        set("&dt", str);
    }

    public final void setUseSecure(boolean z) {
        set("useSecure", ce.zzak(z));
    }

    public final void setViewportSize(String str) {
        set("&vp", str);
    }

    h(z zVar, String str) {
        super(zVar);
        if (str != null) {
            this.e.put("&tid", str);
        }
        this.e.put("useSecure", "1");
        this.e.put("&a", Integer.toString(new Random().nextInt(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) + 1));
        this.f2577a = new bn("tracking", this.zzdta.zzws());
        this.f2578b = new a(zVar);
    }

    public final void zzvf() {
        this.f2578b.initialize();
        String zzvi = this.zzdta.zzwz().zzvi();
        if (zzvi != null) {
            set("&an", zzvi);
        }
        String zzvj = this.zzdta.zzwz().zzvj();
        if (zzvj != null) {
            set("&av", zzvj);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0037, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void enableExceptionReporting(boolean r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            com.google.android.gms.analytics.c r0 = r2.g     // Catch:{ all -> 0x0038 }
            if (r0 == 0) goto L_0x0007
            r0 = 1
            goto L_0x0008
        L_0x0007:
            r0 = 0
        L_0x0008:
            if (r0 != r3) goto L_0x000c
            monitor-exit(r2)     // Catch:{ all -> 0x0038 }
            return
        L_0x000c:
            if (r3 == 0) goto L_0x002a
            com.google.android.gms.internal.z r3 = r2.zzdta     // Catch:{ all -> 0x0038 }
            android.content.Context r3 = r3.getContext()     // Catch:{ all -> 0x0038 }
            java.lang.Thread$UncaughtExceptionHandler r0 = java.lang.Thread.getDefaultUncaughtExceptionHandler()     // Catch:{ all -> 0x0038 }
            com.google.android.gms.analytics.c r1 = new com.google.android.gms.analytics.c     // Catch:{ all -> 0x0038 }
            r1.<init>(r2, r0, r3)     // Catch:{ all -> 0x0038 }
            r2.g = r1     // Catch:{ all -> 0x0038 }
            com.google.android.gms.analytics.c r3 = r2.g     // Catch:{ all -> 0x0038 }
            java.lang.Thread.setDefaultUncaughtExceptionHandler(r3)     // Catch:{ all -> 0x0038 }
            java.lang.String r3 = "Uncaught exceptions will be reported to Google Analytics"
            r2.zzdu(r3)     // Catch:{ all -> 0x0038 }
            goto L_0x0036
        L_0x002a:
            com.google.android.gms.analytics.c r3 = r2.g     // Catch:{ all -> 0x0038 }
            java.lang.Thread$UncaughtExceptionHandler r3 = r3.f2571a     // Catch:{ all -> 0x0038 }
            java.lang.Thread.setDefaultUncaughtExceptionHandler(r3)     // Catch:{ all -> 0x0038 }
            java.lang.String r3 = "Uncaught exceptions will not be reported to Google Analytics"
            r2.zzdu(r3)     // Catch:{ all -> 0x0038 }
        L_0x0036:
            monitor-exit(r2)     // Catch:{ all -> 0x0038 }
            return
        L_0x0038:
            r3 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0038 }
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.h.enableExceptionReporting(boolean):void");
    }

    public final void send(Map<String, String> map) {
        long currentTimeMillis = this.zzdta.zzws().currentTimeMillis();
        if (zzww().getAppOptOut()) {
            zzdv("AppOptOut is set to true. Not sending Google Analytics hit");
            return;
        }
        boolean isDryRunEnabled = zzww().isDryRunEnabled();
        HashMap hashMap = new HashMap();
        a(this.e, hashMap);
        a(map, hashMap);
        boolean zzd = ce.zzd(this.e.get("useSecure"), true);
        b(this.f, hashMap);
        this.f.clear();
        String str = (String) hashMap.get("t");
        if (TextUtils.isEmpty(str)) {
            this.zzdta.zzwt().zzf(hashMap, "Missing hit type parameter");
            return;
        }
        String str2 = (String) hashMap.get("tid");
        if (TextUtils.isEmpty(str2)) {
            this.zzdta.zzwt().zzf(hashMap, "Missing tracking id parameter");
            return;
        }
        boolean z = this.d;
        synchronized (this) {
            if ("screenview".equalsIgnoreCase(str) || "pageview".equalsIgnoreCase(str) || "appview".equalsIgnoreCase(str) || TextUtils.isEmpty(str)) {
                int parseInt = Integer.parseInt(this.e.get("&a")) + 1;
                if (parseInt >= Integer.MAX_VALUE) {
                    parseInt = 1;
                }
                this.e.put("&a", Integer.toString(parseInt));
            }
        }
        r zzwv = this.zzdta.zzwv();
        v vVar = new v(this, hashMap, z, str, currentTimeMillis, isDryRunEnabled, zzd, str2);
        zzwv.zzc(vVar);
    }

    public final String get(String str) {
        c();
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.e.containsKey(str)) {
            return this.e.get(str);
        }
        if (str.equals("&ul")) {
            return ce.zza(Locale.getDefault());
        }
        if (str.equals("&cid")) {
            return this.zzdta.zzxl().zzyk();
        }
        if (str.equals("&sr")) {
            return this.zzdta.zzxe().zzzd();
        }
        if (str.equals("&aid")) {
            return this.zzdta.zzxd().zzxy().getAppId();
        }
        if (str.equals("&an")) {
            return this.zzdta.zzxd().zzxy().zzvi();
        }
        if (str.equals("&av")) {
            return this.zzdta.zzxd().zzxy().zzvj();
        }
        if (str.equals("&aiid")) {
            return this.zzdta.zzxd().zzxy().zzvk();
        }
        return null;
    }
}
