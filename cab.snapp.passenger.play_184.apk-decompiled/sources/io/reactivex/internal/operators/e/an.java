package io.reactivex.internal.operators.e;

import io.reactivex.ah;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class an<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7756a;

    /* renamed from: b  reason: collision with root package name */
    final ah f7757b;

    static final class a<T> extends AtomicReference<c> implements al<T>, c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7758a;

        /* renamed from: b  reason: collision with root package name */
        final ah f7759b;
        T c;
        Throwable d;

        a(al<? super T> alVar, ah ahVar) {
            this.f7758a = alVar;
            this.f7759b = ahVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f7758a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.c = t;
            DisposableHelper.replace(this, this.f7759b.scheduleDirect(this));
        }

        public final void onError(Throwable th) {
            this.d = th;
            DisposableHelper.replace(this, this.f7759b.scheduleDirect(this));
        }

        public final void run() {
            Throwable th = this.d;
            if (th != null) {
                this.f7758a.onError(th);
            } else {
                this.f7758a.onSuccess(this.c);
            }
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public an(ao<T> aoVar, ah ahVar) {
        this.f7756a = aoVar;
        this.f7757b = ahVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7756a.subscribe(new a(alVar, this.f7757b));
    }
}
