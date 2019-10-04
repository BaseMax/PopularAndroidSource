package com.google.android.gms.internal;

final class bi implements aw<bj> {

    /* renamed from: a  reason: collision with root package name */
    private final z f3088a;

    /* renamed from: b  reason: collision with root package name */
    private final bj f3089b = new bj();

    public bi(z zVar) {
        this.f3088a = zVar;
    }

    public final void zzc(String str, boolean z) {
        if ("ga_dryRun".equals(str)) {
            this.f3089b.zzdxs = z ? 1 : 0;
            return;
        }
        this.f3088a.zzwt().zzd("Bool xml configuration name not recognized", str);
    }

    public final void zzd(String str, int i) {
        if ("ga_dispatchPeriod".equals(str)) {
            this.f3089b.zzdxr = i;
        } else {
            this.f3088a.zzwt().zzd("Int xml configuration name not recognized", str);
        }
    }

    public final void zzi(String str, String str2) {
    }

    public final void zzj(String str, String str2) {
        if ("ga_appName".equals(str)) {
            this.f3089b.zzdqz = str2;
        } else if ("ga_appVersion".equals(str)) {
            this.f3089b.zzdra = str2;
        } else if ("ga_logLevel".equals(str)) {
            this.f3089b.zzdxq = str2;
        } else {
            this.f3088a.zzwt().zzd("String xml configuration name not recognized", str);
        }
    }

    public final /* synthetic */ au zzyo() {
        return this.f3089b;
    }
}
