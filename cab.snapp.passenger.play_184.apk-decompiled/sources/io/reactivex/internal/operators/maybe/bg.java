package io.reactivex.internal.operators.maybe;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class bg<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f8513a;

    /* renamed from: b  reason: collision with root package name */
    final ao<? extends T> f8514b;

    static final class a<T> extends AtomicReference<c> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f8515a;

        /* renamed from: b  reason: collision with root package name */
        final ao<? extends T> f8516b;

        /* renamed from: io.reactivex.internal.operators.maybe.bg$a$a  reason: collision with other inner class name */
        static final class C0201a<T> implements al<T> {

            /* renamed from: a  reason: collision with root package name */
            final al<? super T> f8517a;

            /* renamed from: b  reason: collision with root package name */
            final AtomicReference<c> f8518b;

            C0201a(al<? super T> alVar, AtomicReference<c> atomicReference) {
                this.f8517a = alVar;
                this.f8518b = atomicReference;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this.f8518b, cVar);
            }

            public final void onSuccess(T t) {
                this.f8517a.onSuccess(t);
            }

            public final void onError(Throwable th) {
                this.f8517a.onError(th);
            }
        }

        a(al<? super T> alVar, ao<? extends T> aoVar) {
            this.f8515a = alVar;
            this.f8516b = aoVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f8515a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8515a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.f8515a.onError(th);
        }

        public final void onComplete() {
            c cVar = (c) get();
            if (cVar != DisposableHelper.DISPOSED && compareAndSet(cVar, null)) {
                this.f8516b.subscribe(new C0201a(this.f8515a, this));
            }
        }
    }

    public bg(w<T> wVar, ao<? extends T> aoVar) {
        this.f8513a = wVar;
        this.f8514b = aoVar;
    }

    public final w<T> source() {
        return this.f8513a;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f8513a.subscribe(new a(alVar, this.f8514b));
    }
}
