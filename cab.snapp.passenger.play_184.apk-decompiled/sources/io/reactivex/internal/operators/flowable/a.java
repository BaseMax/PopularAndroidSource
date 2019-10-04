package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.a.b;
import io.reactivex.j;

abstract class a<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    protected final j<T> f7923b;

    a(j<T> jVar) {
        this.f7923b = (j) b.requireNonNull(jVar, "source is null");
    }

    public final org.b.b<T> source() {
        return this.f7923b;
    }
}
