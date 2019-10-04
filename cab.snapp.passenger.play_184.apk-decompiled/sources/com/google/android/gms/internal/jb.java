package com.google.android.gms.internal;

public final class jb {

    /* renamed from: a  reason: collision with root package name */
    private final int f3234a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f3235b;
    private final boolean c;
    private /* synthetic */ iz d;

    jb(iz izVar, int i, boolean z, boolean z2) {
        this.d = izVar;
        this.f3234a = i;
        this.f3235b = z;
        this.c = z2;
    }

    public final void log(String str) {
        this.d.a(this.f3234a, this.f3235b, this.c, str, null, null, null);
    }

    public final void zzd(String str, Object obj, Object obj2, Object obj3) {
        this.d.a(this.f3234a, this.f3235b, this.c, str, obj, obj2, obj3);
    }

    public final void zze(String str, Object obj, Object obj2) {
        this.d.a(this.f3234a, this.f3235b, this.c, str, obj, obj2, null);
    }

    public final void zzj(String str, Object obj) {
        this.d.a(this.f3234a, this.f3235b, this.c, str, obj, null, null);
    }
}
