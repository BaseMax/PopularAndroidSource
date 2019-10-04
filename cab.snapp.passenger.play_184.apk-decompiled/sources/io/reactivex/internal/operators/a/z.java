package io.reactivex.internal.operators.a;

import io.reactivex.a;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.d;
import io.reactivex.internal.operators.b.i;
import io.reactivex.y;

public final class z<T> extends ai<y<T>> {

    /* renamed from: a  reason: collision with root package name */
    final a f7010a;

    public z(a aVar) {
        this.f7010a = aVar;
    }

    public final void subscribeActual(al<? super y<T>> alVar) {
        this.f7010a.subscribe((d) new i(alVar));
    }
}
