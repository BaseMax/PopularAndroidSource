package com.farsitel.bazaar.common.sweep.gson;

import c.e.d.j;
import c.e.d.p;
import c.e.d.x;
import c.e.d.y;
import com.crashlytics.android.answers.SessionEventTransform;

/* compiled from: SweepTypeAdapterFactory.kt */
public interface SweepTypeAdapterFactory extends y {

    /* compiled from: SweepTypeAdapterFactory.kt */
    public static final class a {
        public static <T> x<T> a(SweepTypeAdapterFactory sweepTypeAdapterFactory, j jVar, c.e.d.c.a<T> aVar) {
            h.f.b.j.b(jVar, "gson");
            h.f.b.j.b(aVar, SessionEventTransform.TYPE_KEY);
            x<T> a2 = jVar.a((y) sweepTypeAdapterFactory, aVar);
            x<p> a3 = jVar.a(p.class);
            h.f.b.j.a((Object) a2, "delegate");
            h.f.b.j.a((Object) a3, "elementAdapter");
            return sweepTypeAdapterFactory.a(jVar, aVar, a2, a3);
        }
    }

    <T> x<T> a(j jVar, c.e.d.c.a<T> aVar, x<T> xVar, x<p> xVar2);
}
