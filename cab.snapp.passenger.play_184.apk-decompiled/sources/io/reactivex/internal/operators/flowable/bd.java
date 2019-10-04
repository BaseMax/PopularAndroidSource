package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.j;
import org.b.b;
import org.b.c;

public final class bd<T, U> extends j<U> {

    /* renamed from: b  reason: collision with root package name */
    final b<T> f8015b;
    final h<? super T, ? extends b<? extends U>> c;
    final boolean d;
    final int e;
    final int f;

    public bd(b<T> bVar, h<? super T, ? extends b<? extends U>> hVar, boolean z, int i, int i2) {
        this.f8015b = bVar;
        this.c = hVar;
        this.d = z;
        this.e = i;
        this.f = i2;
    }

    public final void subscribeActual(c<? super U> cVar) {
        if (!dk.tryScalarXMapSubscribe(this.f8015b, cVar, this.c)) {
            this.f8015b.subscribe(az.subscribe(cVar, this.c, this.d, this.e, this.f));
        }
    }
}
