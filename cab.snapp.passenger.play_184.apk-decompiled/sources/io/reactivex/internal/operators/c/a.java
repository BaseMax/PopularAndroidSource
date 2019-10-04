package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.z;

abstract class a<T, U> extends z<U> {

    /* renamed from: a  reason: collision with root package name */
    protected final ae<T> f7091a;

    a(ae<T> aeVar) {
        this.f7091a = aeVar;
    }

    public final ae<T> source() {
        return this.f7091a;
    }
}
