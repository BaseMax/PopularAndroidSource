package com.google.android.gms.internal.measurement;

import c.e.a.b.g.f.C0867rb;
import c.e.a.b.g.f.C0871sb;
import c.e.a.b.g.f.D;

public enum zzbl$zza$zzb implements C0867rb {
    UNKNOWN_COMPARISON_TYPE(0),
    LESS_THAN(1),
    GREATER_THAN(2),
    EQUAL(3),
    BETWEEN(4);
    

    /* renamed from: a  reason: collision with root package name */
    public static final C0871sb<zzbl$zza$zzb> f13163a = null;
    public final int value;

    static {
        f13163a = new D();
    }

    /* access modifiers changed from: public */
    zzbl$zza$zzb(int i2) {
        this.value = i2;
    }

    public final int a() {
        return this.value;
    }

    public static zzbl$zza$zzb a(int i2) {
        if (i2 == 0) {
            return UNKNOWN_COMPARISON_TYPE;
        }
        if (i2 == 1) {
            return LESS_THAN;
        }
        if (i2 == 2) {
            return GREATER_THAN;
        }
        if (i2 == 3) {
            return EQUAL;
        }
        if (i2 != 4) {
            return null;
        }
        return BETWEEN;
    }
}
