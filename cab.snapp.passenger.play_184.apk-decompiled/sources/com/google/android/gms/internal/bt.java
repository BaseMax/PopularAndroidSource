package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.analytics.r;

public final class bt extends x {

    /* renamed from: a  reason: collision with root package name */
    SharedPreferences f3102a;

    /* renamed from: b  reason: collision with root package name */
    private long f3103b;
    private long c = -1;
    private final bu d;

    protected bt(z zVar) {
        super(zVar);
        bu buVar = new bu(this, "monitoring", bf.zzdxl.get().longValue(), (byte) 0);
        this.d = buVar;
    }

    public final String zzaaa() {
        r.zzve();
        c();
        String string = this.f3102a.getString("installation_campaign", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string;
    }

    public final bu zzaab() {
        return this.d;
    }

    public final void zzef(String str) {
        r.zzve();
        c();
        SharedPreferences.Editor edit = this.f3102a.edit();
        if (TextUtils.isEmpty(str)) {
            edit.remove("installation_campaign");
        } else {
            edit.putString("installation_campaign", str);
        }
        if (!edit.commit()) {
            zzdx("Failed to commit campaign data");
        }
    }

    public final long zzzy() {
        r.zzve();
        c();
        if (this.c == -1) {
            this.c = this.f3102a.getLong("last_dispatch", 0);
        }
        return this.c;
    }

    /* access modifiers changed from: protected */
    public final void zzvf() {
        this.f3102a = this.zzdta.getContext().getSharedPreferences("com.google.android.gms.analytics.prefs", 0);
    }

    public final long zzzw() {
        r.zzve();
        c();
        if (this.f3103b == 0) {
            long j = this.f3102a.getLong("first_run", 0);
            if (j != 0) {
                this.f3103b = j;
            } else {
                long currentTimeMillis = this.zzdta.zzws().currentTimeMillis();
                SharedPreferences.Editor edit = this.f3102a.edit();
                edit.putLong("first_run", currentTimeMillis);
                if (!edit.commit()) {
                    zzdx("Failed to commit first run time");
                }
                this.f3103b = currentTimeMillis;
            }
        }
        return this.f3103b;
    }

    public final ca zzzx() {
        return new ca(this.zzdta.zzws(), zzzw());
    }

    public final void zzzz() {
        r.zzve();
        c();
        long currentTimeMillis = this.zzdta.zzws().currentTimeMillis();
        SharedPreferences.Editor edit = this.f3102a.edit();
        edit.putLong("last_dispatch", currentTimeMillis);
        edit.apply();
        this.c = currentTimeMillis;
    }
}
