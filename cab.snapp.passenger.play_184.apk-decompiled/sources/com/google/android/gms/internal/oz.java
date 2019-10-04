package com.google.android.gms.internal;

final class oz {

    /* renamed from: a  reason: collision with root package name */
    private final ph f3430a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f3431b;

    private oz(int i) {
        this.f3431b = new byte[i];
        this.f3430a = ph.zzbc(this.f3431b);
    }

    /* synthetic */ oz(int i, byte b2) {
        this(i);
    }

    public final ou zzcvr() {
        this.f3430a.zzcwt();
        return new pb(this.f3431b);
    }

    public final ph zzcvs() {
        return this.f3430a;
    }
}
