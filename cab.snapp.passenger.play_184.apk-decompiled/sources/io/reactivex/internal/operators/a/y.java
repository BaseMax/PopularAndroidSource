package io.reactivex.internal.operators.a;

import io.reactivex.a;
import io.reactivex.c.b;
import io.reactivex.d;
import io.reactivex.f;
import io.reactivex.g;

public final class y extends a {

    /* renamed from: a  reason: collision with root package name */
    final g f7008a;

    /* renamed from: b  reason: collision with root package name */
    final f f7009b;

    public y(g gVar, f fVar) {
        this.f7008a = gVar;
        this.f7009b = fVar;
    }

    public final void subscribeActual(d dVar) {
        try {
            this.f7008a.subscribe(this.f7009b.apply(dVar));
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            b.throwIfFatal(th);
            io.reactivex.g.a.onError(th);
        }
    }
}
