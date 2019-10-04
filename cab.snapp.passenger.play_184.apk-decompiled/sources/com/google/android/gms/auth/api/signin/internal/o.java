package com.google.android.gms.auth.api.signin.internal;

public final class o {

    /* renamed from: a  reason: collision with root package name */
    private static int f2675a = 31;

    /* renamed from: b  reason: collision with root package name */
    private int f2676b = 1;

    public final int zzabn() {
        return this.f2676b;
    }

    public final o zzar(boolean z) {
        this.f2676b = (f2675a * this.f2676b) + (z ? 1 : 0);
        return this;
    }

    public final o zzs(Object obj) {
        this.f2676b = (f2675a * this.f2676b) + (obj == null ? 0 : obj.hashCode());
        return this;
    }
}
