package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.e.f;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.b;
import io.reactivex.q;
import io.reactivex.s;
import io.reactivex.t;
import io.reactivex.u;
import java.util.concurrent.atomic.AtomicReference;

public final class j<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final u<T> f8585a;

    static final class a<T> extends AtomicReference<c> implements c, s<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8586a;

        a(t<? super T> tVar) {
            this.f8586a = tVar;
        }

        public final void onSuccess(T t) {
            if (get() != DisposableHelper.DISPOSED) {
                c cVar = (c) getAndSet(DisposableHelper.DISPOSED);
                if (cVar != DisposableHelper.DISPOSED) {
                    if (t == null) {
                        try {
                            this.f8586a.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                        } catch (Throwable th) {
                            if (cVar != null) {
                                cVar.dispose();
                            }
                            throw th;
                        }
                    } else {
                        this.f8586a.onSuccess(t);
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
                        this.f8586a.onError(th);
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

        public final void onComplete() {
            if (get() != DisposableHelper.DISPOSED) {
                c cVar = (c) getAndSet(DisposableHelper.DISPOSED);
                if (cVar != DisposableHelper.DISPOSED) {
                    try {
                        this.f8586a.onComplete();
                    } finally {
                        if (cVar != null) {
                            cVar.dispose();
                        }
                    }
                }
            }
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

    public j(u<T> uVar) {
        this.f8585a = uVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        a aVar = new a(tVar);
        tVar.onSubscribe(aVar);
        try {
            this.f8585a.subscribe(aVar);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            aVar.onError(th);
        }
    }
}
