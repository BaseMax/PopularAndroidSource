package io.reactivex.internal.operators.flowable;

import io.reactivex.j;
import io.reactivex.k.d;
import org.b.c;

public final class dp<T> extends a<T, T> {
    public dp(j<T> jVar) {
        super(jVar);
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new d(cVar));
    }
}
