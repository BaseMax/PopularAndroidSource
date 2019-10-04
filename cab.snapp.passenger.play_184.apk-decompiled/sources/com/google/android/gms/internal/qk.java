package com.google.android.gms.internal;

final class qk implements qq {

    /* renamed from: a  reason: collision with root package name */
    private qq[] f3474a;

    qk(qq... qqVarArr) {
        this.f3474a = qqVarArr;
    }

    public final boolean zzi(Class<?> cls) {
        for (qq zzi : this.f3474a) {
            if (zzi.zzi(cls)) {
                return true;
            }
        }
        return false;
    }

    public final qp zzj(Class<?> cls) {
        for (qq qqVar : this.f3474a) {
            if (qqVar.zzi(cls)) {
                return qqVar.zzj(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
