package io.reactivex.internal.operators.d;

import io.reactivex.c.b;
import io.reactivex.e.g;
import io.reactivex.e.p;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import org.b.c;
import org.b.d;

public final class l<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f7692a;

    /* renamed from: b  reason: collision with root package name */
    final g<? super T> f7693b;
    final g<? super T> c;
    final g<? super Throwable> d;
    final io.reactivex.e.a e;
    final io.reactivex.e.a f;
    final g<? super d> g;
    final p h;
    final io.reactivex.e.a i;

    static final class a<T> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f7694a;

        /* renamed from: b  reason: collision with root package name */
        final l<T> f7695b;
        d c;
        boolean d;

        a(c<? super T> cVar, l<T> lVar) {
            this.f7694a = cVar;
            this.f7695b = lVar;
        }

        public final void request(long j) {
            try {
                this.f7695b.h.accept(j);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
            this.c.request(j);
        }

        public final void cancel() {
            try {
                this.f7695b.i.run();
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
            this.c.cancel();
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                try {
                    this.f7695b.g.accept(dVar);
                    this.f7694a.onSubscribe(this);
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    dVar.cancel();
                    this.f7694a.onSubscribe(EmptySubscription.INSTANCE);
                    onError(th);
                }
            }
        }

        public final void onNext(T t) {
            if (!this.d) {
                try {
                    this.f7695b.f7693b.accept(t);
                    this.f7694a.onNext(t);
                    try {
                        this.f7695b.c.accept(t);
                    } catch (Throwable th) {
                        b.throwIfFatal(th);
                        onError(th);
                    }
                } catch (Throwable th2) {
                    b.throwIfFatal(th2);
                    onError(th2);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            try {
                this.f7695b.d.accept(th);
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                th = new io.reactivex.c.a(th, th2);
            }
            this.f7694a.onError(th);
            try {
                this.f7695b.f.run();
            } catch (Throwable th3) {
                b.throwIfFatal(th3);
                io.reactivex.g.a.onError(th3);
            }
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                try {
                    this.f7695b.e.run();
                    this.f7694a.onComplete();
                    try {
                        this.f7695b.f.run();
                    } catch (Throwable th) {
                        b.throwIfFatal(th);
                        io.reactivex.g.a.onError(th);
                    }
                } catch (Throwable th2) {
                    b.throwIfFatal(th2);
                    this.f7694a.onError(th2);
                }
            }
        }
    }

    public l(io.reactivex.parallel.a<T> aVar, g<? super T> gVar, g<? super T> gVar2, g<? super Throwable> gVar3, io.reactivex.e.a aVar2, io.reactivex.e.a aVar3, g<? super d> gVar4, p pVar, io.reactivex.e.a aVar4) {
        this.f7692a = aVar;
        this.f7693b = (g) io.reactivex.internal.a.b.requireNonNull(gVar, "onNext is null");
        this.c = (g) io.reactivex.internal.a.b.requireNonNull(gVar2, "onAfterNext is null");
        this.d = (g) io.reactivex.internal.a.b.requireNonNull(gVar3, "onError is null");
        this.e = (io.reactivex.e.a) io.reactivex.internal.a.b.requireNonNull(aVar2, "onComplete is null");
        this.f = (io.reactivex.e.a) io.reactivex.internal.a.b.requireNonNull(aVar3, "onAfterTerminated is null");
        this.g = (g) io.reactivex.internal.a.b.requireNonNull(gVar4, "onSubscribe is null");
        this.h = (p) io.reactivex.internal.a.b.requireNonNull(pVar, "onRequest is null");
        this.i = (io.reactivex.e.a) io.reactivex.internal.a.b.requireNonNull(aVar4, "onCancel is null");
    }

    public final void subscribe(c<? super T>[] cVarArr) {
        if (a(cVarArr)) {
            int length = cVarArr.length;
            c[] cVarArr2 = new c[length];
            for (int i2 = 0; i2 < length; i2++) {
                cVarArr2[i2] = new a(cVarArr[i2], this);
            }
            this.f7692a.subscribe(cVarArr2);
        }
    }

    public final int parallelism() {
        return this.f7692a.parallelism();
    }
}
