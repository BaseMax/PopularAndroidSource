package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.j.e;
import io.reactivex.z;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ej<T, B> extends a<T, z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends ae<B>> f7526b;
    final int c;

    static final class a<T, B> extends io.reactivex.observers.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, B> f7527a;

        /* renamed from: b  reason: collision with root package name */
        boolean f7528b;

        a(b<T, B> bVar) {
            this.f7527a = bVar;
        }

        public final void onNext(B b2) {
            if (!this.f7528b) {
                this.f7528b = true;
                dispose();
                b<T, B> bVar = this.f7527a;
                bVar.c.compareAndSet(this, null);
                bVar.f.offer(b.j);
                bVar.a();
            }
        }

        public final void onError(Throwable th) {
            if (this.f7528b) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.f7528b = true;
            b<T, B> bVar = this.f7527a;
            bVar.k.dispose();
            if (bVar.g.addThrowable(th)) {
                bVar.l = true;
                bVar.a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (!this.f7528b) {
                this.f7528b = true;
                b<T, B> bVar = this.f7527a;
                bVar.k.dispose();
                bVar.l = true;
                bVar.a();
            }
        }
    }

    static final class b<T, B> extends AtomicInteger implements ag<T>, c, Runnable {
        static final a<Object, Object> d = new a<>(null);
        static final Object j = new Object();

        /* renamed from: a  reason: collision with root package name */
        final ag<? super z<T>> f7529a;

        /* renamed from: b  reason: collision with root package name */
        final int f7530b;
        final AtomicReference<a<T, B>> c = new AtomicReference<>();
        final AtomicInteger e = new AtomicInteger(1);
        final io.reactivex.internal.d.a<Object> f = new io.reactivex.internal.d.a<>();
        final io.reactivex.internal.util.b g = new io.reactivex.internal.util.b();
        final AtomicBoolean h = new AtomicBoolean();
        final Callable<? extends ae<B>> i;
        c k;
        volatile boolean l;
        e<T> m;

        b(ag<? super z<T>> agVar, int i2, Callable<? extends ae<B>> callable) {
            this.f7529a = agVar;
            this.f7530b = i2;
            this.i = callable;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.k, cVar)) {
                this.k = cVar;
                this.f7529a.onSubscribe(this);
                this.f.offer(j);
                a();
            }
        }

        public final void onNext(T t) {
            this.f.offer(t);
            a();
        }

        public final void onError(Throwable th) {
            b();
            if (this.g.addThrowable(th)) {
                this.l = true;
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            b();
            this.l = true;
            a();
        }

        public final void dispose() {
            if (this.h.compareAndSet(false, true)) {
                b();
                if (this.e.decrementAndGet() == 0) {
                    this.k.dispose();
                }
            }
        }

        private void b() {
            c andSet = this.c.getAndSet(d);
            if (andSet != null && andSet != d) {
                andSet.dispose();
            }
        }

        public final boolean isDisposed() {
            return this.h.get();
        }

        public final void run() {
            if (this.e.decrementAndGet() == 0) {
                this.k.dispose();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                ag<? super z<T>> agVar = this.f7529a;
                io.reactivex.internal.d.a<Object> aVar = this.f;
                io.reactivex.internal.util.b bVar = this.g;
                int i2 = 1;
                while (this.e.get() != 0) {
                    e<T> eVar = this.m;
                    boolean z = this.l;
                    if (!z || bVar.get() == null) {
                        Object poll = aVar.poll();
                        boolean z2 = poll == null;
                        if (z && z2) {
                            Throwable terminate = bVar.terminate();
                            if (terminate == null) {
                                if (eVar != null) {
                                    this.m = null;
                                    eVar.onComplete();
                                }
                                agVar.onComplete();
                                return;
                            }
                            if (eVar != null) {
                                this.m = null;
                                eVar.onError(terminate);
                            }
                            agVar.onError(terminate);
                            return;
                        } else if (z2) {
                            i2 = addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        } else if (poll != j) {
                            eVar.onNext(poll);
                        } else {
                            if (eVar != null) {
                                this.m = null;
                                eVar.onComplete();
                            }
                            if (!this.h.get()) {
                                e<T> create = e.create(this.f7530b, this);
                                this.m = create;
                                this.e.getAndIncrement();
                                try {
                                    ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.i.call(), "The other Callable returned a null ObservableSource");
                                    a aVar2 = new a(this);
                                    if (this.c.compareAndSet(null, aVar2)) {
                                        aeVar.subscribe(aVar2);
                                        agVar.onNext(create);
                                    }
                                } catch (Throwable th) {
                                    io.reactivex.c.b.throwIfFatal(th);
                                    bVar.addThrowable(th);
                                    this.l = true;
                                }
                            }
                        }
                    } else {
                        aVar.clear();
                        Throwable terminate2 = bVar.terminate();
                        if (eVar != null) {
                            this.m = null;
                            eVar.onError(terminate2);
                        }
                        agVar.onError(terminate2);
                        return;
                    }
                }
                aVar.clear();
                this.m = null;
            }
        }
    }

    public ej(ae<T> aeVar, Callable<? extends ae<B>> callable, int i) {
        super(aeVar);
        this.f7526b = callable;
        this.c = i;
    }

    public final void subscribeActual(ag<? super z<T>> agVar) {
        this.f7091a.subscribe(new b(agVar, this.c, this.f7526b));
    }
}
