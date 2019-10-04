package io.reactivex.internal.operators.b;

import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class b<R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final g f7015b;
    final org.b.b<? extends R> c;

    static final class a<R> extends AtomicReference<d> implements io.reactivex.d, o<R>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f7016a;

        /* renamed from: b  reason: collision with root package name */
        org.b.b<? extends R> f7017b;
        io.reactivex.b.c c;
        final AtomicLong d = new AtomicLong();

        a(c<? super R> cVar, org.b.b<? extends R> bVar) {
            this.f7016a = cVar;
            this.f7017b = bVar;
        }

        public final void onNext(R r) {
            this.f7016a.onNext(r);
        }

        public final void onError(Throwable th) {
            this.f7016a.onError(th);
        }

        public final void onComplete() {
            org.b.b<? extends R> bVar = this.f7017b;
            if (bVar == null) {
                this.f7016a.onComplete();
                return;
            }
            this.f7017b = null;
            bVar.subscribe(this);
        }

        public final void request(long j) {
            SubscriptionHelper.deferredRequest(this, this.d, j);
        }

        public final void cancel() {
            this.c.dispose();
            SubscriptionHelper.cancel(this);
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7016a.onSubscribe(this);
            }
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this, this.d, dVar);
        }
    }

    public b(g gVar, org.b.b<? extends R> bVar) {
        this.f7015b = gVar;
        this.c = bVar;
    }

    public final void subscribeActual(c<? super R> cVar) {
        this.f7015b.subscribe(new a(cVar, this.c));
    }
}
