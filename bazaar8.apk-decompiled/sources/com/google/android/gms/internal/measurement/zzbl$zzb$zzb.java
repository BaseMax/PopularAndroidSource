package com.google.android.gms.internal.measurement;

import c.e.a.b.g.f.C0867rb;
import c.e.a.b.g.f.C0871sb;
import c.e.a.b.g.f.E;

public enum zzbl$zzb$zzb implements C0867rb {
    UNKNOWN_MATCH_TYPE(0),
    REGEXP(1),
    BEGINS_WITH(2),
    ENDS_WITH(3),
    PARTIAL(4),
    EXACT(5),
    IN_LIST(6);
    

    /* renamed from: a  reason: collision with root package name */
    public static final C0871sb<zzbl$zzb$zzb> f13165a = null;
    public final int value;

    static {
        f13165a = new E();
    }

    /* access modifiers changed from: public */
    zzbl$zzb$zzb(int i2) {
        this.value = i2;
    }

    public final int a() {
        return this.value;
    }

    public static zzbl$zzb$zzb a(int i2) {
        switch (i2) {
            case 0:
                return UNKNOWN_MATCH_TYPE;
            case 1:
                return REGEXP;
            case 2:
                return BEGINS_WITH;
            case 3:
                return ENDS_WITH;
            case 4:
                return PARTIAL;
            case 5:
                return EXACT;
            case 6:
                return IN_LIST;
            default:
                return null;
        }
    }
}
