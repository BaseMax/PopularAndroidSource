package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.kz;
import com.yandex.metrica.impl.ob.kz.a;
import com.yandex.metrica.impl.ob.kz.b;
import com.yandex.metrica.impl.ob.lb;
import com.yandex.metrica.impl.ob.lc;

public abstract class la<T extends lc, A extends kz.a, L extends kz.b<T, A>> extends lb<T, A, L> {

    /* renamed from: a  reason: collision with root package name */
    private t f6358a;

    public la(L l, lb.a<A> aVar, ma maVar, t tVar) {
        super(l, aVar, maVar, tVar);
        this.f6358a = tVar;
    }

    public synchronized void a(t tVar) {
        this.f6358a = tVar;
    }

    public t a() {
        return this.f6358a;
    }
}
