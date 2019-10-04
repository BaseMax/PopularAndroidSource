package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.ob.ah;

public class bt<T, C extends ah> {

    /* renamed from: a  reason: collision with root package name */
    private final bz<T> f5904a;

    protected interface a<T> {
        boolean a(T t, i iVar);
    }

    protected bt(bz<T> bzVar) {
        this.f5904a = bzVar;
    }

    /* access modifiers changed from: protected */
    public boolean a(i iVar, a<T> aVar) {
        for (Object a2 : a(iVar).a()) {
            if (aVar.a(a2, iVar)) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public bw<T> a(i iVar) {
        return this.f5904a.a(iVar.e());
    }
}
