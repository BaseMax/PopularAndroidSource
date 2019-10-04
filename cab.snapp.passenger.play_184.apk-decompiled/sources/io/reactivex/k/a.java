package io.reactivex.k;

import io.reactivex.internal.util.g;
import io.reactivex.o;
import org.b.d;

public abstract class a<T> implements o<T> {

    /* renamed from: b  reason: collision with root package name */
    d f8662b;

    public final void onSubscribe(d dVar) {
        if (g.validate(this.f8662b, dVar, getClass())) {
            this.f8662b = dVar;
            d dVar2 = this.f8662b;
            if (dVar2 != null) {
                dVar2.request(Long.MAX_VALUE);
            }
        }
    }
}
