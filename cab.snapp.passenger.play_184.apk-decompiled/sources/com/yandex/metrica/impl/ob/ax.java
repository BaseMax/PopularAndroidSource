package com.yandex.metrica.impl.ob;

import android.content.Context;

public class ax {

    /* renamed from: a  reason: collision with root package name */
    private final gd f5873a;

    /* renamed from: b  reason: collision with root package name */
    private final nq f5874b;
    private mc c;
    private long d;

    public ax(Context context, z zVar) {
        this(new gd(fq.a(context).b(zVar)), (nq) new np());
    }

    public ax(gd gdVar, nq nqVar) {
        this.f5873a = gdVar;
        this.f5874b = nqVar;
        this.d = this.f5873a.h(0);
    }

    public boolean a(t tVar) {
        return Boolean.FALSE.equals(tVar.b().o()) && this.c != null && this.f5874b.a() - this.d > this.c.f6422a;
    }

    public void a() {
        this.d = this.f5874b.a();
        this.f5873a.i(this.d).i();
    }

    public void a(mc mcVar) {
        this.c = mcVar;
    }
}
