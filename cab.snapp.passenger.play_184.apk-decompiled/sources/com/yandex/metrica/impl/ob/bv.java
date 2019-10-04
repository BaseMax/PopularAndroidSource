package com.yandex.metrica.impl.ob;

import java.util.Collections;
import java.util.List;

public class bv<BaseHandler> extends bw<BaseHandler> {

    /* renamed from: a  reason: collision with root package name */
    private final List<BaseHandler> f5907a;

    public bv(List<BaseHandler> list) {
        this.f5907a = Collections.unmodifiableList(list);
    }

    public List<? extends BaseHandler> a() {
        return this.f5907a;
    }
}
