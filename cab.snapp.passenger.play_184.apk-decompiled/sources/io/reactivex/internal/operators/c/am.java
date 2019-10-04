package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.g;

public final class am<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final g<? super T> f7132b;

    static final class a<T> extends io.reactivex.internal.c.a<T, T> {
        final g<? super T> f;

        a(ag<? super T> agVar, g<? super T> gVar) {
            super(agVar);
            this.f = gVar;
        }

        public final void onNext(T t) {
            this.f6762a.onNext(t);
            if (this.e == 0) {
                try {
                    this.f.accept(t);
                } catch (Throwable th) {
                    a(th);
                }
            }
        }

        public final int requestFusion(int i) {
            return a(i);
        }

        public final T poll() throws Exception {
            T poll = this.c.poll();
            if (poll != null) {
                this.f.accept(poll);
            }
            return poll;
        }
    }

    public am(ae<T> aeVar, g<? super T> gVar) {
        super(aeVar);
        this.f7132b = gVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7132b));
    }
}
