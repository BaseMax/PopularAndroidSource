package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class x<T, R> extends ai<R> {

    /* renamed from: a  reason: collision with root package name */
    final ao<? extends T> f7889a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends ao<? extends R>> f7890b;

    static final class a<T, R> extends AtomicReference<c> implements al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super R> f7891a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ao<? extends R>> f7892b;

        /* renamed from: io.reactivex.internal.operators.e.x$a$a  reason: collision with other inner class name */
        static final class C0178a<R> implements al<R> {

            /* renamed from: a  reason: collision with root package name */
            final AtomicReference<c> f7893a;

            /* renamed from: b  reason: collision with root package name */
            final al<? super R> f7894b;

            C0178a(AtomicReference<c> atomicReference, al<? super R> alVar) {
                this.f7893a = atomicReference;
                this.f7894b = alVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.replace(this.f7893a, cVar);
            }

            public final void onSuccess(R r) {
                this.f7894b.onSuccess(r);
            }

            public final void onError(Throwable th) {
                this.f7894b.onError(th);
            }
        }

        a(al<? super R> alVar, h<? super T, ? extends ao<? extends R>> hVar) {
            this.f7891a = alVar;
            this.f7892b = hVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f7891a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            try {
                ao aoVar = (ao) b.requireNonNull(this.f7892b.apply(t), "The single returned by the mapper is null");
                if (!isDisposed()) {
                    aoVar.subscribe(new C0178a(this, this.f7891a));
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f7891a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f7891a.onError(th);
        }
    }

    public x(ao<? extends T> aoVar, h<? super T, ? extends ao<? extends R>> hVar) {
        this.f7890b = hVar;
        this.f7889a = aoVar;
    }

    public final void subscribeActual(al<? super R> alVar) {
        this.f7889a.subscribe(new a(alVar, this.f7890b));
    }
}
