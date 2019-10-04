package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.i;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class em<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final ae<?>[] f7543b;
    final Iterable<? extends ae<?>> c;
    final h<? super Object[], R> d;

    final class a implements h<T, R> {
        a() {
        }

        public final R apply(T t) throws Exception {
            return io.reactivex.internal.a.b.requireNonNull(em.this.d.apply(new Object[]{t}), "The combiner returned a null value");
        }
    }

    static final class b<T, R> extends AtomicInteger implements ag<T>, io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7545a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Object[], R> f7546b;
        final c[] c;
        final AtomicReferenceArray<Object> d;
        final AtomicReference<io.reactivex.b.c> e;
        final io.reactivex.internal.util.b f;
        volatile boolean g;

        b(ag<? super R> agVar, h<? super Object[], R> hVar, int i) {
            this.f7545a = agVar;
            this.f7546b = hVar;
            c[] cVarArr = new c[i];
            for (int i2 = 0; i2 < i; i2++) {
                cVarArr[i2] = new c(this, i2);
            }
            this.c = cVarArr;
            this.d = new AtomicReferenceArray<>(i);
            this.e = new AtomicReference<>();
            this.f = new io.reactivex.internal.util.b();
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this.e, cVar);
        }

        public final void onNext(T t) {
            if (!this.g) {
                AtomicReferenceArray<Object> atomicReferenceArray = this.d;
                int length = atomicReferenceArray.length();
                Object[] objArr = new Object[(length + 1)];
                int i = 0;
                objArr[0] = t;
                while (i < length) {
                    Object obj = atomicReferenceArray.get(i);
                    if (obj != null) {
                        i++;
                        objArr[i] = obj;
                    } else {
                        return;
                    }
                }
                try {
                    i.onNext(this.f7545a, io.reactivex.internal.a.b.requireNonNull(this.f7546b.apply(objArr), "combiner returned a null value"), (AtomicInteger) this, this.f);
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    dispose();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.g) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.g = true;
            a(-1);
            i.onError((ag<?>) this.f7545a, th, (AtomicInteger) this, this.f);
        }

        public final void onComplete() {
            if (!this.g) {
                this.g = true;
                a(-1);
                i.onComplete((ag<?>) this.f7545a, (AtomicInteger) this, this.f);
            }
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed(this.e.get());
        }

        public final void dispose() {
            DisposableHelper.dispose(this.e);
            for (c dispose : this.c) {
                dispose.dispose();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(int i) {
            c[] cVarArr = this.c;
            for (int i2 = 0; i2 < cVarArr.length; i2++) {
                if (i2 != i) {
                    cVarArr[i2].dispose();
                }
            }
        }
    }

    static final class c extends AtomicReference<io.reactivex.b.c> implements ag<Object> {

        /* renamed from: a  reason: collision with root package name */
        final b<?, ?> f7547a;

        /* renamed from: b  reason: collision with root package name */
        final int f7548b;
        boolean c;

        c(b<?, ?> bVar, int i) {
            this.f7547a = bVar;
            this.f7548b = i;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onNext(Object obj) {
            if (!this.c) {
                this.c = true;
            }
            b<?, ?> bVar = this.f7547a;
            bVar.d.set(this.f7548b, obj);
        }

        public final void onError(Throwable th) {
            b<?, ?> bVar = this.f7547a;
            int i = this.f7548b;
            bVar.g = true;
            DisposableHelper.dispose(bVar.e);
            bVar.a(i);
            i.onError((ag<?>) bVar.f7545a, th, (AtomicInteger) bVar, bVar.f);
        }

        public final void onComplete() {
            b<?, ?> bVar = this.f7547a;
            int i = this.f7548b;
            if (!this.c) {
                bVar.g = true;
                bVar.a(i);
                i.onComplete((ag<?>) bVar.f7545a, (AtomicInteger) bVar, bVar.f);
            }
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }
    }

    public em(ae<T> aeVar, ae<?>[] aeVarArr, h<? super Object[], R> hVar) {
        super(aeVar);
        this.f7543b = aeVarArr;
        this.c = null;
        this.d = hVar;
    }

    public em(ae<T> aeVar, Iterable<? extends ae<?>> iterable, h<? super Object[], R> hVar) {
        super(aeVar);
        this.f7543b = null;
        this.c = iterable;
        this.d = hVar;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        int i;
        ae<?>[] aeVarArr = this.f7543b;
        if (aeVarArr == null) {
            aeVarArr = new ae[8];
            try {
                i = 0;
                for (ae<?> aeVar : this.c) {
                    if (i == aeVarArr.length) {
                        aeVarArr = (ae[]) Arrays.copyOf(aeVarArr, (i >> 1) + i);
                    }
                    int i2 = i + 1;
                    aeVarArr[i] = aeVar;
                    i = i2;
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                EmptyDisposable.error(th, (ag<?>) agVar);
                return;
            }
        } else {
            i = aeVarArr.length;
        }
        if (i == 0) {
            new bw(this.f7091a, new a()).subscribeActual(agVar);
            return;
        }
        b bVar = new b(agVar, this.d, i);
        agVar.onSubscribe(bVar);
        c[] cVarArr = bVar.c;
        AtomicReference<io.reactivex.b.c> atomicReference = bVar.e;
        for (int i3 = 0; i3 < i && !DisposableHelper.isDisposed(atomicReference.get()) && !bVar.g; i3++) {
            aeVarArr[i3].subscribe(cVarArr[i3]);
        }
        this.f7091a.subscribe(bVar);
    }
}
