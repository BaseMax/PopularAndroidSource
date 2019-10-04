package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.b.d;
import io.reactivex.z;

public final class bn<T> extends io.reactivex.a implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7216a;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f7217a;

        /* renamed from: b  reason: collision with root package name */
        c f7218b;

        public final void onNext(T t) {
        }

        a(io.reactivex.d dVar) {
            this.f7217a = dVar;
        }

        public final void onSubscribe(c cVar) {
            this.f7218b = cVar;
            this.f7217a.onSubscribe(this);
        }

        public final void onError(Throwable th) {
            this.f7217a.onError(th);
        }

        public final void onComplete() {
            this.f7217a.onComplete();
        }

        public final void dispose() {
            this.f7218b.dispose();
        }

        public final boolean isDisposed() {
            return this.f7218b.isDisposed();
        }
    }

    public bn(ae<T> aeVar) {
        this.f7216a = aeVar;
    }

    public final void subscribeActual(io.reactivex.d dVar) {
        this.f7216a.subscribe(new a(dVar));
    }

    public final z<T> fuseToObservable() {
        return io.reactivex.g.a.onAssembly(new bm(this.f7216a));
    }
}
