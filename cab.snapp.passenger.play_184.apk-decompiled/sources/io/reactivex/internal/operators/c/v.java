package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.b.e;
import io.reactivex.internal.b.j;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.observers.d;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class v<T, U> extends a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends ae<? extends U>> f7622b;
    final int c;
    final ErrorMode d;

    static final class a<T, R> extends AtomicInteger implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7623a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ae<? extends R>> f7624b;
        final int c;
        final io.reactivex.internal.util.b d = new io.reactivex.internal.util.b();
        final C0172a<R> e;
        final boolean f;
        j<T> g;
        c h;
        volatile boolean i;
        volatile boolean j;
        volatile boolean k;
        int l;

        /* renamed from: io.reactivex.internal.operators.c.v$a$a  reason: collision with other inner class name */
        static final class C0172a<R> extends AtomicReference<c> implements ag<R> {

            /* renamed from: a  reason: collision with root package name */
            final ag<? super R> f7625a;

            /* renamed from: b  reason: collision with root package name */
            final a<?, R> f7626b;

            C0172a(ag<? super R> agVar, a<?, R> aVar) {
                this.f7625a = agVar;
                this.f7626b = aVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.replace(this, cVar);
            }

            public final void onNext(R r) {
                this.f7625a.onNext(r);
            }

            public final void onError(Throwable th) {
                a<?, R> aVar = this.f7626b;
                if (aVar.d.addThrowable(th)) {
                    if (!aVar.f) {
                        aVar.h.dispose();
                    }
                    aVar.i = false;
                    aVar.a();
                    return;
                }
                io.reactivex.g.a.onError(th);
            }

            public final void onComplete() {
                a<?, R> aVar = this.f7626b;
                aVar.i = false;
                aVar.a();
            }
        }

        a(ag<? super R> agVar, h<? super T, ? extends ae<? extends R>> hVar, int i2, boolean z) {
            this.f7623a = agVar;
            this.f7624b = hVar;
            this.c = i2;
            this.f = z;
            this.e = new C0172a<>(agVar, this);
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.h, cVar)) {
                this.h = cVar;
                if (cVar instanceof e) {
                    e eVar = (e) cVar;
                    int requestFusion = eVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.l = requestFusion;
                        this.g = eVar;
                        this.j = true;
                        this.f7623a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.l = requestFusion;
                        this.g = eVar;
                        this.f7623a.onSubscribe(this);
                        return;
                    }
                }
                this.g = new io.reactivex.internal.d.c(this.c);
                this.f7623a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (this.l == 0) {
                this.g.offer(t);
            }
            a();
        }

        public final void onError(Throwable th) {
            if (this.d.addThrowable(th)) {
                this.j = true;
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.j = true;
            a();
        }

        public final boolean isDisposed() {
            return this.k;
        }

        public final void dispose() {
            this.k = true;
            this.h.dispose();
            DisposableHelper.dispose(this.e);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                ag<? super R> agVar = this.f7623a;
                j<T> jVar = this.g;
                io.reactivex.internal.util.b bVar = this.d;
                while (true) {
                    if (!this.i) {
                        if (this.k) {
                            jVar.clear();
                            return;
                        } else if (this.f || ((Throwable) bVar.get()) == null) {
                            boolean z = this.j;
                            try {
                                T poll = jVar.poll();
                                boolean z2 = poll == null;
                                if (z && z2) {
                                    this.k = true;
                                    Throwable terminate = bVar.terminate();
                                    if (terminate != null) {
                                        agVar.onError(terminate);
                                        return;
                                    } else {
                                        agVar.onComplete();
                                        return;
                                    }
                                } else if (!z2) {
                                    try {
                                        ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f7624b.apply(poll), "The mapper returned a null ObservableSource");
                                        if (aeVar instanceof Callable) {
                                            try {
                                                Object call = ((Callable) aeVar).call();
                                                if (call != null && !this.k) {
                                                    agVar.onNext(call);
                                                }
                                            } catch (Throwable th) {
                                                io.reactivex.c.b.throwIfFatal(th);
                                                bVar.addThrowable(th);
                                            }
                                        } else {
                                            this.i = true;
                                            aeVar.subscribe(this.e);
                                        }
                                    } catch (Throwable th2) {
                                        io.reactivex.c.b.throwIfFatal(th2);
                                        this.k = true;
                                        this.h.dispose();
                                        jVar.clear();
                                        bVar.addThrowable(th2);
                                        agVar.onError(bVar.terminate());
                                        return;
                                    }
                                }
                            } catch (Throwable th3) {
                                io.reactivex.c.b.throwIfFatal(th3);
                                this.k = true;
                                this.h.dispose();
                                bVar.addThrowable(th3);
                                agVar.onError(bVar.terminate());
                                return;
                            }
                        } else {
                            jVar.clear();
                            this.k = true;
                            agVar.onError(bVar.terminate());
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }
    }

    static final class b<T, U> extends AtomicInteger implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super U> f7627a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ae<? extends U>> f7628b;
        final a<U> c;
        final int d;
        j<T> e;
        c f;
        volatile boolean g;
        volatile boolean h;
        volatile boolean i;
        int j;

        static final class a<U> extends AtomicReference<c> implements ag<U> {

            /* renamed from: a  reason: collision with root package name */
            final ag<? super U> f7629a;

            /* renamed from: b  reason: collision with root package name */
            final b<?, ?> f7630b;

            a(ag<? super U> agVar, b<?, ?> bVar) {
                this.f7629a = agVar;
                this.f7630b = bVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.replace(this, cVar);
            }

            public final void onNext(U u) {
                this.f7629a.onNext(u);
            }

            public final void onError(Throwable th) {
                this.f7630b.dispose();
                this.f7629a.onError(th);
            }

            public final void onComplete() {
                b<?, ?> bVar = this.f7630b;
                bVar.g = false;
                bVar.a();
            }
        }

        b(ag<? super U> agVar, h<? super T, ? extends ae<? extends U>> hVar, int i2) {
            this.f7627a = agVar;
            this.f7628b = hVar;
            this.d = i2;
            this.c = new a<>(agVar, this);
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f, cVar)) {
                this.f = cVar;
                if (cVar instanceof e) {
                    e eVar = (e) cVar;
                    int requestFusion = eVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.j = requestFusion;
                        this.e = eVar;
                        this.i = true;
                        this.f7627a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.j = requestFusion;
                        this.e = eVar;
                        this.f7627a.onSubscribe(this);
                        return;
                    }
                }
                this.e = new io.reactivex.internal.d.c(this.d);
                this.f7627a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.i) {
                if (this.j == 0) {
                    this.e.offer(t);
                }
                a();
            }
        }

        public final void onError(Throwable th) {
            if (this.i) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.i = true;
            dispose();
            this.f7627a.onError(th);
        }

        public final void onComplete() {
            if (!this.i) {
                this.i = true;
                a();
            }
        }

        public final boolean isDisposed() {
            return this.h;
        }

        public final void dispose() {
            this.h = true;
            DisposableHelper.dispose(this.c);
            this.f.dispose();
            if (getAndIncrement() == 0) {
                this.e.clear();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                while (!this.h) {
                    if (!this.g) {
                        boolean z = this.i;
                        try {
                            T poll = this.e.poll();
                            boolean z2 = poll == null;
                            if (z && z2) {
                                this.h = true;
                                this.f7627a.onComplete();
                                return;
                            } else if (!z2) {
                                try {
                                    ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f7628b.apply(poll), "The mapper returned a null ObservableSource");
                                    this.g = true;
                                    aeVar.subscribe(this.c);
                                } catch (Throwable th) {
                                    io.reactivex.c.b.throwIfFatal(th);
                                    dispose();
                                    this.e.clear();
                                    this.f7627a.onError(th);
                                    return;
                                }
                            }
                        } catch (Throwable th2) {
                            io.reactivex.c.b.throwIfFatal(th2);
                            dispose();
                            this.e.clear();
                            this.f7627a.onError(th2);
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                this.e.clear();
            }
        }
    }

    public v(ae<T> aeVar, h<? super T, ? extends ae<? extends U>> hVar, int i, ErrorMode errorMode) {
        super(aeVar);
        this.f7622b = hVar;
        this.d = errorMode;
        this.c = Math.max(8, i);
    }

    public final void subscribeActual(ag<? super U> agVar) {
        if (!cz.tryScalarXMapSubscribe(this.f7091a, agVar, this.f7622b)) {
            if (this.d == ErrorMode.IMMEDIATE) {
                this.f7091a.subscribe(new b(new d(agVar), this.f7622b, this.c));
            } else {
                this.f7091a.subscribe(new a(agVar, this.f7622b, this.c, this.d == ErrorMode.END));
            }
        }
    }
}
