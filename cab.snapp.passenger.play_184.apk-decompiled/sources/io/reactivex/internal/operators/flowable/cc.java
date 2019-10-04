package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.operators.flowable.ca;
import io.reactivex.j;
import org.b.b;
import org.b.c;

public final class cc<T, U> extends j<U> {

    /* renamed from: b  reason: collision with root package name */
    final b<T> f8080b;
    final h<? super T, ? extends U> c;

    public cc(b<T> bVar, h<? super T, ? extends U> hVar) {
        this.f8080b = bVar;
        this.c = hVar;
    }

    public final void subscribeActual(c<? super U> cVar) {
        this.f8080b.subscribe(new ca.b(cVar, this.c));
    }
}
