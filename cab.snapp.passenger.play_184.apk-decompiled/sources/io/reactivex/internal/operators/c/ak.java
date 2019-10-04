package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.concurrent.Callable;

public final class ak<T, K> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, K> f7130b;
    final Callable<? extends Collection<? super K>> c;

    static final class a<T, K> extends io.reactivex.internal.c.a<T, T> {
        final Collection<? super K> f;
        final h<? super T, K> g;

        a(ag<? super T> agVar, h<? super T, K> hVar, Collection<? super K> collection) {
            super(agVar);
            this.g = hVar;
            this.f = collection;
        }

        public final void onNext(T t) {
            if (!this.d) {
                if (this.e == 0) {
                    try {
                        if (this.f.add(b.requireNonNull(this.g.apply(t), "The keySelector returned a null key"))) {
                            this.f6762a.onNext(t);
                        }
                    } catch (Throwable th) {
                        a(th);
                    }
                } else {
                    this.f6762a.onNext(null);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            this.f.clear();
            this.f6762a.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.f.clear();
                this.f6762a.onComplete();
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
            } while (!this.f.add(b.requireNonNull(this.g.apply(poll), "The keySelector returned a null key")));
            return poll;
        }

        public final void clear() {
            this.f.clear();
            super.clear();
        }
    }

    public ak(ae<T> aeVar, h<? super T, K> hVar, Callable<? extends Collection<? super K>> callable) {
        super(aeVar);
        this.f7130b = hVar;
        this.c = callable;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        try {
            this.f7091a.subscribe(new a(agVar, this.f7130b, (Collection) b.requireNonNull(this.c.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (ag<?>) agVar);
        }
    }
}
