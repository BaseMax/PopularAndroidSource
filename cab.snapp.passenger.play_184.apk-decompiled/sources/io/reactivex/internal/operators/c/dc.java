package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.d;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;

public final class dc<T> extends z<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final ae<? extends T> f7392a;

    /* renamed from: b  reason: collision with root package name */
    final ae<? extends T> f7393b;
    final d<? super T, ? super T> c;
    final int d;

    static final class a<T> extends AtomicInteger implements c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super Boolean> f7394a;

        /* renamed from: b  reason: collision with root package name */
        final d<? super T, ? super T> f7395b;
        final io.reactivex.internal.disposables.a c = new io.reactivex.internal.disposables.a(2);
        final ae<? extends T> d;
        final ae<? extends T> e;
        final b<T>[] f;
        volatile boolean g;
        T h;
        T i;

        a(ag<? super Boolean> agVar, int i2, ae<? extends T> aeVar, ae<? extends T> aeVar2, d<? super T, ? super T> dVar) {
            this.f7394a = agVar;
            this.d = aeVar;
            this.e = aeVar2;
            this.f7395b = dVar;
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
                    bVarArr[0].f7397b.clear();
                    bVarArr[1].f7397b.clear();
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
                io.reactivex.internal.d.c<T> cVar = bVar.f7397b;
                b<T> bVar2 = bVarArr[1];
                io.reactivex.internal.d.c<T> cVar2 = bVar2.f7397b;
                int i2 = 1;
                while (!this.g) {
                    boolean z = bVar.d;
                    if (z) {
                        Throwable th = bVar.e;
                        if (th != null) {
                            a(cVar, cVar2);
                            this.f7394a.onError(th);
                            return;
                        }
                    }
                    boolean z2 = bVar2.d;
                    if (z2) {
                        Throwable th2 = bVar2.e;
                        if (th2 != null) {
                            a(cVar, cVar2);
                            this.f7394a.onError(th2);
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
                        this.f7394a.onNext(Boolean.TRUE);
                        this.f7394a.onComplete();
                        return;
                    } else if (!z || !z2 || z3 == z4) {
                        if (!z3 && !z4) {
                            try {
                                if (!this.f7395b.test(this.h, this.i)) {
                                    a(cVar, cVar2);
                                    this.f7394a.onNext(Boolean.FALSE);
                                    this.f7394a.onComplete();
                                    return;
                                }
                                this.h = null;
                                this.i = null;
                            } catch (Throwable th3) {
                                io.reactivex.c.b.throwIfFatal(th3);
                                a(cVar, cVar2);
                                this.f7394a.onError(th3);
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
                        this.f7394a.onNext(Boolean.FALSE);
                        this.f7394a.onComplete();
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
        final a<T> f7396a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.d.c<T> f7397b;
        final int c;
        volatile boolean d;
        Throwable e;

        b(a<T> aVar, int i, int i2) {
            this.f7396a = aVar;
            this.c = i;
            this.f7397b = new io.reactivex.internal.d.c<>(i2);
        }

        public final void onSubscribe(c cVar) {
            a<T> aVar = this.f7396a;
            aVar.c.setResource(this.c, cVar);
        }

        public final void onNext(T t) {
            this.f7397b.offer(t);
            this.f7396a.a();
        }

        public final void onError(Throwable th) {
            this.e = th;
            this.d = true;
            this.f7396a.a();
        }

        public final void onComplete() {
            this.d = true;
            this.f7396a.a();
        }
    }

    public dc(ae<? extends T> aeVar, ae<? extends T> aeVar2, d<? super T, ? super T> dVar, int i) {
        this.f7392a = aeVar;
        this.f7393b = aeVar2;
        this.c = dVar;
        this.d = i;
    }

    public final void subscribeActual(ag<? super Boolean> agVar) {
        a aVar = new a(agVar, this.d, this.f7392a, this.f7393b, this.c);
        agVar.onSubscribe(aVar);
        b<T>[] bVarArr = aVar.f;
        aVar.d.subscribe(bVarArr[0]);
        aVar.e.subscribe(bVarArr[1]);
    }
}
