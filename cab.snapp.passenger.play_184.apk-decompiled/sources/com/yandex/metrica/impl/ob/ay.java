package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.i;

public abstract class ay implements bb {

    /* renamed from: a  reason: collision with root package name */
    private final ar f5875a;

    /* access modifiers changed from: protected */
    public abstract void b(i iVar, t tVar);

    public ay(Context context, ar arVar) {
        context.getApplicationContext();
        this.f5875a = arVar;
        this.f5875a.a((bb) this);
    }

    public void a(i iVar, t tVar) {
        if (!b().d()) {
            b(iVar, tVar);
        }
    }

    public void a() {
        this.f5875a.b(this);
    }

    public ar b() {
        return this.f5875a;
    }
}
