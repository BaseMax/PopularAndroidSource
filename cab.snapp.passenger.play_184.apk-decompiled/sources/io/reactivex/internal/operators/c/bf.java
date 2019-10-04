package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.internal.a.b;
import io.reactivex.internal.c.c;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;
import java.util.Iterator;

public final class bf<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends T> f7188a;

    static final class a<T> extends c<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7189a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<? extends T> f7190b;
        volatile boolean c;
        boolean d;
        boolean e;
        boolean f;

        a(ag<? super T> agVar, Iterator<? extends T> it) {
            this.f7189a = agVar;
            this.f7190b = it;
        }

        public final int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.d = true;
            return 1;
        }

        public final T poll() {
            if (this.e) {
                return null;
            }
            if (!this.f) {
                this.f = true;
            } else if (!this.f7190b.hasNext()) {
                this.e = true;
                return null;
            }
            return b.requireNonNull(this.f7190b.next(), "The iterator returned a null value");
        }

        public final boolean isEmpty() {
            return this.e;
        }

        public final void clear() {
            this.e = true;
        }

        public final void dispose() {
            this.c = true;
        }

        public final boolean isDisposed() {
            return this.c;
        }
    }

    public bf(Iterable<? extends T> iterable) {
        this.f7188a = iterable;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        try {
            Iterator<? extends T> it = this.f7188a.iterator();
            try {
                if (!it.hasNext()) {
                    EmptyDisposable.complete((ag<?>) agVar);
                    return;
                }
                a aVar = new a(agVar, it);
                agVar.onSubscribe(aVar);
                if (!aVar.d) {
                    while (true) {
                        if (aVar.isDisposed()) {
                            break;
                        }
                        try {
                            aVar.f7189a.onNext(b.requireNonNull(aVar.f7190b.next(), "The iterator returned a null value"));
                            if (aVar.isDisposed()) {
                                break;
                            }
                            try {
                                if (!aVar.f7190b.hasNext()) {
                                    if (!aVar.isDisposed()) {
                                        aVar.f7189a.onComplete();
                                    }
                                }
                            } catch (Throwable th) {
                                io.reactivex.c.b.throwIfFatal(th);
                                aVar.f7189a.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.c.b.throwIfFatal(th2);
                            aVar.f7189a.onError(th2);
                        }
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.c.b.throwIfFatal(th3);
                EmptyDisposable.error(th3, (ag<?>) agVar);
            }
        } catch (Throwable th4) {
            io.reactivex.c.b.throwIfFatal(th4);
            EmptyDisposable.error(th4, (ag<?>) agVar);
        }
    }
}
