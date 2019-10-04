package io.reactivex.internal.operators.b;

import io.reactivex.ag;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.b.i;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.b;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class n<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f7065a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends ao<? extends R>> f7066b;
    final ErrorMode c;
    final int d;

    static final class a<T, R> extends AtomicInteger implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7067a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ao<? extends R>> f7068b;
        final b c = new b();
        final C0151a<R> d = new C0151a<>(this);
        final i<T> e;
        final ErrorMode f;
        c g;
        volatile boolean h;
        volatile boolean i;
        R j;
        volatile int k;

        /* renamed from: io.reactivex.internal.operators.b.n$a$a  reason: collision with other inner class name */
        static final class C0151a<R> extends AtomicReference<c> implements al<R> {

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f7069a;

            C0151a(a<?, R> aVar) {
                this.f7069a = aVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.replace(this, cVar);
            }

            public final void onSuccess(R r) {
                a<?, R> aVar = this.f7069a;
                aVar.j = r;
                aVar.k = 2;
                aVar.a();
            }

            public final void onError(Throwable th) {
                a<?, R> aVar = this.f7069a;
                if (aVar.c.addThrowable(th)) {
                    if (aVar.f != ErrorMode.END) {
                        aVar.g.dispose();
                    }
                    aVar.k = 0;
                    aVar.a();
                    return;
                }
                io.reactivex.g.a.onError(th);
            }
        }

        a(ag<? super R> agVar, h<? super T, ? extends ao<? extends R>> hVar, int i2, ErrorMode errorMode) {
            this.f7067a = agVar;
            this.f7068b = hVar;
            this.f = errorMode;
            this.e = new io.reactivex.internal.d.c(i2);
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.g, cVar)) {
                this.g = cVar;
                this.f7067a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.e.offer(t);
            a();
        }

        public final void onError(Throwable th) {
            if (this.c.addThrowable(th)) {
                if (this.f == ErrorMode.IMMEDIATE) {
                    DisposableHelper.dispose(this.d);
                }
                this.h = true;
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.h = true;
            a();
        }

        public final void dispose() {
            this.i = true;
            this.g.dispose();
            DisposableHelper.dispose(this.d);
            if (getAndIncrement() == 0) {
                this.e.clear();
                this.j = null;
            }
        }

        public final boolean isDisposed() {
            return this.i;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                ag<? super R> agVar = this.f7067a;
                ErrorMode errorMode = this.f;
                i<T> iVar = this.e;
                b bVar = this.c;
                int i2 = 1;
                while (true) {
                    if (this.i) {
                        iVar.clear();
                        this.j = null;
                    } else {
                        int i3 = this.k;
                        if (bVar.get() == null || !(errorMode == ErrorMode.IMMEDIATE || (errorMode == ErrorMode.BOUNDARY && i3 == 0))) {
                            boolean z = false;
                            if (i3 == 0) {
                                boolean z2 = this.h;
                                T poll = iVar.poll();
                                if (poll == null) {
                                    z = true;
                                }
                                if (z2 && z) {
                                    Throwable terminate = bVar.terminate();
                                    if (terminate == null) {
                                        agVar.onComplete();
                                        return;
                                    } else {
                                        agVar.onError(terminate);
                                        return;
                                    }
                                } else if (!z) {
                                    try {
                                        ao aoVar = (ao) io.reactivex.internal.a.b.requireNonNull(this.f7068b.apply(poll), "The mapper returned a null SingleSource");
                                        this.k = 1;
                                        aoVar.subscribe(this.d);
                                    } catch (Throwable th) {
                                        io.reactivex.c.b.throwIfFatal(th);
                                        this.g.dispose();
                                        iVar.clear();
                                        bVar.addThrowable(th);
                                        agVar.onError(bVar.terminate());
                                        return;
                                    }
                                }
                            } else if (i3 == 2) {
                                R r = this.j;
                                this.j = null;
                                agVar.onNext(r);
                                this.k = 0;
                            }
                        }
                    }
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
                iVar.clear();
                this.j = null;
                agVar.onError(bVar.terminate());
            }
        }
    }

    public n(z<T> zVar, h<? super T, ? extends ao<? extends R>> hVar, ErrorMode errorMode, int i) {
        this.f7065a = zVar;
        this.f7066b = hVar;
        this.c = errorMode;
        this.d = i;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        if (!r.b(this.f7065a, this.f7066b, agVar)) {
            this.f7065a.subscribe(new a(agVar, this.f7066b, this.d, this.c));
        }
    }
}
