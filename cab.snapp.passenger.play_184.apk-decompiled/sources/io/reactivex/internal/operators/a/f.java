package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public final class f extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends g> f6967a;

    static final class a extends AtomicInteger implements d {

        /* renamed from: a  reason: collision with root package name */
        final d f6968a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<? extends g> f6969b;
        final io.reactivex.internal.disposables.f c = new io.reactivex.internal.disposables.f();

        a(d dVar, Iterator<? extends g> it) {
            this.f6968a = dVar;
            this.f6969b = it;
        }

        public final void onSubscribe(c cVar) {
            this.c.replace(cVar);
        }

        public final void onError(Throwable th) {
            this.f6968a.onError(th);
        }

        public final void onComplete() {
            a();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (!this.c.isDisposed() && getAndIncrement() == 0) {
                Iterator<? extends g> it = this.f6969b;
                while (!this.c.isDisposed()) {
                    try {
                        if (!it.hasNext()) {
                            this.f6968a.onComplete();
                            return;
                        }
                        try {
                            ((g) b.requireNonNull(it.next(), "The CompletableSource returned is null")).subscribe(this);
                            if (decrementAndGet() == 0) {
                                return;
                            }
                        } catch (Throwable th) {
                            io.reactivex.c.b.throwIfFatal(th);
                            this.f6968a.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.c.b.throwIfFatal(th2);
                        this.f6968a.onError(th2);
                        return;
                    }
                }
            }
        }
    }

    public f(Iterable<? extends g> iterable) {
        this.f6967a = iterable;
    }

    public final void subscribeActual(d dVar) {
        try {
            a aVar = new a(dVar, (Iterator) b.requireNonNull(this.f6967a.iterator(), "The iterator returned is null"));
            dVar.onSubscribe(aVar.c);
            aVar.a();
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, dVar);
        }
    }
}
