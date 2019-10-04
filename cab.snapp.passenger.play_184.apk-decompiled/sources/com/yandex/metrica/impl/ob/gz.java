package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.kg;
import com.yandex.metrica.impl.ob.kh;
import com.yandex.metrica.impl.v;

public class gz {

    /* renamed from: a  reason: collision with root package name */
    private nv f6074a;

    public gz() {
        this(new nv(v.a().b()));
    }

    gz(nv nvVar) {
        this.f6074a = nvVar;
    }

    public gj<kh.a> a() {
        return new gi(new gn(), new nw("AES/CBC/PKCS5Padding", this.f6074a.a(), this.f6074a.b()));
    }

    public gj<kg.a> b() {
        return new gi(new gm(), new nw("AES/CBC/PKCS5Padding", this.f6074a.a(), this.f6074a.b()));
    }
}
