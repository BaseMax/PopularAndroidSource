package io.reactivex.internal.operators.b;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.e.h;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.b;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;

public final class f<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f7031a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends g> f7032b;
    final boolean c;

    static final class a<T> implements c, o<T> {
        static final C0146a f = new C0146a(null);

        /* renamed from: a  reason: collision with root package name */
        final d f7033a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends g> f7034b;
        final boolean c;
        final b d = new b();
        final AtomicReference<C0146a> e = new AtomicReference<>();
        volatile boolean g;
        org.b.d h;

        /* renamed from: io.reactivex.internal.operators.b.f$a$a  reason: collision with other inner class name */
        static final class C0146a extends AtomicReference<c> implements d {

            /* renamed from: a  reason: collision with root package name */
            final a<?> f7035a;

            C0146a(a<?> aVar) {
                this.f7035a = aVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onError(Throwable th) {
                a<?> aVar = this.f7035a;
                if (!aVar.e.compareAndSet(this, null) || !aVar.d.addThrowable(th)) {
                    io.reactivex.g.a.onError(th);
                    return;
                }
                if (!aVar.c) {
                    aVar.dispose();
                    Throwable terminate = aVar.d.terminate();
                    if (terminate != io.reactivex.internal.util.h.TERMINATED) {
                        aVar.f7033a.onError(terminate);
                    }
                } else if (aVar.g) {
                    aVar.f7033a.onError(aVar.d.terminate());
                }
            }

            public final void onComplete() {
                a<?> aVar = this.f7035a;
                if (aVar.e.compareAndSet(this, null) && aVar.g) {
                    Throwable terminate = aVar.d.terminate();
                    if (terminate == null) {
                        aVar.f7033a.onComplete();
                        return;
                    }
                    aVar.f7033a.onError(terminate);
                }
            }
        }

        a(d dVar, h<? super T, ? extends g> hVar, boolean z) {
            this.f7033a = dVar;
            this.f7034b = hVar;
            this.c = z;
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.h, dVar)) {
                this.h = dVar;
                this.f7033a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            try {
                g gVar = (g) io.reactivex.internal.a.b.requireNonNull(this.f7034b.apply(t), "The mapper returned a null CompletableSource");
                C0146a aVar = new C0146a(this);
                while (true) {
                    C0146a aVar2 = this.e.get();
                    if (aVar2 == f) {
                        break;
                    } else if (this.e.compareAndSet(aVar2, aVar)) {
                        if (aVar2 != null) {
                            DisposableHelper.dispose(aVar2);
                        }
                        gVar.subscribe(aVar);
                    }
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.h.cancel();
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            if (!this.d.addThrowable(th)) {
                io.reactivex.g.a.onError(th);
            } else if (this.c) {
                onComplete();
            } else {
                a();
                Throwable terminate = this.d.terminate();
                if (terminate != io.reactivex.internal.util.h.TERMINATED) {
                    this.f7033a.onError(terminate);
                }
            }
        }

        public final void onComplete() {
            this.g = true;
            if (this.e.get() == null) {
                Throwable terminate = this.d.terminate();
                if (terminate == null) {
                    this.f7033a.onComplete();
                    return;
                }
                this.f7033a.onError(terminate);
            }
        }

        private void a() {
            C0146a andSet = this.e.getAndSet(f);
            if (andSet != null && andSet != f) {
                DisposableHelper.dispose(andSet);
            }
        }

        public final void dispose() {
            this.h.cancel();
            a();
        }

        public final boolean isDisposed() {
            return this.e.get() == f;
        }
    }

    public f(j<T> jVar, h<? super T, ? extends g> hVar, boolean z) {
        this.f7031a = jVar;
        this.f7032b = hVar;
        this.c = z;
    }

    public final void subscribeActual(d dVar) {
        this.f7031a.subscribe(new a(dVar, this.f7032b, this.c));
    }
}
