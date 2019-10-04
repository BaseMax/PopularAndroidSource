package io.reactivex.internal.operators.e;

import io.reactivex.ag;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.c.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.z;
import java.util.Iterator;

public final class aa<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7722a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends Iterable<? extends R>> f7723b;

    static final class a<T, R> extends b<R> implements al<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7724a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends Iterable<? extends R>> f7725b;
        c c;
        volatile Iterator<? extends R> d;
        volatile boolean e;
        boolean f;

        a(ag<? super R> agVar, h<? super T, ? extends Iterable<? extends R>> hVar) {
            this.f7724a = agVar;
            this.f7725b = hVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7724a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            ag<? super R> agVar = this.f7724a;
            try {
                Iterator<? extends R> it = ((Iterable) this.f7725b.apply(t)).iterator();
                if (!it.hasNext()) {
                    agVar.onComplete();
                } else if (this.f) {
                    this.d = it;
                    agVar.onNext(null);
                    agVar.onComplete();
                } else {
                    while (!this.e) {
                        try {
                            agVar.onNext(it.next());
                            if (!this.e) {
                                try {
                                    if (!it.hasNext()) {
                                        agVar.onComplete();
                                        return;
                                    }
                                } catch (Throwable th) {
                                    io.reactivex.c.b.throwIfFatal(th);
                                    agVar.onError(th);
                                    return;
                                }
                            } else {
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.c.b.throwIfFatal(th2);
                            agVar.onError(th2);
                            return;
                        }
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.c.b.throwIfFatal(th3);
                this.f7724a.onError(th3);
            }
        }

        public final void onError(Throwable th) {
            this.c = DisposableHelper.DISPOSED;
            this.f7724a.onError(th);
        }

        public final void dispose() {
            this.e = true;
            this.c.dispose();
            this.c = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.e;
        }

        public final int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.f = true;
            return 2;
        }

        public final void clear() {
            this.d = null;
        }

        public final boolean isEmpty() {
            return this.d == null;
        }

        public final R poll() throws Exception {
            Iterator<? extends R> it = this.d;
            if (it == null) {
                return null;
            }
            R requireNonNull = io.reactivex.internal.a.b.requireNonNull(it.next(), "The iterator returned a null value");
            if (!it.hasNext()) {
                this.d = null;
            }
            return requireNonNull;
        }
    }

    public aa(ao<T> aoVar, h<? super T, ? extends Iterable<? extends R>> hVar) {
        this.f7722a = aoVar;
        this.f7723b = hVar;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        this.f7722a.subscribe(new a(agVar, this.f7723b));
    }
}
