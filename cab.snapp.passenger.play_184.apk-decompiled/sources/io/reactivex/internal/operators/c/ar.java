package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.b.d;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.z;

public final class ar<T> extends q<T> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7143a;

    /* renamed from: b  reason: collision with root package name */
    final long f7144b;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f7145a;

        /* renamed from: b  reason: collision with root package name */
        final long f7146b;
        c c;
        long d;
        boolean e;

        a(t<? super T> tVar, long j) {
            this.f7145a = tVar;
            this.f7146b = j;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7145a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void onNext(T t) {
            if (!this.e) {
                long j = this.d;
                if (j == this.f7146b) {
                    this.e = true;
                    this.c.dispose();
                    this.f7145a.onSuccess(t);
                    return;
                }
                this.d = j + 1;
            }
        }

        public final void onError(Throwable th) {
            if (this.e) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.e = true;
            this.f7145a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                this.f7145a.onComplete();
            }
        }
    }

    public ar(ae<T> aeVar, long j) {
        this.f7143a = aeVar;
        this.f7144b = j;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f7143a.subscribe(new a(tVar, this.f7144b));
    }

    public final z<T> fuseToObservable() {
        aq aqVar = new aq(this.f7143a, this.f7144b, null, false);
        return io.reactivex.g.a.onAssembly(aqVar);
    }
}
