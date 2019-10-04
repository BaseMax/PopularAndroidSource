package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import io.reactivex.y;
import org.b.c;
import org.b.d;

public final class al<T, R> extends a<T, R> {
    final h<? super T, ? extends y<R>> c;

    static final class a<T, R> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f7961a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends y<R>> f7962b;
        boolean c;
        d d;

        a(c<? super R> cVar, h<? super T, ? extends y<R>> hVar) {
            this.f7961a = cVar;
            this.f7962b = hVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.d, dVar)) {
                this.d = dVar;
                this.f7961a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (this.c) {
                if (t instanceof y) {
                    y yVar = (y) t;
                    if (yVar.isOnError()) {
                        io.reactivex.g.a.onError(yVar.getError());
                    }
                }
                return;
            }
            try {
                y yVar2 = (y) b.requireNonNull(this.f7962b.apply(t), "The selector returned a null Notification");
                if (yVar2.isOnError()) {
                    this.d.cancel();
                    onError(yVar2.getError());
                } else if (yVar2.isOnComplete()) {
                    this.d.cancel();
                    onComplete();
                } else {
                    this.f7961a.onNext(yVar2.getValue());
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.d.cancel();
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = true;
            this.f7961a.onError(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                this.f7961a.onComplete();
            }
        }

        public final void request(long j) {
            this.d.request(j);
        }

        public final void cancel() {
            this.d.cancel();
        }
    }

    public al(j<T> jVar, h<? super T, ? extends y<R>> hVar) {
        super(jVar);
        this.c = hVar;
    }

    public final void subscribeActual(c<? super R> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
