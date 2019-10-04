package io.reactivex.internal.operators.e;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.c.y;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class h<T, U> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7829a;

    /* renamed from: b  reason: collision with root package name */
    final ae<U> f7830b;

    static final class a<T, U> extends AtomicReference<c> implements ag<U>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7831a;

        /* renamed from: b  reason: collision with root package name */
        final ao<T> f7832b;
        boolean c;

        a(al<? super T> alVar, ao<T> aoVar) {
            this.f7831a = alVar;
            this.f7832b = aoVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.set(this, cVar)) {
                this.f7831a.onSubscribe(this);
            }
        }

        public final void onNext(U u) {
            ((c) get()).dispose();
            onComplete();
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = true;
            this.f7831a.onError(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                this.f7832b.subscribe(new y(this, this.f7831a));
            }
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public h(ao<T> aoVar, ae<U> aeVar) {
        this.f7829a = aoVar;
        this.f7830b = aeVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7830b.subscribe(new a(alVar, this.f7829a));
    }
}
