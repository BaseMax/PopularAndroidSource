package com.farsitel.bazaar.common.sweep.gson.unwrapper;

import c.c.a.c.f.a.b.a;
import c.c.a.c.f.a.b.b;
import c.c.a.c.f.a.b.c;
import c.c.a.c.f.a.g;
import c.e.d.p;
import c.e.d.x;
import com.crashlytics.android.answers.SessionEventTransform;
import com.farsitel.bazaar.common.sweep.gson.SweepTypeAdapterFactory;
import h.f.b.j;

/* compiled from: UnwrapperTypeAdapterFactory.kt */
public final class UnwrapperTypeAdapterFactory implements SweepTypeAdapterFactory {

    /* renamed from: a  reason: collision with root package name */
    public final b f12148a = new b(this.f12149b);

    /* renamed from: b  reason: collision with root package name */
    public final a f12149b;

    public UnwrapperTypeAdapterFactory(a aVar) {
        j.b(aVar, "defaultUnwrapper");
        this.f12149b = aVar;
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
        Class<? super T> a2 = aVar.a();
        j.a((Object) a2, "type.rawType");
        if (!a(a2)) {
            return xVar;
        }
        c cVar = new c(jVar, xVar, xVar2, aVar, this.f12148a);
        return cVar;
    }

    public final <T> boolean a(Class<T> cls) {
        boolean a2 = c.c.a.c.f.a.a(cls, g.class);
        if (!this.f12149b.a()) {
            return a2;
        }
        if (this.f12149b.a(cls) != null || a2) {
            return true;
        }
        throw new IllegalStateException("default unwrapper is forced but nothing provided. Try to implement unwrapWith() method or annotate your class with SweepUnwrapper");
    }
}
