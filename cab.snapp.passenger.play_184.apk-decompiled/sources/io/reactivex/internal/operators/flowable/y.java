package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.operators.flowable.x;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.j;
import org.b.b;
import org.b.c;

public final class y<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final b<T> f8407b;
    final h<? super T, ? extends b<? extends R>> c;
    final int d;
    final int e;
    final ErrorMode f;

    public y(b<T> bVar, h<? super T, ? extends b<? extends R>> hVar, int i, int i2, ErrorMode errorMode) {
        this.f8407b = bVar;
        this.c = hVar;
        this.d = i;
        this.e = i2;
        this.f = errorMode;
    }

    public final void subscribeActual(c<? super R> cVar) {
        b<T> bVar = this.f8407b;
        x.a aVar = new x.a(cVar, this.c, this.d, this.e, this.f);
        bVar.subscribe(aVar);
    }
}
