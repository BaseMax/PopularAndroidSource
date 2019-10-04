package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.d;
import io.reactivex.e.h;

public final class al<T, K> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, K> f7131b;
    final d<? super K, ? super K> c;

    static final class a<T, K> extends io.reactivex.internal.c.a<T, T> {
        final h<? super T, K> f;
        final d<? super K, ? super K> g;
        K h;
        boolean i;

        a(ag<? super T> agVar, h<? super T, K> hVar, d<? super K, ? super K> dVar) {
            super(agVar);
            this.f = hVar;
            this.g = dVar;
        }

        public final void onNext(T t) {
            if (!this.d) {
                if (this.e != 0) {
                    this.f6762a.onNext(t);
                    return;
                }
                try {
                    K apply = this.f.apply(t);
                    if (this.i) {
                        boolean test = this.g.test(this.h, apply);
                        this.h = apply;
                        if (test) {
                            return;
                        }
                    } else {
                        this.i = true;
                        this.h = apply;
                    }
                    this.f6762a.onNext(t);
                } catch (Throwable th) {
                    a(th);
                }
            }
        }

        public final int requestFusion(int i2) {
            return a(i2);
        }

        public final T poll() throws Exception {
            while (true) {
                T poll = this.c.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f.apply(poll);
                if (!this.i) {
                    this.i = true;
                    this.h = apply;
                    return poll;
                } else if (!this.g.test(this.h, apply)) {
                    this.h = apply;
                    return poll;
                } else {
                    this.h = apply;
                }
            }
        }
    }

    public al(ae<T> aeVar, h<? super T, K> hVar, d<? super K, ? super K> dVar) {
        super(aeVar);
        this.f7131b = hVar;
        this.c = dVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7131b, this.c));
    }
}
