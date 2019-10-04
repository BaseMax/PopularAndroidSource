package io.reactivex.internal.operators.maybe;

import io.reactivex.ag;
import io.reactivex.c.b;
import io.reactivex.e.h;
import io.reactivex.internal.c.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import io.reactivex.z;
import java.util.Iterator;

public final class ad<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f8422a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends Iterable<? extends R>> f8423b;

    static final class a<T, R> extends c<R> implements t<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f8424a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends Iterable<? extends R>> f8425b;
        io.reactivex.b.c c;
        volatile Iterator<? extends R> d;
        volatile boolean e;
        boolean f;

        a(ag<? super R> agVar, h<? super T, ? extends Iterable<? extends R>> hVar) {
            this.f8424a = agVar;
            this.f8425b = hVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f8424a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            ag<? super R> agVar = this.f8424a;
            try {
                Iterator<? extends R> it = ((Iterable) this.f8425b.apply(t)).iterator();
                if (!it.hasNext()) {
                    agVar.onComplete();
                    return;
                }
                this.d = it;
                if (this.f) {
                    agVar.onNext(null);
                    agVar.onComplete();
                    return;
                }
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
                                b.throwIfFatal(th);
                                agVar.onError(th);
                                return;
                            }
                        } else {
                            return;
                        }
                    } catch (Throwable th2) {
                        b.throwIfFatal(th2);
                        agVar.onError(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                b.throwIfFatal(th3);
                agVar.onError(th3);
            }
        }

        public final void onError(Throwable th) {
            this.c = DisposableHelper.DISPOSED;
            this.f8424a.onError(th);
        }

        public final void onComplete() {
            this.f8424a.onComplete();
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

    public ad(w<T> wVar, h<? super T, ? extends Iterable<? extends R>> hVar) {
        this.f8422a = wVar;
        this.f8423b = hVar;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        this.f8422a.subscribe(new a(agVar, this.f8423b));
    }
}
