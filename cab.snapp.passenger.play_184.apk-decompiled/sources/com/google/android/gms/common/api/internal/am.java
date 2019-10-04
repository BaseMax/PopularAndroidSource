package com.google.android.gms.common.api.internal;

final class am implements ct {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ al f2765a;

    am(al alVar) {
        this.f2765a = alVar;
    }

    public final void zzbf(boolean z) {
        this.f2765a.e.sendMessage(this.f2765a.e.obtainMessage(1, Boolean.valueOf(z)));
    }
}
