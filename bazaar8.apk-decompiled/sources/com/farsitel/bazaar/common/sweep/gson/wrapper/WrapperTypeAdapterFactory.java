package com.farsitel.bazaar.common.sweep.gson.wrapper;

import c.c.a.c.f.a.c.a;
import c.c.a.c.f.a.c.b;
import c.c.a.c.f.a.c.c;
import c.c.a.c.f.a.h;
import c.e.d.p;
import c.e.d.x;
import com.crashlytics.android.answers.SessionEventTransform;
import com.farsitel.bazaar.common.sweep.gson.SweepTypeAdapterFactory;
import h.f.b.j;

/* compiled from: WrapperTypeAdapterFactory.kt */
public final class WrapperTypeAdapterFactory implements SweepTypeAdapterFactory {

    /* renamed from: a  reason: collision with root package name */
    public final b f12150a;

    /* renamed from: b  reason: collision with root package name */
    public final c.c.a.c.f.a.a.b f12151b;

    public WrapperTypeAdapterFactory(a aVar, c.c.a.c.f.a.a.a aVar2) {
        j.b(aVar, "defaultWrapper");
        j.b(aVar2, "hooks");
        this.f12150a = new b(aVar);
        this.f12151b = new c.c.a.c.f.a.a.b(aVar2);
    }

    public <T> x<T> a(c.e.d.j jVar, c.e.d.c.a<T> aVar) {
        j.b(jVar, "gson");
        j.b(aVar, SessionEventTransform.TYPE_KEY);
        return SweepTypeAdapterFactory.a.a(this, jVar, aVar);
    }

    public <T> x<T> a(c.e.d.j jVar, c.e.d.c.a<T> aVar, x<T> xVar, x<p> xVar2) {
        j.b(jVar, "gson");
        j.b(aVar, SessionEventTransform.TYPE_KEY);
        j.b(xVar, "delegate");
        j.b(xVar2, "elementAdapter");
        if (!c.c.a.c.f.a.a(aVar.a(), h.class)) {
            return xVar;
        }
        c cVar = new c(jVar, xVar, xVar2, aVar, this.f12150a, this.f12151b);
        return cVar;
    }
}
