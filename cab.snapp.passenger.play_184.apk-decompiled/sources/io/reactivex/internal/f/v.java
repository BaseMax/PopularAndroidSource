package io.reactivex.internal.f;

import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class v<T> extends AtomicReference<c> implements c, o<T>, d {

    /* renamed from: a  reason: collision with root package name */
    final org.b.c<? super T> f6881a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<d> f6882b = new AtomicReference<>();

    public v(org.b.c<? super T> cVar) {
        this.f6881a = cVar;
    }

    public final void onSubscribe(d dVar) {
        if (SubscriptionHelper.setOnce(this.f6882b, dVar)) {
            this.f6881a.onSubscribe(this);
        }
    }

    public final void onNext(T t) {
        this.f6881a.onNext(t);
    }

    public final void onError(Throwable th) {
        DisposableHelper.dispose(this);
        this.f6881a.onError(th);
    }

    public final void onComplete() {
        DisposableHelper.dispose(this);
        this.f6881a.onComplete();
    }

    public final void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            this.f6882b.get().request(j);
        }
    }

    public final void dispose() {
        SubscriptionHelper.cancel(this.f6882b);
        DisposableHelper.dispose(this);
    }

    public final boolean isDisposed() {
        return this.f6882b.get() == SubscriptionHelper.CANCELLED;
    }

    public final void cancel() {
        dispose();
    }

    public final void setResource(c cVar) {
        DisposableHelper.set(this, cVar);
    }
}
