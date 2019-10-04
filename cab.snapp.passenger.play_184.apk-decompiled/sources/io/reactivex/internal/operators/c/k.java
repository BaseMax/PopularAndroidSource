package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.g;
import io.reactivex.f.a;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;

public final class k<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final a<? extends T> f7581a;

    /* renamed from: b  reason: collision with root package name */
    final int f7582b;
    final g<? super c> c;
    final AtomicInteger d = new AtomicInteger();

    public k(a<? extends T> aVar, int i, g<? super c> gVar) {
        this.f7581a = aVar;
        this.f7582b = i;
        this.c = gVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7581a.subscribe(agVar);
        if (this.d.incrementAndGet() == this.f7582b) {
            this.f7581a.connect(this.c);
        }
    }
}
