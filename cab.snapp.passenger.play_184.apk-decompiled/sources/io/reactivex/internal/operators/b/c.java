package io.reactivex.internal.operators.b;

import io.reactivex.d;
import io.reactivex.e.h;
import io.reactivex.g;
import io.reactivex.internal.b.i;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.b;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class c<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f7018a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends g> f7019b;
    final ErrorMode c;
    final int d;

    static final class a<T> extends AtomicInteger implements io.reactivex.b.c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final d f7020a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends g> f7021b;
        final ErrorMode c;
        final b d = new b();
        final C0143a e = new C0143a(this);
        final int f;
        final i<T> g;
        org.b.d h;
        volatile boolean i;
        volatile boolean j;
        volatile boolean k;
        int l;

        /* renamed from: io.reactivex.internal.operators.b.c$a$a  reason: collision with other inner class name */
        static final class C0143a extends AtomicReference<io.reactivex.b.c> implements d {

            /* renamed from: a  reason: collision with root package name */
            final a<?> f7022a;

            C0143a(a<?> aVar) {
                this.f7022a = aVar;
            }

            public final void onSubscribe(io.reactivex.b.c cVar) {
                DisposableHelper.replace(this, cVar);
            }

            public final void onError(Throwable th) {
                a<?> aVar = this.f7022a;
                if (!aVar.d.addThrowable(th)) {
                    io.reactivex.g.a.onError(th);
                } else if (aVar.c == ErrorMode.IMMEDIATE) {
                    aVar.h.cancel();
                    Throwable terminate = aVar.d.terminate();
                    if (terminate != io.reactivex.internal.util.h.TERMINATED) {
                        aVar.f7020a.onError(terminate);
                    }
                    if (aVar.getAndIncrement() == 0) {
                        aVar.g.clear();
                    }
                } else {
                    aVar.i = false;
                    aVar.a();
                }
            }

            public final void onComplete() {
                a<?> aVar = this.f7022a;
                aVar.i = false;
                aVar.a();
            }
        }

        a(d dVar, h<? super T, ? extends g> hVar, ErrorMode errorMode, int i2) {
            this.f7020a = dVar;
            this.f7021b = hVar;
            this.c = errorMode;
            this.f = i2;
            this.g = new io.reactivex.internal.d.b(i2);
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.h, dVar)) {
                this.h = dVar;
                this.f7020a.onSubscribe(this);
                dVar.request((long) this.f);
            }
        }

        public final void onNext(T t) {
            if (this.g.offer(t)) {
                a();
                return;
            }
            this.h.cancel();
            onError(new io.reactivex.c.c("Queue full?!"));
        }

        public final void onError(Throwable th) {
            if (!this.d.addThrowable(th)) {
                io.reactivex.g.a.onError(th);
            } else if (this.c == ErrorMode.IMMEDIATE) {
                DisposableHelper.dispose(this.e);
                Throwable terminate = this.d.terminate();
                if (terminate != io.reactivex.internal.util.h.TERMINATED) {
                    this.f7020a.onError(terminate);
                }
                if (getAndIncrement() == 0) {
                    this.g.clear();
                }
            } else {
                this.j = true;
                a();
            }
        }

        public final void onComplete() {
            this.j = true;
            a();
        }

        public final void dispose() {
            this.k = true;
            this.h.cancel();
            DisposableHelper.dispose(this.e);
            if (getAndIncrement() == 0) {
                this.g.clear();
            }
        }

        public final boolean isDisposed() {
            return this.k;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                while (!this.k) {
                    if (!this.i) {
                        if (this.c != ErrorMode.BOUNDARY || this.d.get() == null) {
                            boolean z = this.j;
                            T poll = this.g.poll();
                            boolean z2 = poll == null;
                            if (z && z2) {
                                Throwable terminate = this.d.terminate();
                                if (terminate != null) {
                                    this.f7020a.onError(terminate);
                                    return;
                                } else {
                                    this.f7020a.onComplete();
                                    return;
                                }
                            } else if (!z2) {
                                int i2 = this.f;
                                int i3 = i2 - (i2 >> 1);
                                int i4 = this.l + 1;
                                if (i4 == i3) {
                                    this.l = 0;
                                    this.h.request((long) i3);
                                } else {
                                    this.l = i4;
                                }
                                try {
                                    g gVar = (g) io.reactivex.internal.a.b.requireNonNull(this.f7021b.apply(poll), "The mapper returned a null CompletableSource");
                                    this.i = true;
                                    gVar.subscribe(this.e);
                                } catch (Throwable th) {
                                    io.reactivex.c.b.throwIfFatal(th);
                                    this.g.clear();
                                    this.h.cancel();
                                    this.d.addThrowable(th);
                                    this.f7020a.onError(this.d.terminate());
                                    return;
                                }
                            }
                        } else {
                            this.g.clear();
                            this.f7020a.onError(this.d.terminate());
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                this.g.clear();
            }
        }
    }

    public c(j<T> jVar, h<? super T, ? extends g> hVar, ErrorMode errorMode, int i) {
        this.f7018a = jVar;
        this.f7019b = hVar;
        this.c = errorMode;
        this.d = i;
    }

    public final void subscribeActual(d dVar) {
        this.f7018a.subscribe(new a(dVar, this.f7019b, this.c, this.d));
    }
}
