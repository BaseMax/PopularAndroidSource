package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.b.d;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.z;
import java.util.NoSuchElementException;

public final class as<T> extends ai<T> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7147a;

    /* renamed from: b  reason: collision with root package name */
    final long f7148b;
    final T c;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7149a;

        /* renamed from: b  reason: collision with root package name */
        final long f7150b;
        final T c;
        c d;
        long e;
        boolean f;

        a(al<? super T> alVar, long j, T t) {
            this.f7149a = alVar;
            this.f7150b = j;
            this.c = t;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.d, cVar)) {
                this.d = cVar;
                this.f7149a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.d.dispose();
        }

        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        public final void onNext(T t) {
            if (!this.f) {
                long j = this.e;
                if (j == this.f7150b) {
                    this.f = true;
                    this.d.dispose();
                    this.f7149a.onSuccess(t);
                    return;
                }
                this.e = j + 1;
            }
        }

        public final void onError(Throwable th) {
            if (this.f) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.f = true;
            this.f7149a.onError(th);
        }

        public final void onComplete() {
            if (!this.f) {
                this.f = true;
                T t = this.c;
                if (t != null) {
                    this.f7149a.onSuccess(t);
                    return;
                }
                this.f7149a.onError(new NoSuchElementException());
            }
        }
    }

    public as(ae<T> aeVar, long j, T t) {
        this.f7147a = aeVar;
        this.f7148b = j;
        this.c = t;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7147a.subscribe(new a(alVar, this.f7148b, this.c));
    }

    public final z<T> fuseToObservable() {
        aq aqVar = new aq(this.f7147a, this.f7148b, this.c, true);
        return io.reactivex.g.a.onAssembly(aqVar);
    }
}
