package com.google.android.gms.common.api.internal;

abstract class ai {

    /* renamed from: a  reason: collision with root package name */
    private final ag f2760a;

    protected ai(ag agVar) {
        this.f2760a = agVar;
    }

    /* access modifiers changed from: protected */
    public abstract void zzaib();

    public final void zzc(ah ahVar) {
        ahVar.f2758a.lock();
        try {
            if (ahVar.k == this.f2760a) {
                zzaib();
                ahVar.f2758a.unlock();
            }
        } finally {
            ahVar.f2758a.unlock();
        }
    }
}
