package io.reactivex.internal.operators.maybe;

import io.reactivex.q;
import io.reactivex.w;

abstract class a<T, R> extends q<R> {

    /* renamed from: a  reason: collision with root package name */
    protected final w<T> f8409a;

    a(w<T> wVar) {
        this.f8409a = wVar;
    }

    public final w<T> source() {
        return this.f8409a;
    }
}
