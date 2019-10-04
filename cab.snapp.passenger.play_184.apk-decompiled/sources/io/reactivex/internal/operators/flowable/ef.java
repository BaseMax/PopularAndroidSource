package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.operators.flowable.eb;
import io.reactivex.j;
import org.b.b;
import org.b.c;

public final class ef<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final b<T> f8244b;
    final long c;

    public ef(b<T> bVar, long j) {
        this.f8244b = bVar;
        this.c = j;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f8244b.subscribe(new eb.a(cVar, this.c));
    }
}
