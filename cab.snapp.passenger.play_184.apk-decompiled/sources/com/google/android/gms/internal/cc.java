package com.google.android.gms.internal;

final class cc extends w implements aw<cd> {

    /* renamed from: a  reason: collision with root package name */
    private final cd f3116a = new cd();

    public cc(z zVar) {
        super(zVar);
    }

    public final void zzc(String str, boolean z) {
        if ("ga_autoActivityTracking".equals(str)) {
            this.f3116a.zzdzf = z;
        } else if ("ga_anonymizeIp".equals(str)) {
            this.f3116a.zzdzg = z;
        } else if ("ga_reportUncaughtExceptions".equals(str)) {
            this.f3116a.zzdzh = z ? 1 : 0;
        } else {
            zzd("bool configuration name not recognized", str);
        }
    }

    public final void zzd(String str, int i) {
        if ("ga_sessionTimeout".equals(str)) {
            this.f3116a.zzdze = i;
        } else {
            zzd("int configuration name not recognized", str);
        }
    }

    public final void zzi(String str, String str2) {
        this.f3116a.zzdzi.put(str, str2);
    }

    public final void zzj(String str, String str2) {
        if ("ga_trackingId".equals(str)) {
            this.f3116a.zzdom = str2;
        } else if ("ga_sampleFrequency".equals(str)) {
            try {
                this.f3116a.zzdzd = Double.parseDouble(str2);
            } catch (NumberFormatException e) {
                zzc("Error parsing ga_sampleFrequency value", str2, e);
            }
        } else {
            zzd("string configuration name not recognized", str);
        }
    }

    public final /* synthetic */ au zzyo() {
        return this.f3116a;
    }
}
