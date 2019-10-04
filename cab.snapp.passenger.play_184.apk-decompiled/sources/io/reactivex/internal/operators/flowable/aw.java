package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.b.h;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.j;
import org.b.c;

public final class aw extends j<Object> implements h<Object> {
    public static final j<Object> INSTANCE = new aw();

    public final Object call() {
        return null;
    }

    private aw() {
    }

    public final void subscribeActual(c<? super Object> cVar) {
        EmptySubscription.complete(cVar);
    }
}
