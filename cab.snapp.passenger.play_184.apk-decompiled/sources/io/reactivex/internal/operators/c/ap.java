package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.a;
import io.reactivex.e.g;
import io.reactivex.internal.c.m;
import io.reactivex.z;

public final class ap<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    private final g<? super c> f7139b;
    private final a c;

    public ap(z<T> zVar, g<? super c> gVar, a aVar) {
        super(zVar);
        this.f7139b = gVar;
        this.c = aVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new m(agVar, this.f7139b, this.c));
    }
}
