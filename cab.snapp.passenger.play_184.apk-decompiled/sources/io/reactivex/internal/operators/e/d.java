package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.ak;
import io.reactivex.al;
import io.reactivex.am;
import io.reactivex.b.c;
import io.reactivex.e.f;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.b;
import java.util.concurrent.atomic.AtomicReference;

public final class d<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final am<T> f7814a;

    static final class a<T> extends AtomicReference<c> implements ak<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7815a;

        a(al<? super T> alVar) {
            this.f7815a = alVar;
        }

        public final void onSuccess(T t) {
            if (get() != DisposableHelper.DISPOSED) {
                c cVar = (c) getAndSet(DisposableHelper.DISPOSED);
                if (cVar != DisposableHelper.DISPOSED) {
                    if (t == null) {
                        try {
                            this.f7815a.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                        } catch (Throwable th) {
                            if (cVar != null) {
                                cVar.dispose();
                            }
                            throw th;
                        }
                    } else {
                        this.f7815a.onSuccess(t);
                    }
                    if (cVar != null) {
                        cVar.dispose();
                    }
                }
            }
        }

        public final void onError(Throwable th) {
            if (!tryOnError(th)) {
                io.reactivex.g.a.onError(th);
            }
        }

        public final boolean tryOnError(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (get() != DisposableHelper.DISPOSED) {
                c cVar = (c) getAndSet(DisposableHelper.DISPOSED);
                if (cVar != DisposableHelper.DISPOSED) {
                    try {
                        this.f7815a.onError(th);
                        return true;
                    } finally {
                        if (cVar != null) {
                            cVar.dispose();
                        }
                    }
                }
            }
            return false;
        }

        public final void setDisposable(c cVar) {
            DisposableHelper.set(this, cVar);
        }

        public final void setCancellable(f fVar) {
            setDisposable(new b(fVar));
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final String toString() {
            return String.format("%s{%s}", new Object[]{getClass().getSimpleName(), super.toString()});
        }
    }

    public d(am<T> amVar) {
        this.f7814a = amVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        a aVar = new a(alVar);
        alVar.onSubscribe(aVar);
        try {
            this.f7814a.subscribe(aVar);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            aVar.onError(th);
        }
    }
}
