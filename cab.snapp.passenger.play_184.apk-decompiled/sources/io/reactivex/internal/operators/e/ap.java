package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.c.y;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class ap<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<? extends T> f7764a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super Throwable, ? extends ao<? extends T>> f7765b;

    static final class a<T> extends AtomicReference<c> implements al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7766a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Throwable, ? extends ao<? extends T>> f7767b;

        a(al<? super T> alVar, h<? super Throwable, ? extends ao<? extends T>> hVar) {
            this.f7766a = alVar;
            this.f7767b = hVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f7766a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f7766a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            try {
                ((ao) b.requireNonNull(this.f7767b.apply(th), "The nextFunction returned a null SingleSource.")).subscribe(new y(this, this.f7766a));
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                this.f7766a.onError(new io.reactivex.c.a(th, th2));
            }
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public ap(ao<? extends T> aoVar, h<? super Throwable, ? extends ao<? extends T>> hVar) {
        this.f7764a = aoVar;
        this.f7765b = hVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7764a.subscribe(new a(alVar, this.f7765b));
    }
}
