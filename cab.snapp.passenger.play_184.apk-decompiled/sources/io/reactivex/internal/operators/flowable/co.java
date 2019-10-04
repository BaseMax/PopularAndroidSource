package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.subscriptions.e;
import io.reactivex.j;
import io.reactivex.o;
import org.b.b;
import org.b.c;
import org.b.d;

public final class co<T> extends a<T, T> {
    final h<? super Throwable, ? extends b<? extends T>> c;
    final boolean d;

    static final class a<T> extends e implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8103a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Throwable, ? extends b<? extends T>> f8104b;
        final boolean c;
        boolean d;
        boolean e;
        long f;

        a(c<? super T> cVar, h<? super Throwable, ? extends b<? extends T>> hVar, boolean z) {
            super(false);
            this.f8103a = cVar;
            this.f8104b = hVar;
            this.c = z;
        }

        public final void onSubscribe(d dVar) {
            setSubscription(dVar);
        }

        public final void onNext(T t) {
            if (!this.e) {
                if (!this.d) {
                    this.f++;
                }
                this.f8103a.onNext(t);
            }
        }

        public final void onError(Throwable th) {
            if (!this.d) {
                this.d = true;
                if (!this.c || (th instanceof Exception)) {
                    try {
                        b bVar = (b) io.reactivex.internal.a.b.requireNonNull(this.f8104b.apply(th), "The nextSupplier returned a null Publisher");
                        long j = this.f;
                        if (j != 0) {
                            produced(j);
                        }
                        bVar.subscribe(this);
                    } catch (Throwable th2) {
                        io.reactivex.c.b.throwIfFatal(th2);
                        this.f8103a.onError(new io.reactivex.c.a(th, th2));
                    }
                } else {
                    this.f8103a.onError(th);
                }
            } else if (this.e) {
                io.reactivex.g.a.onError(th);
            } else {
                this.f8103a.onError(th);
            }
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                this.d = true;
                this.f8103a.onComplete();
            }
        }
    }

    public co(j<T> jVar, h<? super Throwable, ? extends b<? extends T>> hVar, boolean z) {
        super(jVar);
        this.c = hVar;
        this.d = z;
    }

    public final void subscribeActual(c<? super T> cVar) {
        a aVar = new a(cVar, this.c, this.d);
        cVar.onSubscribe(aVar);
        this.f7923b.subscribe(aVar);
    }
}
