package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;

public final class af<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7739a;

    public af(ao<T> aoVar) {
        this.f7739a = aoVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7739a.subscribe(alVar);
    }
}
