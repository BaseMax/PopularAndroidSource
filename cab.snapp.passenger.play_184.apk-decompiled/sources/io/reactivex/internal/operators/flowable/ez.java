package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.i;
import io.reactivex.j;
import io.reactivex.o;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import org.b.d;

public final class ez<T, R> extends a<T, R> {
    final org.b.b<?>[] c;
    final Iterable<? extends org.b.b<?>> d;
    final h<? super Object[], R> e;

    final class a implements h<T, R> {
        a() {
        }

        public final R apply(T t) throws Exception {
            return io.reactivex.internal.a.b.requireNonNull(ez.this.e.apply(new Object[]{t}), "The combiner returned a null value");
        }
    }

    static final class b<T, R> extends AtomicInteger implements io.reactivex.internal.b.a<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super R> f8324a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Object[], R> f8325b;
        final c[] c;
        final AtomicReferenceArray<Object> d;
        final AtomicReference<d> e;
        final AtomicLong f;
        final io.reactivex.internal.util.b g;
        volatile boolean h;

        b(org.b.c<? super R> cVar, h<? super Object[], R> hVar, int i) {
            this.f8324a = cVar;
            this.f8325b = hVar;
            c[] cVarArr = new c[i];
            for (int i2 = 0; i2 < i; i2++) {
                cVarArr[i2] = new c(this, i2);
            }
            this.c = cVarArr;
            this.d = new AtomicReferenceArray<>(i);
            this.e = new AtomicReference<>();
            this.f = new AtomicLong();
            this.g = new io.reactivex.internal.util.b();
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this.e, this.f, dVar);
        }

        public final void onNext(T t) {
            if (!tryOnNext(t) && !this.h) {
                this.e.get().request(1);
            }
        }

        public final boolean tryOnNext(T t) {
            if (this.h) {
                return false;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.d;
            int length = atomicReferenceArray.length();
            Object[] objArr = new Object[(length + 1)];
            objArr[0] = t;
            int i = 0;
            while (i < length) {
                Object obj = atomicReferenceArray.get(i);
                if (obj == null) {
                    return false;
                }
                i++;
                objArr[i] = obj;
            }
            try {
                i.onNext(this.f8324a, io.reactivex.internal.a.b.requireNonNull(this.f8325b.apply(objArr), "The combiner returned a null value"), (AtomicInteger) this, this.g);
                return true;
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                cancel();
                onError(th);
                return false;
            }
        }

        public final void onError(Throwable th) {
            if (this.h) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.h = true;
            a(-1);
            i.onError((org.b.c<?>) this.f8324a, th, (AtomicInteger) this, this.g);
        }

        public final void onComplete() {
            if (!this.h) {
                this.h = true;
                a(-1);
                i.onComplete((org.b.c<?>) this.f8324a, (AtomicInteger) this, this.g);
            }
        }

        public final void request(long j) {
            SubscriptionHelper.deferredRequest(this.e, this.f, j);
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this.e);
            for (c cancel : this.c) {
                SubscriptionHelper.cancel(cancel);
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(int i) {
            c[] cVarArr = this.c;
            for (int i2 = 0; i2 < cVarArr.length; i2++) {
                if (i2 != i) {
                    SubscriptionHelper.cancel(cVarArr[i2]);
                }
            }
        }
    }

    static final class c extends AtomicReference<d> implements o<Object> {

        /* renamed from: a  reason: collision with root package name */
        final b<?, ?> f8326a;

        /* renamed from: b  reason: collision with root package name */
        final int f8327b;
        boolean c;

        c(b<?, ?> bVar, int i) {
            this.f8326a = bVar;
            this.f8327b = i;
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }

        public final void onNext(Object obj) {
            if (!this.c) {
                this.c = true;
            }
            b<?, ?> bVar = this.f8326a;
            bVar.d.set(this.f8327b, obj);
        }

        public final void onError(Throwable th) {
            b<?, ?> bVar = this.f8326a;
            int i = this.f8327b;
            bVar.h = true;
            SubscriptionHelper.cancel(bVar.e);
            bVar.a(i);
            i.onError((org.b.c<?>) bVar.f8324a, th, (AtomicInteger) bVar, bVar.g);
        }

        public final void onComplete() {
            b<?, ?> bVar = this.f8326a;
            int i = this.f8327b;
            if (!this.c) {
                bVar.h = true;
                SubscriptionHelper.cancel(bVar.e);
                bVar.a(i);
                i.onComplete((org.b.c<?>) bVar.f8324a, (AtomicInteger) bVar, bVar.g);
            }
        }
    }

    public ez(j<T> jVar, org.b.b<?>[] bVarArr, h<? super Object[], R> hVar) {
        super(jVar);
        this.c = bVarArr;
        this.d = null;
        this.e = hVar;
    }

    public ez(j<T> jVar, Iterable<? extends org.b.b<?>> iterable, h<? super Object[], R> hVar) {
        super(jVar);
        this.c = null;
        this.d = iterable;
        this.e = hVar;
    }

    public final void subscribeActual(org.b.c<? super R> cVar) {
        int i;
        org.b.b<?>[] bVarArr = this.c;
        if (bVarArr == null) {
            bVarArr = new org.b.b[8];
            try {
                i = 0;
                for (org.b.b<?> bVar : this.d) {
                    if (i == bVarArr.length) {
                        bVarArr = (org.b.b[]) Arrays.copyOf(bVarArr, (i >> 1) + i);
                    }
                    int i2 = i + 1;
                    bVarArr[i] = bVar;
                    i = i2;
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                EmptySubscription.error(th, cVar);
                return;
            }
        } else {
            i = bVarArr.length;
        }
        if (i == 0) {
            new ca(this.f7923b, new a()).subscribeActual(cVar);
            return;
        }
        b bVar2 = new b(cVar, this.e, i);
        cVar.onSubscribe(bVar2);
        c[] cVarArr = bVar2.c;
        AtomicReference<d> atomicReference = bVar2.e;
        for (int i3 = 0; i3 < i && atomicReference.get() != SubscriptionHelper.CANCELLED; i3++) {
            bVarArr[i3].subscribe(cVarArr[i3]);
        }
        this.f7923b.subscribe(bVar2);
    }
}
