package io.reactivex.internal.operators.e;

import io.reactivex.ah;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.h;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class as<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7777a;

    /* renamed from: b  reason: collision with root package name */
    final long f7778b;
    final TimeUnit c;
    final ah d;
    final ao<? extends T> e;

    static final class a<T> extends AtomicReference<c> implements al<T>, c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7779a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<c> f7780b = new AtomicReference<>();
        final C0176a<T> c;
        ao<? extends T> d;
        final long e;
        final TimeUnit f;

        /* renamed from: io.reactivex.internal.operators.e.as$a$a  reason: collision with other inner class name */
        static final class C0176a<T> extends AtomicReference<c> implements al<T> {

            /* renamed from: a  reason: collision with root package name */
            final al<? super T> f7781a;

            C0176a(al<? super T> alVar) {
                this.f7781a = alVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onSuccess(T t) {
                this.f7781a.onSuccess(t);
            }

            public final void onError(Throwable th) {
                this.f7781a.onError(th);
            }
        }

        a(al<? super T> alVar, ao<? extends T> aoVar, long j, TimeUnit timeUnit) {
            this.f7779a = alVar;
            this.d = aoVar;
            this.e = j;
            this.f = timeUnit;
            if (aoVar != null) {
                this.c = new C0176a<>(alVar);
            } else {
                this.c = null;
            }
        }

        public final void run() {
            c cVar = (c) get();
            if (cVar != DisposableHelper.DISPOSED && compareAndSet(cVar, DisposableHelper.DISPOSED)) {
                if (cVar != null) {
                    cVar.dispose();
                }
                ao<? extends T> aoVar = this.d;
                if (aoVar == null) {
                    this.f7779a.onError(new TimeoutException(h.timeoutMessage(this.e, this.f)));
                } else {
                    this.d = null;
                    aoVar.subscribe(this.c);
                }
            }
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(T t) {
            c cVar = (c) get();
            if (cVar != DisposableHelper.DISPOSED && compareAndSet(cVar, DisposableHelper.DISPOSED)) {
                DisposableHelper.dispose(this.f7780b);
                this.f7779a.onSuccess(t);
            }
        }

        public final void onError(Throwable th) {
            c cVar = (c) get();
            if (cVar == DisposableHelper.DISPOSED || !compareAndSet(cVar, DisposableHelper.DISPOSED)) {
                io.reactivex.g.a.onError(th);
                return;
            }
            DisposableHelper.dispose(this.f7780b);
            this.f7779a.onError(th);
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f7780b);
            C0176a<T> aVar = this.c;
            if (aVar != null) {
                DisposableHelper.dispose(aVar);
            }
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public as(ao<T> aoVar, long j, TimeUnit timeUnit, ah ahVar, ao<? extends T> aoVar2) {
        this.f7777a = aoVar;
        this.f7778b = j;
        this.c = timeUnit;
        this.d = ahVar;
        this.e = aoVar2;
    }

    public final void subscribeActual(al<? super T> alVar) {
        a aVar = new a(alVar, this.e, this.f7778b, this.c);
        alVar.onSubscribe(aVar);
        DisposableHelper.replace(aVar.f7780b, this.d.scheduleDirect(aVar, this.f7778b, this.c));
        this.f7777a.subscribe(aVar);
    }
}
