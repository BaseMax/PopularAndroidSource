package io.reactivex.internal.operators.b;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.b;
import io.reactivex.t;
import io.reactivex.w;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class p<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f7075a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends w<? extends R>> f7076b;
    final boolean c;

    static final class a<T, R> extends AtomicInteger implements ag<T>, c {
        static final C0153a<Object> f = new C0153a<>(null);

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7077a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends w<? extends R>> f7078b;
        final boolean c;
        final b d = new b();
        final AtomicReference<C0153a<R>> e = new AtomicReference<>();
        c g;
        volatile boolean h;
        volatile boolean i;

        /* renamed from: io.reactivex.internal.operators.b.p$a$a  reason: collision with other inner class name */
        static final class C0153a<R> extends AtomicReference<c> implements t<R> {

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f7079a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f7080b;

            C0153a(a<?, R> aVar) {
                this.f7079a = aVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onSuccess(R r) {
                this.f7080b = r;
                this.f7079a.b();
            }

            public final void onError(Throwable th) {
                a<?, R> aVar = this.f7079a;
                if (!aVar.e.compareAndSet(this, null) || !aVar.d.addThrowable(th)) {
                    io.reactivex.g.a.onError(th);
                    return;
                }
                if (!aVar.c) {
                    aVar.g.dispose();
                    aVar.a();
                }
                aVar.b();
            }

            public final void onComplete() {
                a<?, R> aVar = this.f7079a;
                if (aVar.e.compareAndSet(this, null)) {
                    aVar.b();
                }
            }
        }

        a(ag<? super R> agVar, h<? super T, ? extends w<? extends R>> hVar, boolean z) {
            this.f7077a = agVar;
            this.f7078b = hVar;
            this.c = z;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.g, cVar)) {
                this.g = cVar;
                this.f7077a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            C0153a aVar = this.e.get();
            if (aVar != null) {
                DisposableHelper.dispose(aVar);
            }
            try {
                w wVar = (w) io.reactivex.internal.a.b.requireNonNull(this.f7078b.apply(t), "The mapper returned a null MaybeSource");
                C0153a aVar2 = new C0153a(this);
                while (true) {
                    C0153a<Object> aVar3 = this.e.get();
                    if (aVar3 != f) {
                        if (this.e.compareAndSet(aVar3, aVar2)) {
                            wVar.subscribe(aVar2);
                            break;
                        }
                    } else {
                        break;
                    }
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.g.dispose();
                this.e.getAndSet(f);
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            if (this.d.addThrowable(th)) {
                if (!this.c) {
                    a();
                }
                this.h = true;
                b();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.h = true;
            b();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            C0153a<Object> andSet = this.e.getAndSet(f);
            if (andSet != null && andSet != f) {
                DisposableHelper.dispose(andSet);
            }
        }

        public final void dispose() {
            this.i = true;
            this.g.dispose();
            a();
        }

        public final boolean isDisposed() {
            return this.i;
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            if (getAndIncrement() == 0) {
                ag<? super R> agVar = this.f7077a;
                b bVar = this.d;
                AtomicReference<C0153a<R>> atomicReference = this.e;
                int i2 = 1;
                while (!this.i) {
                    if (bVar.get() == null || this.c) {
                        boolean z = this.h;
                        C0153a aVar = atomicReference.get();
                        boolean z2 = aVar == null;
                        if (z && z2) {
                            Throwable terminate = bVar.terminate();
                            if (terminate != null) {
                                agVar.onError(terminate);
                                return;
                            } else {
                                agVar.onComplete();
                                return;
                            }
                        } else if (z2 || aVar.f7080b == null) {
                            i2 = addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        } else {
                            atomicReference.compareAndSet(aVar, null);
                            agVar.onNext(aVar.f7080b);
                        }
                    } else {
                        agVar.onError(bVar.terminate());
                        return;
                    }
                }
            }
        }
    }

    public p(z<T> zVar, h<? super T, ? extends w<? extends R>> hVar, boolean z) {
        this.f7075a = zVar;
        this.f7076b = hVar;
        this.c = z;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        if (!r.a((Object) this.f7075a, this.f7076b, agVar)) {
            this.f7075a.subscribe(new a(agVar, this.f7076b, this.c));
        }
    }
}
