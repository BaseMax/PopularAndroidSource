package io.reactivex.internal.operators.flowable;

import io.reactivex.j;
import org.b.b;
import org.b.c;

public final class bl<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final b<? extends T> f8033b;

    public bl(b<? extends T> bVar) {
        this.f8033b = bVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f8033b.subscribe(cVar);
    }
}
