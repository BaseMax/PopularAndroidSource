package io.reactivex.internal.operators.flowable;

import io.reactivex.b.c;
import io.reactivex.d.a;
import io.reactivex.e.g;
import io.reactivex.j;
import java.util.concurrent.atomic.AtomicInteger;

public final class k<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final a<? extends T> f8352b;
    final int c;
    final g<? super c> d;
    final AtomicInteger e = new AtomicInteger();

    public k(a<? extends T> aVar, int i, g<? super c> gVar) {
        this.f8352b = aVar;
        this.c = i;
        this.d = gVar;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        this.f8352b.subscribe(cVar);
        if (this.e.incrementAndGet() == this.c) {
            this.f8352b.connect(this.d);
        }
    }
}
