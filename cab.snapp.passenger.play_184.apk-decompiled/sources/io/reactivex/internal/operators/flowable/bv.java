package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.b.h;
import io.reactivex.internal.subscriptions.d;
import io.reactivex.j;
import org.b.c;

public final class bv<T> extends j<T> implements h<T> {

    /* renamed from: b  reason: collision with root package name */
    private final T f8063b;

    public bv(T t) {
        this.f8063b = t;
    }

    public final void subscribeActual(c<? super T> cVar) {
        cVar.onSubscribe(new d(cVar, this.f8063b));
    }

    public final T call() {
        return this.f8063b;
    }
}
