package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.q;

public final class av<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q<? super T> f7152b;

    static final class a<T> extends io.reactivex.internal.c.a<T, T> {
        final q<? super T> f;

        a(ag<? super T> agVar, q<? super T> qVar) {
            super(agVar);
            this.f = qVar;
        }

        public final void onNext(T t) {
            if (this.e == 0) {
                try {
                    if (this.f.test(t)) {
                        this.f6762a.onNext(t);
                    }
                } catch (Throwable th) {
                    a(th);
                }
            } else {
                this.f6762a.onNext(null);
            }
        }

        public final int requestFusion(int i) {
            return a(i);
        }

        public final T poll() throws Exception {
            T poll;
            do {
                poll = this.c.poll();
                if (poll == null) {
                    break;
                }
            } while (!this.f.test(poll));
            return poll;
        }
    }

    public av(ae<T> aeVar, q<? super T> qVar) {
        super(aeVar);
        this.f7152b = qVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7152b));
    }
}
