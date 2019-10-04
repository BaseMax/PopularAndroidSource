package io.reactivex.observers;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.util.g;

public abstract class a<T> implements ag<T> {

    /* renamed from: a  reason: collision with root package name */
    private c f8670a;

    public final void onSubscribe(c cVar) {
        if (g.validate(this.f8670a, cVar, getClass())) {
            this.f8670a = cVar;
        }
    }
}
