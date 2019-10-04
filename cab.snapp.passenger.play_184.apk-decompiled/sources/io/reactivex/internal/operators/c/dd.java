package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.b.d;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;

public final class dd<T> extends ai<Boolean> implements d<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final ae<? extends T> f7398a;

    /* renamed from: b  reason: collision with root package name */
    final ae<? extends T> f7399b;
    final io.reactivex.e.d<? super T, ? super T> c;
    final int d;

    static final class a<T> extends AtomicInteger implements c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super Boolean> f7400a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.d<? super T, ? super T> f7401b;
        final io.reactivex.internal.disposables.a c = new io.reactivex.internal.disposables.a(2);
        final ae<? extends T> d;
        final ae<? extends T> e;
        final b<T>[] f;
        volatile boolean g;
        T h;
        T i;

        a(al<? super Boolean> alVar, int i2, ae<? extends T> aeVar, ae<? extends T> aeVar2, io.reactivex.e.d<? super T, ? super T> dVar) {
            this.f7400a = alVar;
            this.d = aeVar;
            this.e = aeVar2;
            this.f7401b = dVar;
            b<T>[] bVarArr = new b[2];
            this.f = bVarArr;
            bVarArr[0] = new b<>(this, 0, i2);
            bVarArr[1] = new b<>(this, 1, i2);
        }

        public final void dispose() {
            if (!this.g) {
                this.g = true;
                this.c.dispose();
                if (getAndIncrement() == 0) {
                    b<T>[] bVarArr = this.f;
                    bVarArr[0].f7403b.clear();
                    bVarArr[1].f7403b.clear();
                }
            }
        }

        public final boolean isDisposed() {
            return this.g;
        }

        private void a(io.reactivex.internal.d.c<T> cVar, io.reactivex.internal.d.c<T> cVar2) {
            this.g = true;
            cVar.clear();
            cVar2.clear();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                b<T>[] bVarArr = this.f;
                b<T> bVar = bVarArr[0];
                io.reactivex.internal.d.c<T> cVar = bVar.f7403b;
                b<T> bVar2 = bVarArr[1];
                io.reactivex.internal.d.c<T> cVar2 = bVar2.f7403b;
                int i2 = 1;
                while (!this.g) {
                    boolean z = bVar.d;
                    if (z) {
                        Throwable th = bVar.e;
                        if (th != null) {
                            a(cVar, cVar2);
                            this.f7400a.onError(th);
                            return;
                        }
                    }
                    boolean z2 = bVar2.d;
                    if (z2) {
                        Throwable th2 = bVar2.e;
                        if (th2 != null) {
                            a(cVar, cVar2);
                            this.f7400a.onError(th2);
                            return;
                        }
                    }
                    if (this.h == null) {
                        this.h = cVar.poll();
                    }
                    boolean z3 = this.h == null;
                    if (this.i == null) {
                        this.i = cVar2.poll();
                    }
                    boolean z4 = this.i == null;
                    if (z && z2 && z3 && z4) {
                        this.f7400a.onSuccess(Boolean.TRUE);
                        return;
                    } else if (!z || !z2 || z3 == z4) {
                        if (!z3 && !z4) {
                            try {
                                if (!this.f7401b.test(this.h, this.i)) {
                                    a(cVar, cVar2);
                                    this.f7400a.onSuccess(Boolean.FALSE);
                                    return;
                                }
                                this.h = null;
                                this.i = null;
                            } catch (Throwable th3) {
                                io.reactivex.c.b.throwIfFatal(th3);
                                a(cVar, cVar2);
                                this.f7400a.onError(th3);
                                return;
                            }
                        }
                        if (z3 || z4) {
                            i2 = addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        }
                    } else {
                        a(cVar, cVar2);
                        this.f7400a.onSuccess(Boolean.FALSE);
                        return;
                    }
                }
                cVar.clear();
                cVar2.clear();
            }
        }
    }

    static final class b<T> implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T> f7402a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.d.c<T> f7403b;
        final int c;
        volatile boolean d;
        Throwable e;

        b(a<T> aVar, int i, int i2) {
            this.f7402a = aVar;
            this.c = i;
            this.f7403b = new io.reactivex.internal.d.c<>(i2);
        }

        public final void onSubscribe(c cVar) {
            a<T> aVar = this.f7402a;
            aVar.c.setResource(this.c, cVar);
        }

        public final void onNext(T t) {
            this.f7403b.offer(t);
            this.f7402a.a();
        }

        public final void onError(Throwable th) {
            this.e = th;
            this.d = true;
            this.f7402a.a();
        }

        public final void onComplete() {
            this.d = true;
            this.f7402a.a();
        }
    }

    public dd(ae<? extends T> aeVar, ae<? extends T> aeVar2, io.reactivex.e.d<? super T, ? super T> dVar, int i) {
        this.f7398a = aeVar;
        this.f7399b = aeVar2;
        this.c = dVar;
        this.d = i;
    }

    public final void subscribeActual(al<? super Boolean> alVar) {
        a aVar = new a(alVar, this.d, this.f7398a, this.f7399b, this.c);
        alVar.onSubscribe(aVar);
        b<T>[] bVarArr = aVar.f;
        aVar.d.subscribe(bVarArr[0]);
        aVar.e.subscribe(bVarArr[1]);
    }

    public final z<Boolean> fuseToObservable() {
        return io.reactivex.g.a.onAssembly(new dc(this.f7398a, this.f7399b, this.c, this.d));
    }
}
