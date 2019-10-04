package com.google.android.gms.internal;

public final class ak extends x {

    /* renamed from: a  reason: collision with root package name */
    private final a f3061a = new a();

    ak(z zVar) {
        super(zVar);
    }

    public final a zzxy() {
        c();
        return this.f3061a;
    }

    /* access modifiers changed from: protected */
    public final void zzvf() {
        this.zzdta.zzwv().zzvc().zzb(this.f3061a);
        cf zzwz = this.zzdta.zzwz();
        String zzvi = zzwz.zzvi();
        if (zzvi != null) {
            this.f3061a.setAppName(zzvi);
        }
        String zzvj = zzwz.zzvj();
        if (zzvj != null) {
            this.f3061a.setAppVersion(zzvj);
        }
    }
}
