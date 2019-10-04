package io.reactivex.internal.f;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.subscriptions.c;
import io.reactivex.o;
import org.b.d;

public abstract class h<T, R> extends c<R> implements o<T> {
    protected d d;
    protected boolean e;

    public h(org.b.c<? super R> cVar) {
        super(cVar);
    }

    public void onSubscribe(d dVar) {
        if (SubscriptionHelper.validate(this.d, dVar)) {
            this.d = dVar;
            this.h.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }

    public void onError(Throwable th) {
        this.i = null;
        this.h.onError(th);
    }

    public void onComplete() {
        if (this.e) {
            complete(this.i);
        } else {
            this.h.onComplete();
        }
    }

    public void cancel() {
        super.cancel();
        this.d.cancel();
    }
}
