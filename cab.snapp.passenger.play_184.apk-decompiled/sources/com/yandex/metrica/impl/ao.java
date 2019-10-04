package com.yandex.metrica.impl;

import com.yandex.metrica.impl.ob.ni;
import com.yandex.metrica.impl.ob.z;
import java.util.concurrent.Executor;

public class ao {

    /* renamed from: a  reason: collision with root package name */
    private Executor f5716a;

    public ao() {
        this(ak.f5699a);
    }

    public ao(Executor executor) {
        this.f5716a = executor;
    }

    public an a(z zVar) {
        an anVar = new an(zVar, this.f5716a);
        anVar.setName(ni.c("YMM-NC[" + zVar + "]"));
        anVar.start();
        return anVar;
    }
}
