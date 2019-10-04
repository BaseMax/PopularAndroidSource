package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.j;
import org.b.c;

public final class ch extends j<Object> {
    public static final j<Object> INSTANCE = new ch();

    private ch() {
    }

    public final void subscribeActual(c<? super Object> cVar) {
        cVar.onSubscribe(EmptySubscription.INSTANCE);
    }
}
