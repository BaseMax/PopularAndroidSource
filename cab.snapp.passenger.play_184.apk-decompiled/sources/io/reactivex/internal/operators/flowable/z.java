package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.j;
import org.b.b;
import org.b.c;

public final class z<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final b<T> f8408b;
    final h<? super T, ? extends b<? extends R>> c;
    final int d;
    final ErrorMode e;

    public z(b<T> bVar, h<? super T, ? extends b<? extends R>> hVar, int i, ErrorMode errorMode) {
        this.f8408b = bVar;
        this.c = hVar;
        this.d = i;
        this.e = errorMode;
    }

    public final void subscribeActual(c<? super R> cVar) {
        if (!dk.tryScalarXMapSubscribe(this.f8408b, cVar, this.c)) {
            this.f8408b.subscribe(w.subscribe(cVar, this.c, this.d, this.e));
        }
    }
}
