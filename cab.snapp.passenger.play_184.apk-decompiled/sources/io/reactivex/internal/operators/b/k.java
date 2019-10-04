package io.reactivex.internal.operators.b;

import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.b;
import org.b.c;
import org.b.d;

public final class k<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final w<T> f7052b;
    final h<? super T, ? extends b<? extends R>> c;

    static final class a<T, R> extends AtomicReference<d> implements o<R>, t<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f7053a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends b<? extends R>> f7054b;
        io.reactivex.b.c c;
        final AtomicLong d = new AtomicLong();

        a(c<? super R> cVar, h<? super T, ? extends b<? extends R>> hVar) {
            this.f7053a = cVar;
            this.f7054b = hVar;
        }

        public final void onNext(R r) {
            this.f7053a.onNext(r);
        }

        public final void onError(Throwable th) {
            this.f7053a.onError(th);
        }

        public final void onComplete() {
            this.f7053a.onComplete();
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
                this.f7053a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            try {
                ((b) io.reactivex.internal.a.b.requireNonNull(this.f7054b.apply(t), "The mapper returned a null Publisher")).subscribe(this);
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f7053a.onError(th);
            }
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this, this.d, dVar);
        }
    }

    public k(w<T> wVar, h<? super T, ? extends b<? extends R>> hVar) {
        this.f7052b = wVar;
        this.c = hVar;
    }

    public final void subscribeActual(c<? super R> cVar) {
        this.f7052b.subscribe(new a(cVar, this.c));
    }
}
