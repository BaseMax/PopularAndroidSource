package io.reactivex.internal.operators.a;

import io.reactivex.g;
import io.reactivex.internal.c.z;
import io.reactivex.j;
import org.b.c;

public final class ao<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final g f6937b;

    public ao(g gVar) {
        this.f6937b = gVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f6937b.subscribe(new z(cVar));
    }
}
