package io.reactivex.internal.operators.e;

import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.e.h;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.b;
import org.b.c;
import org.b.d;

public final class ac<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final ao<T> f7732b;
    final h<? super T, ? extends b<? extends R>> c;

    static final class a<S, T> extends AtomicLong implements al<S>, o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f7733a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super S, ? extends b<? extends T>> f7734b;
        final AtomicReference<d> c = new AtomicReference<>();
        io.reactivex.b.c d;

        a(c<? super T> cVar, h<? super S, ? extends b<? extends T>> hVar) {
            this.f7733a = cVar;
            this.f7734b = hVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            this.d = cVar;
            this.f7733a.onSubscribe(this);
        }

        public final void onSuccess(S s) {
            try {
                ((b) io.reactivex.internal.a.b.requireNonNull(this.f7734b.apply(s), "the mapper returned a null Publisher")).subscribe(this);
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f7733a.onError(th);
            }
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this.c, this, dVar);
        }

        public final void onNext(T t) {
            this.f7733a.onNext(t);
        }

        public final void onComplete() {
            this.f7733a.onComplete();
        }

        public final void onError(Throwable th) {
            this.f7733a.onError(th);
        }

        public final void request(long j) {
            SubscriptionHelper.deferredRequest(this.c, this, j);
        }

        public final void cancel() {
            this.d.dispose();
            SubscriptionHelper.cancel(this.c);
        }
    }

    public ac(ao<T> aoVar, h<? super T, ? extends b<? extends R>> hVar) {
        this.f7732b = aoVar;
        this.c = hVar;
    }

    public final void subscribeActual(c<? super R> cVar) {
        this.f7732b.subscribe(new a(cVar, this.c));
    }
}
