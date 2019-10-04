package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;

public final class cf extends x {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f3118a;

    /* renamed from: b  reason: collision with root package name */
    protected int f3119b;
    private String c;
    private String d;
    private int e;
    private boolean f;
    private boolean g;

    public cf(z zVar) {
        super(zVar);
    }

    public final boolean zzaai() {
        c();
        return false;
    }

    public final boolean zzaaj() {
        c();
        return this.f;
    }

    public final boolean zzaak() {
        c();
        return this.g;
    }

    public final String zzvi() {
        c();
        return this.d;
    }

    public final String zzvj() {
        c();
        return this.c;
    }

    /* access modifiers changed from: protected */
    public final void zzvf() {
        ApplicationInfo applicationInfo;
        Context context = this.zzdta.getContext();
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 129);
        } catch (PackageManager.NameNotFoundException e2) {
            zzd("PackageManager doesn't know about the app package", e2);
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            zzdx("Couldn't get ApplicationInfo to load global config");
            return;
        }
        Bundle bundle = applicationInfo.metaData;
        if (bundle != null) {
            int i = bundle.getInt("com.google.android.gms.analytics.globalConfigResource");
            if (i > 0) {
                bj bjVar = (bj) new bh(zzwr()).zzav(i);
                if (bjVar != null) {
                    zzdu("Loading global XML config values");
                    boolean z = false;
                    if (bjVar.zzdqz != null) {
                        String str = bjVar.zzdqz;
                        this.d = str;
                        zzb("XML config - app name", str);
                    }
                    if (bjVar.zzdra != null) {
                        String str2 = bjVar.zzdra;
                        this.c = str2;
                        zzb("XML config - app version", str2);
                    }
                    if (bjVar.zzdxq != null) {
                        String lowerCase = bjVar.zzdxq.toLowerCase();
                        int i2 = "verbose".equals(lowerCase) ? 0 : "info".equals(lowerCase) ? 1 : "warning".equals(lowerCase) ? 2 : "error".equals(lowerCase) ? 3 : -1;
                        if (i2 >= 0) {
                            this.e = i2;
                            zza("XML config - log level", Integer.valueOf(i2));
                        }
                    }
                    if (bjVar.zzdxr >= 0) {
                        int i3 = bjVar.zzdxr;
                        this.f3119b = i3;
                        this.f3118a = true;
                        zzb("XML config - dispatch period (sec)", Integer.valueOf(i3));
                    }
                    if (bjVar.zzdxs != -1) {
                        if (bjVar.zzdxs == 1) {
                            z = true;
                        }
                        this.g = z;
                        this.f = true;
                        zzb("XML config - dry run", Boolean.valueOf(z));
                    }
                }
            }
        }
    }
}
