package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.bo;

class hc {

    /* renamed from: a  reason: collision with root package name */
    private final hf f6087a;

    /* renamed from: b  reason: collision with root package name */
    private final bo.a f6088b;

    enum a {
        THIS,
        OTHER,
        UNKNOWN
    }

    hc(bo.a aVar, hf hfVar) {
        this.f6087a = hfVar;
        this.f6088b = aVar;
    }

    public hb a() {
        return this.f6087a.c();
    }

    public a a(hh hhVar) {
        return a.THIS;
    }

    public hf b() {
        return this.f6087a;
    }

    public String toString() {
        return "Bid{mCredentials='" + this.f6087a + '\'' + ", mDescriptor=" + this.f6088b + '}';
    }

    public bo.a c() {
        return this.f6088b;
    }
}
