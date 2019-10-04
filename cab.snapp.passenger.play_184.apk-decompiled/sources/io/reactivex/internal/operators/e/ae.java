package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.NoSuchElementException;
import org.b.b;
import org.b.d;

public final class ae<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final b<? extends T> f7736a;

    static final class a<T> implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7737a;

        /* renamed from: b  reason: collision with root package name */
        d f7738b;
        T c;
        boolean d;
        volatile boolean e;

        a(al<? super T> alVar) {
            this.f7737a = alVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f7738b, dVar)) {
                this.f7738b = dVar;
                this.f7737a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.d) {
                if (this.c != null) {
                    this.f7738b.cancel();
                    this.d = true;
                    this.c = null;
                    this.f7737a.onError(new IndexOutOfBoundsException("Too many elements in the Publisher"));
                    return;
                }
                this.c = t;
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            this.c = null;
            this.f7737a.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                T t = this.c;
                this.c = null;
                if (t == null) {
                    this.f7737a.onError(new NoSuchElementException("The source Publisher is empty"));
                } else {
                    this.f7737a.onSuccess(t);
                }
            }
        }

        public final boolean isDisposed() {
            return this.e;
        }

        public final void dispose() {
            this.e = true;
            this.f7738b.cancel();
        }
    }

    public ae(b<? extends T> bVar) {
        this.f7736a = bVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7736a.subscribe(new a(alVar));
    }
}
