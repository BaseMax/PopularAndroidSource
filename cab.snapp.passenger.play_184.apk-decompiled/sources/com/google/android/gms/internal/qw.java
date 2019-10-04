package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.Map;

final class qw<T> implements rf<T> {

    /* renamed from: a  reason: collision with root package name */
    private final qr f3479a;

    /* renamed from: b  reason: collision with root package name */
    private final ru<?, ?> f3480b;
    private final boolean c;
    private final pl<?> d;

    private qw(Class<T> cls, ru<?, ?> ruVar, pl<?> plVar, qr qrVar) {
        this.f3480b = ruVar;
        this.c = plVar.a((Class<?>) cls);
        this.d = plVar;
        this.f3479a = qrVar;
    }

    static <T> qw<T> a(Class<T> cls, ru<?, ?> ruVar, pl<?> plVar, qr qrVar) {
        return new qw<>(cls, ruVar, plVar, qrVar);
    }

    public final void zza(T t, sn snVar) {
        Iterator<Map.Entry<?, Object>> it = this.d.a((Object) t).iterator();
        while (it.hasNext()) {
            Map.Entry next = it.next();
            pq pqVar = (pq) next.getKey();
            if (pqVar.zzcxi() != zzfjd.MESSAGE || pqVar.zzcxj() || pqVar.zzcxk()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            snVar.zzb(pqVar.zzhq(), next instanceof qb ? ((qb) next).zzcyk().toByteString() : next.getValue());
        }
        ru<?, ?> ruVar = this.f3480b;
        ruVar.a(ruVar.a(t), snVar);
    }

    public final int zzcp(T t) {
        ru<?, ?> ruVar = this.f3480b;
        int b2 = ruVar.b(ruVar.a(t)) + 0;
        return this.c ? b2 + this.d.a((Object) t).zzcxg() : b2;
    }
}
