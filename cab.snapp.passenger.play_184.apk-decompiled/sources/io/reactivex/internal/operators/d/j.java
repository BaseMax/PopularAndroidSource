package io.reactivex.internal.operators.d;

import io.reactivex.e.h;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import org.b.c;
import org.b.d;

public final class j<T, R> extends io.reactivex.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f7679a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends R> f7680b;

    static final class a<T, R> implements io.reactivex.internal.b.a<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.internal.b.a<? super R> f7681a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends R> f7682b;
        d c;
        boolean d;

        a(io.reactivex.internal.b.a<? super R> aVar, h<? super T, ? extends R> hVar) {
            this.f7681a = aVar;
            this.f7682b = hVar;
        }

        public final void request(long j) {
            this.c.request(j);
        }

        public final void cancel() {
            this.c.cancel();
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f7681a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.d) {
                try {
                    this.f7681a.onNext(io.reactivex.internal.a.b.requireNonNull(this.f7682b.apply(t), "The mapper returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    cancel();
                    onError(th);
                }
            }
        }

        public final boolean tryOnNext(T t) {
            if (this.d) {
                return false;
            }
            try {
                return this.f7681a.tryOnNext(io.reactivex.internal.a.b.requireNonNull(this.f7682b.apply(t), "The mapper returned a null value"));
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                cancel();
                onError(th);
                return false;
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            this.f7681a.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.f7681a.onComplete();
            }
        }
    }

    static final class b<T, R> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f7683a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends R> f7684b;
        d c;
        boolean d;

        b(c<? super R> cVar, h<? super T, ? extends R> hVar) {
            this.f7683a = cVar;
            this.f7684b = hVar;
        }

        public final void request(long j) {
            this.c.request(j);
        }

        public final void cancel() {
            this.c.cancel();
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f7683a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.d) {
                try {
                    this.f7683a.onNext(io.reactivex.internal.a.b.requireNonNull(this.f7684b.apply(t), "The mapper returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    cancel();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            this.f7683a.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.f7683a.onComplete();
            }
        }
    }

    public j(io.reactivex.parallel.a<T> aVar, h<? super T, ? extends R> hVar) {
        this.f7679a = aVar;
        this.f7680b = hVar;
    }

    public final void subscribe(c<? super R>[] cVarArr) {
        if (a(cVarArr)) {
            int length = cVarArr.length;
            c[] cVarArr2 = new c[length];
            for (int i = 0; i < length; i++) {
                io.reactivex.internal.b.a aVar = cVarArr[i];
                if (aVar instanceof io.reactivex.internal.b.a) {
                    cVarArr2[i] = new a(aVar, this.f7680b);
                } else {
                    cVarArr2[i] = new b(aVar, this.f7680b);
                }
            }
            this.f7679a.subscribe(cVarArr2);
        }
    }

    public final int parallelism() {
        return this.f7679a.parallelism();
    }
}
