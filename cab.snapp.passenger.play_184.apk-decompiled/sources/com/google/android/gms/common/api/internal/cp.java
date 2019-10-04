package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.C0065a;
import com.google.android.gms.common.internal.ag;
import java.util.Arrays;

public final class cp<O extends a.C0065a> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f2825a = true;

    /* renamed from: b  reason: collision with root package name */
    private final int f2826b;
    private final a<O> c;
    private final O d;

    private cp(a<O> aVar) {
        this.c = aVar;
        this.d = null;
        this.f2826b = System.identityHashCode(this);
    }

    private cp(a<O> aVar, O o) {
        this.c = aVar;
        this.d = o;
        this.f2826b = Arrays.hashCode(new Object[]{this.c, this.d});
    }

    public static <O extends a.C0065a> cp<O> zza(a<O> aVar, O o) {
        return new cp<>(aVar, o);
    }

    public static <O extends a.C0065a> cp<O> zzb(a<O> aVar) {
        return new cp<>(aVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof cp)) {
            return false;
        }
        cp cpVar = (cp) obj;
        return !this.f2825a && !cpVar.f2825a && ag.equal(this.c, cpVar.c) && ag.equal(this.d, cpVar.d);
    }

    public final int hashCode() {
        return this.f2826b;
    }

    public final String zzagy() {
        return this.c.getName();
    }
}
