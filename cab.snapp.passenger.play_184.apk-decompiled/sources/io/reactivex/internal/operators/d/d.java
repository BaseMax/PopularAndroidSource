package io.reactivex.internal.operators.d;

import io.reactivex.e.q;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

public final class d<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f7656a;

    /* renamed from: b  reason: collision with root package name */
    final q<? super T> f7657b;

    static abstract class a<T> implements io.reactivex.internal.b.a<T>, org.b.d {

        /* renamed from: a  reason: collision with root package name */
        final q<? super T> f7658a;

        /* renamed from: b  reason: collision with root package name */
        org.b.d f7659b;
        boolean c;

        a(q<? super T> qVar) {
            this.f7658a = qVar;
        }

        public final void request(long j) {
            this.f7659b.request(j);
        }

        public final void cancel() {
            this.f7659b.cancel();
        }

        public final void onNext(T t) {
            if (!tryOnNext(t) && !this.c) {
                this.f7659b.request(1);
            }
        }
    }

    static final class b<T> extends a<T> {
        final io.reactivex.internal.b.a<? super T> d;

        b(io.reactivex.internal.b.a<? super T> aVar, q<? super T> qVar) {
            super(qVar);
            this.d = aVar;
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.f7659b, dVar)) {
                this.f7659b = dVar;
                this.d.onSubscribe(this);
            }
        }

        public final boolean tryOnNext(T t) {
            if (!this.c) {
                try {
                    if (this.f7658a.test(t)) {
                        return this.d.tryOnNext(t);
                    }
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    cancel();
                    onError(th);
                }
            }
            return false;
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = true;
            this.d.onError(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                this.d.onComplete();
            }
        }
    }

    static final class c<T> extends a<T> {
        final org.b.c<? super T> d;

        c(org.b.c<? super T> cVar, q<? super T> qVar) {
            super(qVar);
            this.d = cVar;
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.f7659b, dVar)) {
                this.f7659b = dVar;
                this.d.onSubscribe(this);
            }
        }

        public final boolean tryOnNext(T t) {
            if (!this.c) {
                try {
                    if (this.f7658a.test(t)) {
                        this.d.onNext(t);
                        return true;
                    }
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    cancel();
                    onError(th);
                }
            }
            return false;
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = true;
            this.d.onError(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                this.d.onComplete();
            }
        }
    }

    public d(io.reactivex.parallel.a<T> aVar, q<? super T> qVar) {
        this.f7656a = aVar;
        this.f7657b = qVar;
    }

    public final void subscribe(org.b.c<? super T>[] cVarArr) {
        if (a(cVarArr)) {
            int length = cVarArr.length;
            org.b.c[] cVarArr2 = new org.b.c[length];
            for (int i = 0; i < length; i++) {
                io.reactivex.internal.b.a aVar = cVarArr[i];
                if (aVar instanceof io.reactivex.internal.b.a) {
                    cVarArr2[i] = new b(aVar, this.f7657b);
                } else {
                    cVarArr2[i] = new c(aVar, this.f7657b);
                }
            }
            this.f7656a.subscribe(cVarArr2);
        }
    }

    public final int parallelism() {
        return this.f7656a.parallelism();
    }
}
