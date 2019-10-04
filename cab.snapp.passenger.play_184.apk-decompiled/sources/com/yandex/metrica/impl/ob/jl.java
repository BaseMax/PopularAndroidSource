package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.ke;

public abstract class jl<T> extends jq {

    /* renamed from: a  reason: collision with root package name */
    private final T f6177a;

    /* access modifiers changed from: protected */
    public abstract void a(ke.a.C0115a aVar);

    jl(int i, String str, T t, pa<String> paVar, ji jiVar) {
        super(i, str, paVar, jiVar);
        this.f6177a = t;
    }

    public T b() {
        return this.f6177a;
    }

    public void a(jy jyVar) {
        if (f()) {
            ke.a.C0115a a2 = e().a(jyVar, jyVar.a(d(), c()), this);
            if (a2 != null) {
                a(a2);
            }
        }
    }
}
