package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.a.c;

public class ee {

    /* renamed from: a  reason: collision with root package name */
    private final ac f5943a;

    /* renamed from: b  reason: collision with root package name */
    private final el f5944b;
    private final eg c;
    private long d;
    private long e;
    private AtomicLong f;
    private boolean g;
    private volatile a h;
    private long i;
    private long j;
    private np k;

    static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f5945a;

        /* renamed from: b  reason: collision with root package name */
        private final String f5946b;
        private final String c;
        private final String d;
        private final String e;
        private final int f;
        private final int g;

        a(c cVar) {
            this.f5945a = cVar.optString("analyticsSdkVersionName", null);
            this.f5946b = cVar.optString("kitBuildNumber", null);
            this.c = cVar.optString("appVer", null);
            this.d = cVar.optString("appBuild", null);
            this.e = cVar.optString("osVer", null);
            this.f = cVar.optInt("osApiLev", -1);
            this.g = cVar.optInt("attribution_id", 0);
        }

        /* access modifiers changed from: package-private */
        public boolean a(le leVar) {
            return TextUtils.equals(leVar.h(), this.f5945a) && TextUtils.equals(leVar.i(), this.f5946b) && TextUtils.equals(leVar.p(), this.c) && TextUtils.equals(leVar.o(), this.d) && TextUtils.equals(leVar.m(), this.e) && this.f == leVar.n() && this.g == leVar.S();
        }

        public String toString() {
            return "SessionRequestParams{mKitVersionName='" + this.f5945a + '\'' + ", mKitBuildNumber='" + this.f5946b + '\'' + ", mAppVersion='" + this.c + '\'' + ", mAppBuild='" + this.d + '\'' + ", mOsVersion='" + this.e + '\'' + ", mApiLevel=" + this.f + '}';
        }
    }

    ee(ac acVar, el elVar, eg egVar) {
        this(acVar, elVar, egVar, new np());
    }

    ee(ac acVar, el elVar, eg egVar, np npVar) {
        this.f5943a = acVar;
        this.f5944b = elVar;
        this.c = egVar;
        this.k = npVar;
        this.e = this.c.b(this.k.c());
        this.d = this.c.a(-1);
        this.f = new AtomicLong(this.c.c(0));
        this.g = this.c.a(true);
        this.i = this.c.d(0);
        this.j = this.c.e(this.i - this.e);
    }

    /* access modifiers changed from: protected */
    public en a() {
        return this.c.a();
    }

    /* access modifiers changed from: protected */
    public int b() {
        return this.c.a(this.f5943a.k().O());
    }

    public long c() {
        return this.d;
    }

    /* access modifiers changed from: package-private */
    public long d() {
        return Math.max(this.i - TimeUnit.MILLISECONDS.toSeconds(this.e), this.j);
    }

    /* access modifiers changed from: package-private */
    public boolean a(long j2) {
        boolean z;
        boolean z2 = this.d >= 0;
        a h2 = h();
        if (h2 != null) {
            z = h2.a(this.f5943a.k());
        } else {
            z = false;
        }
        long seconds = TimeUnit.MILLISECONDS.toSeconds(j2) - this.i;
        return z2 && z && (((seconds > 0 ? 1 : (seconds == 0 ? 0 : -1)) < 0 || (seconds > ((long) b()) ? 1 : (seconds == ((long) b()) ? 0 : -1)) >= 0 || (d(j2) > eh.c ? 1 : (d(j2) == eh.c ? 0 : -1)) >= 0) ^ true);
    }

    private long d(long j2) {
        return TimeUnit.MILLISECONDS.toSeconds(j2 - this.e);
    }

    /* access modifiers changed from: package-private */
    public synchronized void e() {
        this.f5944b.a();
        this.h = null;
    }

    /* access modifiers changed from: package-private */
    public void b(long j2) {
        el elVar = this.f5944b;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(j2);
        this.i = seconds;
        elVar.b(seconds).h();
    }

    /* access modifiers changed from: package-private */
    public long c(long j2) {
        el elVar = this.f5944b;
        long d2 = d(j2);
        this.j = d2;
        elVar.c(d2);
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public long f() {
        long andIncrement = this.f.getAndIncrement();
        this.f5944b.a(this.f.get()).h();
        return andIncrement;
    }

    /* access modifiers changed from: package-private */
    public boolean g() {
        return this.g && c() > 0;
    }

    public void a(boolean z) {
        if (this.g != z) {
            this.g = z;
            this.f5944b.a(this.g).h();
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:3|4|(3:6|7|(1:9))|10|11) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x0033 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.yandex.metrica.impl.ob.ee.a h() {
        /*
            r4 = this;
            com.yandex.metrica.impl.ob.ee$a r0 = r4.h
            if (r0 != 0) goto L_0x0038
            monitor-enter(r4)
            com.yandex.metrica.impl.ob.ee$a r0 = r4.h     // Catch:{ all -> 0x0035 }
            if (r0 != 0) goto L_0x0033
            com.yandex.metrica.impl.ob.ac r0 = r4.f5943a     // Catch:{ Exception -> 0x0033 }
            com.yandex.metrica.impl.ob.fo r0 = r0.l()     // Catch:{ Exception -> 0x0033 }
            long r1 = r4.c()     // Catch:{ Exception -> 0x0033 }
            com.yandex.metrica.impl.ob.en r3 = r4.a()     // Catch:{ Exception -> 0x0033 }
            android.content.ContentValues r0 = r0.b((long) r1, (com.yandex.metrica.impl.ob.en) r3)     // Catch:{ Exception -> 0x0033 }
            java.lang.String r1 = "report_request_parameters"
            java.lang.String r0 = r0.getAsString(r1)     // Catch:{ Exception -> 0x0033 }
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch:{ Exception -> 0x0033 }
            if (r1 != 0) goto L_0x0033
            org.a.c r1 = new org.a.c     // Catch:{ Exception -> 0x0033 }
            r1.<init>((java.lang.String) r0)     // Catch:{ Exception -> 0x0033 }
            com.yandex.metrica.impl.ob.ee$a r0 = new com.yandex.metrica.impl.ob.ee$a     // Catch:{ Exception -> 0x0033 }
            r0.<init>(r1)     // Catch:{ Exception -> 0x0033 }
            r4.h = r0     // Catch:{ Exception -> 0x0033 }
        L_0x0033:
            monitor-exit(r4)     // Catch:{ all -> 0x0035 }
            goto L_0x0038
        L_0x0035:
            r0 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x0035 }
            throw r0
        L_0x0038:
            com.yandex.metrica.impl.ob.ee$a r0 = r4.h
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.ee.h():com.yandex.metrica.impl.ob.ee$a");
    }

    public String toString() {
        return "Session{mId=" + this.d + ", mInitTime=" + this.e + ", mCurrentReportId=" + this.f + ", mSessionRequestParams=" + this.h + ", mSleepStart=" + this.i + '}';
    }
}
