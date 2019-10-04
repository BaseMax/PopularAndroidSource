package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.e.c;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;
import java.util.Iterator;

public final class eo<T, U, V> extends z<V> {

    /* renamed from: a  reason: collision with root package name */
    final z<? extends T> f7555a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<U> f7556b;
    final c<? super T, ? super U, ? extends V> c;

    static final class a<T, U, V> implements ag<T>, io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super V> f7557a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<U> f7558b;
        final c<? super T, ? super U, ? extends V> c;
        io.reactivex.b.c d;
        boolean e;

        a(ag<? super V> agVar, Iterator<U> it, c<? super T, ? super U, ? extends V> cVar) {
            this.f7557a = agVar;
            this.f7558b = it;
            this.c = cVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.d, cVar)) {
                this.d = cVar;
                this.f7557a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.d.dispose();
        }

        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        public final void onNext(T t) {
            if (!this.e) {
                try {
                    try {
                        this.f7557a.onNext(b.requireNonNull(this.c.apply(t, b.requireNonNull(this.f7558b.next(), "The iterator returned a null value")), "The zipper function returned a null value"));
                        try {
                            if (!this.f7558b.hasNext()) {
                                this.e = true;
                                this.d.dispose();
                                this.f7557a.onComplete();
                            }
                        } catch (Throwable th) {
                            io.reactivex.c.b.throwIfFatal(th);
                            a(th);
                        }
                    } catch (Throwable th2) {
                        io.reactivex.c.b.throwIfFatal(th2);
                        a(th2);
                    }
                } catch (Throwable th3) {
                    io.reactivex.c.b.throwIfFatal(th3);
                    a(th3);
                }
            }
        }

        private void a(Throwable th) {
            this.e = true;
            this.d.dispose();
            this.f7557a.onError(th);
        }

        public final void onError(Throwable th) {
            if (this.e) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.e = true;
            this.f7557a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                this.f7557a.onComplete();
            }
        }
    }

    public eo(z<? extends T> zVar, Iterable<U> iterable, c<? super T, ? super U, ? extends V> cVar) {
        this.f7555a = zVar;
        this.f7556b = iterable;
        this.c = cVar;
    }

    public final void subscribeActual(ag<? super V> agVar) {
        try {
            Iterator it = (Iterator) b.requireNonNull(this.f7556b.iterator(), "The iterator returned by other is null");
            try {
                if (!it.hasNext()) {
                    EmptyDisposable.complete((ag<?>) agVar);
                } else {
                    this.f7555a.subscribe(new a(agVar, it, this.c));
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                EmptyDisposable.error(th, (ag<?>) agVar);
            }
        } catch (Throwable th2) {
            io.reactivex.c.b.throwIfFatal(th2);
            EmptyDisposable.error(th2, (ag<?>) agVar);
        }
    }
}
