package io.reactivex.internal.operators.flowable;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;

public final class aa<T> extends a<T, T> {
    final g c;

    static final class a<T> extends AtomicReference<c> implements d, o<T>, org.b.d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f7924a;

        /* renamed from: b  reason: collision with root package name */
        org.b.d f7925b;
        g c;
        boolean d;

        a(org.b.c<? super T> cVar, g gVar) {
            this.f7924a = cVar;
            this.c = gVar;
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.f7925b, dVar)) {
                this.f7925b = dVar;
                this.f7924a.onSubscribe(this);
            }
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onNext(T t) {
            this.f7924a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f7924a.onError(th);
        }

        public final void onComplete() {
            if (this.d) {
                this.f7924a.onComplete();
                return;
            }
            this.d = true;
            this.f7925b = SubscriptionHelper.CANCELLED;
            g gVar = this.c;
            this.c = null;
            gVar.subscribe(this);
        }

        public final void request(long j) {
            this.f7925b.request(j);
        }

        public final void cancel() {
            this.f7925b.cancel();
            DisposableHelper.dispose(this);
        }
    }

    public aa(j<T> jVar, g gVar) {
        super(jVar);
        this.c = gVar;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
