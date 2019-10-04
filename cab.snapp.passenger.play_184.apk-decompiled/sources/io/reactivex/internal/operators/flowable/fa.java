package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.b.g;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class fa<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final org.b.b<? extends T>[] f8330b;
    final Iterable<? extends org.b.b<? extends T>> c;
    final h<? super Object[], ? extends R> d;
    final int e;
    final boolean f;

    static final class a<T, R> extends AtomicInteger implements d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f8331a;

        /* renamed from: b  reason: collision with root package name */
        final b<T, R>[] f8332b;
        final h<? super Object[], ? extends R> c;
        final AtomicLong d;
        final io.reactivex.internal.util.b e;
        final boolean f;
        volatile boolean g;
        final Object[] h;

        a(c<? super R> cVar, h<? super Object[], ? extends R> hVar, int i, int i2, boolean z) {
            this.f8331a = cVar;
            this.c = hVar;
            this.f = z;
            b<T, R>[] bVarArr = new b[i];
            for (int i3 = 0; i3 < i; i3++) {
                bVarArr[i3] = new b<>(this, i2);
            }
            this.h = new Object[i];
            this.f8332b = bVarArr;
            this.d = new AtomicLong();
            this.e = new io.reactivex.internal.util.b();
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this.d, j);
                a();
            }
        }

        public final void cancel() {
            if (!this.g) {
                this.g = true;
                b();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(b<T, R> bVar, Throwable th) {
            if (this.e.addThrowable(th)) {
                bVar.f = true;
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        private void b() {
            for (b<T, R> cancel : this.f8332b) {
                cancel.cancel();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                c<? super R> cVar = this.f8331a;
                b<T, R>[] bVarArr = this.f8332b;
                int length = bVarArr.length;
                Object[] objArr = this.h;
                int i = 1;
                do {
                    long j = this.d.get();
                    long j2 = 0;
                    while (j != j2) {
                        if (!this.g) {
                            if (this.f || this.e.get() == null) {
                                boolean z = false;
                                for (int i2 = 0; i2 < length; i2++) {
                                    b<T, R> bVar = bVarArr[i2];
                                    if (objArr[i2] == null) {
                                        try {
                                            boolean z2 = bVar.f;
                                            io.reactivex.internal.b.j<T> jVar = bVar.d;
                                            T poll = jVar != null ? jVar.poll() : null;
                                            boolean z3 = poll == null;
                                            if (!z2 || !z3) {
                                                if (!z3) {
                                                    objArr[i2] = poll;
                                                }
                                                z = true;
                                            } else {
                                                b();
                                                if (((Throwable) this.e.get()) != null) {
                                                    cVar.onError(this.e.terminate());
                                                    return;
                                                } else {
                                                    cVar.onComplete();
                                                    return;
                                                }
                                            }
                                        } catch (Throwable th) {
                                            io.reactivex.c.b.throwIfFatal(th);
                                            this.e.addThrowable(th);
                                            if (!this.f) {
                                                b();
                                                cVar.onError(this.e.terminate());
                                                return;
                                            }
                                        }
                                    }
                                }
                                if (z) {
                                    break;
                                }
                                try {
                                    cVar.onNext(io.reactivex.internal.a.b.requireNonNull(this.c.apply(objArr.clone()), "The zipper returned a null value"));
                                    j2++;
                                    Arrays.fill(objArr, null);
                                } catch (Throwable th2) {
                                    io.reactivex.c.b.throwIfFatal(th2);
                                    b();
                                    this.e.addThrowable(th2);
                                    cVar.onError(this.e.terminate());
                                    return;
                                }
                            } else {
                                b();
                                cVar.onError(this.e.terminate());
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                    if (j == j2) {
                        if (!this.g) {
                            if (this.f || this.e.get() == null) {
                                for (int i3 = 0; i3 < length; i3++) {
                                    b<T, R> bVar2 = bVarArr[i3];
                                    if (objArr[i3] == null) {
                                        try {
                                            boolean z4 = bVar2.f;
                                            io.reactivex.internal.b.j<T> jVar2 = bVar2.d;
                                            T poll2 = jVar2 != null ? jVar2.poll() : null;
                                            boolean z5 = poll2 == null;
                                            if (z4 && z5) {
                                                b();
                                                if (((Throwable) this.e.get()) != null) {
                                                    cVar.onError(this.e.terminate());
                                                    return;
                                                } else {
                                                    cVar.onComplete();
                                                    return;
                                                }
                                            } else if (!z5) {
                                                objArr[i3] = poll2;
                                            }
                                        } catch (Throwable th3) {
                                            io.reactivex.c.b.throwIfFatal(th3);
                                            this.e.addThrowable(th3);
                                            if (!this.f) {
                                                b();
                                                cVar.onError(this.e.terminate());
                                                return;
                                            }
                                        }
                                    }
                                }
                            } else {
                                b();
                                cVar.onError(this.e.terminate());
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                    if (j2 != 0) {
                        for (b<T, R> request : bVarArr) {
                            request.request(j2);
                        }
                        if (j != Long.MAX_VALUE) {
                            this.d.addAndGet(-j2);
                        }
                    }
                    i = addAndGet(-i);
                } while (i != 0);
            }
        }
    }

    static final class b<T, R> extends AtomicReference<d> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final a<T, R> f8333a;

        /* renamed from: b  reason: collision with root package name */
        final int f8334b;
        final int c;
        io.reactivex.internal.b.j<T> d;
        long e;
        volatile boolean f;
        int g;

        b(a<T, R> aVar, int i) {
            this.f8333a = aVar;
            this.f8334b = i;
            this.c = i - (i >> 2);
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.setOnce(this, dVar)) {
                if (dVar instanceof g) {
                    g gVar = (g) dVar;
                    int requestFusion = gVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.g = requestFusion;
                        this.d = gVar;
                        this.f = true;
                        this.f8333a.a();
                        return;
                    } else if (requestFusion == 2) {
                        this.g = requestFusion;
                        this.d = gVar;
                        dVar.request((long) this.f8334b);
                        return;
                    }
                }
                this.d = new io.reactivex.internal.d.b(this.f8334b);
                dVar.request((long) this.f8334b);
            }
        }

        public final void onNext(T t) {
            if (this.g != 2) {
                this.d.offer(t);
            }
            this.f8333a.a();
        }

        public final void onError(Throwable th) {
            this.f8333a.a(this, th);
        }

        public final void onComplete() {
            this.f = true;
            this.f8333a.a();
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this);
        }

        public final void request(long j) {
            if (this.g != 1) {
                long j2 = this.e + j;
                if (j2 >= ((long) this.c)) {
                    this.e = 0;
                    ((d) get()).request(j2);
                    return;
                }
                this.e = j2;
            }
        }
    }

    public fa(org.b.b<? extends T>[] bVarArr, Iterable<? extends org.b.b<? extends T>> iterable, h<? super Object[], ? extends R> hVar, int i, boolean z) {
        this.f8330b = bVarArr;
        this.c = iterable;
        this.d = hVar;
        this.e = i;
        this.f = z;
    }

    public final void subscribeActual(c<? super R> cVar) {
        org.b.b<? extends T>[] bVarArr;
        int i;
        org.b.b<? extends T>[] bVarArr2 = this.f8330b;
        if (bVarArr2 == null) {
            org.b.b<? extends T>[] bVarArr3 = new org.b.b[8];
            i = 0;
            for (org.b.b<? extends T> bVar : this.c) {
                if (i == bVarArr3.length) {
                    org.b.b<? extends T>[] bVarArr4 = new org.b.b[((i >> 2) + i)];
                    System.arraycopy(bVarArr3, 0, bVarArr4, 0, i);
                    bVarArr3 = bVarArr4;
                }
                bVarArr3[i] = bVar;
                i++;
            }
            bVarArr = bVarArr3;
        } else {
            bVarArr = bVarArr2;
            i = bVarArr2.length;
        }
        if (i == 0) {
            EmptySubscription.complete(cVar);
            return;
        }
        a aVar = new a(cVar, this.d, i, this.e, this.f);
        cVar.onSubscribe(aVar);
        b<T, R>[] bVarArr5 = aVar.f8332b;
        for (int i2 = 0; i2 < i && !aVar.g && (aVar.f || aVar.e.get() == null); i2++) {
            bVarArr[i2].subscribe(bVarArr5[i2]);
        }
    }
}
