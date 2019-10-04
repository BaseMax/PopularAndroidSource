package io.reactivex.internal.operators.flowable;

import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.f.t;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class ab<T> extends a<T, T> {
    final w<? extends T> c;

    static final class a<T> extends t<T, T> implements io.reactivex.t<T> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<c> f7926a = new AtomicReference<>();

        /* renamed from: b  reason: collision with root package name */
        w<? extends T> f7927b;
        boolean c;

        a(org.b.c<? super T> cVar, w<? extends T> wVar) {
            super(cVar);
            this.f7927b = wVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this.f7926a, cVar);
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
            if (this.c) {
                this.d.onComplete();
                return;
            }
            this.c = true;
            this.e = SubscriptionHelper.CANCELLED;
            w<? extends T> wVar = this.f7927b;
            this.f7927b = null;
            wVar.subscribe(this);
        }

        public final void cancel() {
            super.cancel();
            DisposableHelper.dispose(this.f7926a);
        }
    }

    public ab(j<T> jVar, w<? extends T> wVar) {
        super(jVar);
        this.c = wVar;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
