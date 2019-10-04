package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

final class jj extends kw {

    /* renamed from: a  reason: collision with root package name */
    static final Pair<String, Long> f3245a = new Pair<>("", 0L);

    /* renamed from: b  reason: collision with root package name */
    String f3246b;
    long c;
    final Object d = new Object();
    private SharedPreferences f;
    private String g;
    private boolean h;
    private long i;
    public final jm zzjcq;
    public final jl zzjcr = new jl(this, "last_upload", 0);
    public final jl zzjcs = new jl(this, "last_upload_attempt", 0);
    public final jl zzjct = new jl(this, "backoff", 0);
    public final jl zzjcu = new jl(this, "last_delete_stale", 0);
    public final jl zzjcv = new jl(this, "midnight_offset", 0);
    public final jl zzjcw = new jl(this, "first_open_time", 0);
    public final jn zzjcx = new jn(this, "app_instance_id", null);
    public final jl zzjde = new jl(this, "time_before_start", 10000);
    public final jl zzjdf = new jl(this, "session_timeout", 1800000);
    public final jk zzjdg = new jk(this, "start_new_session", true);
    public final jl zzjdh = new jl(this, "last_pause_time", 0);
    public final jl zzjdi = new jl(this, "time_active", 0);
    public boolean zzjdj;

    jj(jx jxVar) {
        super(jxVar);
        jm jmVar = new jm(this, "health_monitor", Math.max(0, ip.zzjaf.get().longValue()), (byte) 0);
        this.zzjcq = jmVar;
    }

    /* access modifiers changed from: private */
    public final SharedPreferences h() {
        zzve();
        k();
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public final Pair<String, Boolean> a(String str) {
        zzve();
        long elapsedRealtime = zzws().elapsedRealtime();
        String str2 = this.g;
        if (str2 != null && elapsedRealtime < this.i) {
            return new Pair<>(str2, Boolean.valueOf(this.h));
        }
        this.i = elapsedRealtime + zzaxa().zza(str, ip.zzjae);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(getContext());
            if (advertisingIdInfo != null) {
                this.g = advertisingIdInfo.getId();
                this.h = advertisingIdInfo.isLimitAdTrackingEnabled();
            }
            if (this.g == null) {
                this.g = "";
            }
        } catch (Throwable th) {
            zzawy().zzazi().zzj("Unable to get advertising id", th);
            this.g = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(this.g, Boolean.valueOf(this.h));
    }

    /* access modifiers changed from: package-private */
    public final void a(boolean z) {
        zzve();
        zzawy().zzazj().zzj("Setting useService", Boolean.valueOf(z));
        SharedPreferences.Editor edit = h().edit();
        edit.putBoolean("use_service", z);
        edit.apply();
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return true;
    }

    /* access modifiers changed from: protected */
    public final void a_() {
        this.f = getContext().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.zzjdj = this.f.getBoolean("has_been_opened", false);
        if (!this.zzjdj) {
            SharedPreferences.Editor edit = this.f.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
    }

    /* access modifiers changed from: package-private */
    public final String b(String str) {
        zzve();
        String str2 = (String) a(str).first;
        MessageDigest b2 = na.b("MD5");
        if (b2 == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new Object[]{new BigInteger(1, b2.digest(str2.getBytes()))});
    }

    /* access modifiers changed from: package-private */
    public final void b(boolean z) {
        zzve();
        zzawy().zzazj().zzj("Setting measurementEnabled", Boolean.valueOf(z));
        SharedPreferences.Editor edit = h().edit();
        edit.putBoolean("measurement_enabled", z);
        edit.apply();
    }

    /* access modifiers changed from: package-private */
    public final String c() {
        zzve();
        return h().getString("gmp_app_id", null);
    }

    /* access modifiers changed from: package-private */
    public final void c(String str) {
        zzve();
        SharedPreferences.Editor edit = h().edit();
        edit.putString("gmp_app_id", str);
        edit.apply();
    }

    /* access modifiers changed from: package-private */
    public final boolean c(boolean z) {
        zzve();
        return h().getBoolean("measurement_enabled", z);
    }

    /* access modifiers changed from: package-private */
    public final String d() {
        synchronized (this.d) {
            if (Math.abs(zzws().elapsedRealtime() - this.c) >= 1000) {
                return null;
            }
            String str = this.f3246b;
            return str;
        }
    }

    /* access modifiers changed from: package-private */
    public final Boolean e() {
        zzve();
        if (!h().contains("use_service")) {
            return null;
        }
        return Boolean.valueOf(h().getBoolean("use_service", false));
    }

    /* access modifiers changed from: package-private */
    public final void f() {
        zzve();
        zzawy().zzazj().log("Clearing collection preferences.");
        boolean contains = h().contains("measurement_enabled");
        boolean z = true;
        if (contains) {
            z = c(true);
        }
        SharedPreferences.Editor edit = h().edit();
        edit.clear();
        edit.apply();
        if (contains) {
            b(z);
        }
    }

    /* access modifiers changed from: protected */
    public final String g() {
        zzve();
        String string = h().getString("previous_os_version", null);
        zzawo().k();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor edit = h().edit();
            edit.putString("previous_os_version", str);
            edit.apply();
        }
        return string;
    }
}
