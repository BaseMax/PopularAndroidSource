package io.reactivex.internal.operators.flowable;

import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.f.t;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import java.util.concurrent.atomic.AtomicReference;

public final class ac<T> extends a<T, T> {
    final ao<? extends T> c;

    static final class a<T> extends t<T, T> implements al<T> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<c> f7928a = new AtomicReference<>();

        /* renamed from: b  reason: collision with root package name */
        ao<? extends T> f7929b;

        a(org.b.c<? super T> cVar, ao<? extends T> aoVar) {
            super(cVar);
            this.f7929b = aoVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this.f7928a, cVar);
        }

        public final void onNext(T t) {
            this.g++;
            this.d.onNext(t);
        }

        public final void onError(Throwable th) {
            this.d.onError(th);
        }

        public final void onSuccess(T t) {
            a(t);
        }

        public final void onComplete() {
            this.e = SubscriptionHelper.CANCELLED;
            ao<? extends T> aoVar = this.f7929b;
            this.f7929b = null;
            aoVar.subscribe(this);
        }

        public final void cancel() {
            super.cancel();
            DisposableHelper.dispose(this.f7928a);
        }
    }

    public ac(j<T> jVar, ao<? extends T> aoVar) {
        super(jVar);
        this.c = aoVar;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
