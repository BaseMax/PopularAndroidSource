package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.e;
import io.reactivex.e.f;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.b;
import java.util.concurrent.atomic.AtomicReference;

public final class g extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final e f6970a;

    static final class a extends AtomicReference<c> implements c, io.reactivex.c {

        /* renamed from: a  reason: collision with root package name */
        final d f6971a;

        a(d dVar) {
            this.f6971a = dVar;
        }

        public final void onComplete() {
            if (get() != DisposableHelper.DISPOSED) {
                c cVar = (c) getAndSet(DisposableHelper.DISPOSED);
                if (cVar != DisposableHelper.DISPOSED) {
                    try {
                        this.f6971a.onComplete();
                    } finally {
                        if (cVar != null) {
                            cVar.dispose();
                        }
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
                        this.f6971a.onError(th);
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

    public g(e eVar) {
        this.f6970a = eVar;
    }

    public final void subscribeActual(d dVar) {
        a aVar = new a(dVar);
        dVar.onSubscribe(aVar);
        try {
            this.f6970a.subscribe(aVar);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            aVar.onError(th);
        }
    }
}
