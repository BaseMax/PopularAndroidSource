package io.reactivex.k;

import io.reactivex.b.c;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.g;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public abstract class b<T> implements c, o<T> {
    final AtomicReference<d> f = new AtomicReference<>();

    public final void onSubscribe(d dVar) {
        if (g.setOnce(this.f, dVar, getClass())) {
            this.f.get().request(Long.MAX_VALUE);
        }
    }

    public final boolean isDisposed() {
        return this.f.get() == SubscriptionHelper.CANCELLED;
    }

    public final void dispose() {
        SubscriptionHelper.cancel(this.f);
    }
}
