package io.reactivex.internal.operators.e;

import io.reactivex.ah;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class aw<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7788a;

    /* renamed from: b  reason: collision with root package name */
    final ah f7789b;

    static final class a<T> extends AtomicReference<c> implements al<T>, c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7790a;

        /* renamed from: b  reason: collision with root package name */
        final ah f7791b;
        c c;

        a(al<? super T> alVar, ah ahVar) {
            this.f7790a = alVar;
            this.f7791b = ahVar;
        }

        public final void dispose() {
            c cVar = (c) getAndSet(DisposableHelper.DISPOSED);
            if (cVar != DisposableHelper.DISPOSED) {
                this.c = cVar;
                this.f7791b.scheduleDirect(this);
            }
        }

        public final void run() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f7790a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f7790a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.f7790a.onError(th);
        }
    }

    public aw(ao<T> aoVar, ah ahVar) {
        this.f7788a = aoVar;
        this.f7789b = ahVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7788a.subscribe(new a(alVar, this.f7789b));
    }
}
