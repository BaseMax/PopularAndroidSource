package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.j.e;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class eh<T, B> extends a<T, z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final ae<B> f7515b;
    final int c;

    static final class a<T, B> extends io.reactivex.observers.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, B> f7516a;

        /* renamed from: b  reason: collision with root package name */
        boolean f7517b;

        a(b<T, B> bVar) {
            this.f7516a = bVar;
        }

        public final void onNext(B b2) {
            if (!this.f7517b) {
                this.f7516a.a();
            }
        }

        public final void onError(Throwable th) {
            if (this.f7517b) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.f7517b = true;
            b<T, B> bVar = this.f7516a;
            DisposableHelper.dispose(bVar.d);
            if (bVar.g.addThrowable(th)) {
                bVar.j = true;
                bVar.b();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (!this.f7517b) {
                this.f7517b = true;
                b<T, B> bVar = this.f7516a;
                DisposableHelper.dispose(bVar.d);
                bVar.j = true;
                bVar.b();
            }
        }
    }

    static final class b<T, B> extends AtomicInteger implements ag<T>, c, Runnable {
        static final Object i = new Object();

        /* renamed from: a  reason: collision with root package name */
        final ag<? super z<T>> f7518a;

        /* renamed from: b  reason: collision with root package name */
        final int f7519b;
        final a<T, B> c = new a<>(this);
        final AtomicReference<c> d = new AtomicReference<>();
        final AtomicInteger e = new AtomicInteger(1);
        final io.reactivex.internal.d.a<Object> f = new io.reactivex.internal.d.a<>();
        final io.reactivex.internal.util.b g = new io.reactivex.internal.util.b();
        final AtomicBoolean h = new AtomicBoolean();
        volatile boolean j;
        e<T> k;

        b(ag<? super z<T>> agVar, int i2) {
            this.f7518a = agVar;
            this.f7519b = i2;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this.d, cVar)) {
                a();
            }
        }

        public final void onNext(T t) {
            this.f.offer(t);
            b();
        }

        public final void onError(Throwable th) {
            this.c.dispose();
            if (this.g.addThrowable(th)) {
                this.j = true;
                b();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.c.dispose();
            this.j = true;
            b();
        }

        public final void dispose() {
            if (this.h.compareAndSet(false, true)) {
                this.c.dispose();
                if (this.e.decrementAndGet() == 0) {
                    DisposableHelper.dispose(this.d);
                }
            }
        }

        public final boolean isDisposed() {
            return this.h.get();
        }

        public final void run() {
            if (this.e.decrementAndGet() == 0) {
                DisposableHelper.dispose(this.d);
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.f.offer(i);
            b();
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            if (getAndIncrement() == 0) {
                ag<? super z<T>> agVar = this.f7518a;
                io.reactivex.internal.d.a<Object> aVar = this.f;
                io.reactivex.internal.util.b bVar = this.g;
                int i2 = 1;
                while (this.e.get() != 0) {
                    e<T> eVar = this.k;
                    boolean z = this.j;
                    if (!z || bVar.get() == null) {
                        Object poll = aVar.poll();
                        boolean z2 = poll == null;
                        if (z && z2) {
                            Throwable terminate = bVar.terminate();
                            if (terminate == null) {
                                if (eVar != null) {
                                    this.k = null;
                                    eVar.onComplete();
                                }
                                agVar.onComplete();
                                return;
                            }
                            if (eVar != null) {
                                this.k = null;
                                eVar.onError(terminate);
                            }
                            agVar.onError(terminate);
                            return;
                        } else if (z2) {
                            i2 = addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        } else if (poll != i) {
                            eVar.onNext(poll);
                        } else {
                            if (eVar != null) {
                                this.k = null;
                                eVar.onComplete();
                            }
                            if (!this.h.get()) {
                                e<T> create = e.create(this.f7519b, this);
                                this.k = create;
                                this.e.getAndIncrement();
                                agVar.onNext(create);
                            }
                        }
                    } else {
                        aVar.clear();
                        Throwable terminate2 = bVar.terminate();
                        if (eVar != null) {
                            this.k = null;
                            eVar.onError(terminate2);
                        }
                        agVar.onError(terminate2);
                        return;
                    }
                }
                aVar.clear();
                this.k = null;
            }
        }
    }

    public eh(ae<T> aeVar, ae<B> aeVar2, int i) {
        super(aeVar);
        this.f7515b = aeVar2;
        this.c = i;
    }

    public final void subscribeActual(ag<? super z<T>> agVar) {
        b bVar = new b(agVar, this.c);
        agVar.onSubscribe(bVar);
        this.f7515b.subscribe(bVar.c);
        this.f7091a.subscribe(bVar);
    }
}
