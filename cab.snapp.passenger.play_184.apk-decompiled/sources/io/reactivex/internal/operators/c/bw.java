package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;

public final class bw<T, U> extends a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends U> f7260b;

    static final class a<T, U> extends io.reactivex.internal.c.a<T, U> {
        final h<? super T, ? extends U> f;

        a(ag<? super U> agVar, h<? super T, ? extends U> hVar) {
            super(agVar);
            this.f = hVar;
        }

        public final void onNext(T t) {
            if (!this.d) {
                if (this.e != 0) {
                    this.f6762a.onNext(null);
                    return;
                }
                try {
                    this.f6762a.onNext(b.requireNonNull(this.f.apply(t), "The mapper function returned a null value."));
                } catch (Throwable th) {
                    a(th);
                }
            }
        }

        public final int requestFusion(int i) {
            return a(i);
        }

        public final U poll() throws Exception {
            Object poll = this.c.poll();
            if (poll != null) {
                return b.requireNonNull(this.f.apply(poll), "The mapper function returned a null value.");
            }
            return null;
        }
    }

    public bw(ae<T> aeVar, h<? super T, ? extends U> hVar) {
        super(aeVar);
        this.f7260b = hVar;
    }

    public final void subscribeActual(ag<? super U> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7260b));
    }
}
