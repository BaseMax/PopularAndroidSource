package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.b.g;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class ct<T, R> extends a<T, R> {
    final h<? super j<T>, ? extends org.b.b<? extends R>> c;
    final int d;
    final boolean e;

    static final class a<T> extends j<T> implements io.reactivex.b.c, o<T> {

        /* renamed from: b  reason: collision with root package name */
        static final b[] f8118b = new b[0];
        static final b[] c = new b[0];
        final AtomicInteger d = new AtomicInteger();
        final AtomicReference<b<T>[]> e = new AtomicReference<>(f8118b);
        final int f;
        final int g;
        final boolean h;
        final AtomicReference<d> i = new AtomicReference<>();
        volatile io.reactivex.internal.b.j<T> j;
        int k;
        volatile boolean l;
        Throwable m;
        int n;

        a(int i2, boolean z) {
            this.f = i2;
            this.g = i2 - (i2 >> 2);
            this.h = z;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.setOnce(this.i, dVar)) {
                if (dVar instanceof g) {
                    g gVar = (g) dVar;
                    int requestFusion = gVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.k = requestFusion;
                        this.j = gVar;
                        this.l = true;
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.k = requestFusion;
                        this.j = gVar;
                        io.reactivex.internal.util.o.request(dVar, this.f);
                        return;
                    }
                }
                this.j = io.reactivex.internal.util.o.createQueue(this.f);
                io.reactivex.internal.util.o.request(dVar, this.f);
            }
        }

        public final void dispose() {
            SubscriptionHelper.cancel(this.i);
            if (this.d.getAndIncrement() == 0) {
                io.reactivex.internal.b.j<T> jVar = this.j;
                if (jVar != null) {
                    jVar.clear();
                }
            }
        }

        public final boolean isDisposed() {
            return this.i.get() == SubscriptionHelper.CANCELLED;
        }

        public final void onNext(T t) {
            if (!this.l) {
                if (this.k != 0 || this.j.offer(t)) {
                    a();
                    return;
                }
                this.i.get().cancel();
                onError(new io.reactivex.c.c());
            }
        }

        public final void onError(Throwable th) {
            if (this.l) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.m = th;
            this.l = true;
            a();
        }

        public final void onComplete() {
            if (!this.l) {
                this.l = true;
                a();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(b<T> bVar) {
            b<T>[] bVarArr;
            b[] bVarArr2;
            do {
                bVarArr = (b[]) this.e.get();
                int length = bVarArr.length;
                if (length != 0) {
                    int i2 = -1;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= length) {
                            break;
                        } else if (bVarArr[i3] == bVar) {
                            i2 = i3;
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (i2 >= 0) {
                        if (length == 1) {
                            bVarArr2 = f8118b;
                        } else {
                            b[] bVarArr3 = new b[(length - 1)];
                            System.arraycopy(bVarArr, 0, bVarArr3, 0, i2);
                            System.arraycopy(bVarArr, i2 + 1, bVarArr3, i2, (length - i2) - 1);
                            bVarArr2 = bVarArr3;
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.e.compareAndSet(bVarArr, bVarArr2));
        }

        public final void subscribeActual(org.b.c<? super T> cVar) {
            boolean z;
            b bVar = new b(cVar, this);
            cVar.onSubscribe(bVar);
            while (true) {
                b[] bVarArr = (b[]) this.e.get();
                z = false;
                if (bVarArr != c) {
                    int length = bVarArr.length;
                    b[] bVarArr2 = new b[(length + 1)];
                    System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                    bVarArr2[length] = bVar;
                    if (this.e.compareAndSet(bVarArr, bVarArr2)) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (!z) {
                Throwable th = this.m;
                if (th != null) {
                    cVar.onError(th);
                } else {
                    cVar.onComplete();
                }
            } else if (bVar.isCancelled()) {
                a(bVar);
            } else {
                a();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            AtomicReference<b<T>[]> atomicReference;
            if (this.d.getAndIncrement() == 0) {
                io.reactivex.internal.b.j<T> jVar = this.j;
                int i2 = this.n;
                int i3 = this.g;
                boolean z = this.k != 1;
                AtomicReference<b<T>[]> atomicReference2 = this.e;
                b[] bVarArr = (b[]) atomicReference2.get();
                int i4 = i2;
                int i5 = 1;
                while (true) {
                    int length = bVarArr.length;
                    if (jVar == null || length == 0) {
                        atomicReference = atomicReference2;
                    } else {
                        int length2 = bVarArr.length;
                        long j2 = Long.MAX_VALUE;
                        int i6 = length;
                        long j3 = Long.MAX_VALUE;
                        int i7 = 0;
                        while (i7 < length2) {
                            b bVar = bVarArr[i7];
                            AtomicReference<b<T>[]> atomicReference3 = atomicReference2;
                            long j4 = bVar.get() - bVar.c;
                            if (j4 == Long.MIN_VALUE) {
                                i6--;
                            } else if (j3 > j4) {
                                j3 = j4;
                            }
                            i7++;
                            atomicReference2 = atomicReference3;
                        }
                        atomicReference = atomicReference2;
                        long j5 = 0;
                        if (i6 == 0) {
                            j3 = 0;
                        }
                        while (j3 != j5) {
                            if (isDisposed()) {
                                jVar.clear();
                                return;
                            }
                            boolean z2 = this.l;
                            if (z2 && !this.h) {
                                Throwable th = this.m;
                                if (th != null) {
                                    a(th);
                                    return;
                                }
                            }
                            try {
                                T poll = jVar.poll();
                                boolean z3 = poll == null;
                                if (!z2 || !z3) {
                                    if (z3) {
                                        break;
                                    }
                                    int length3 = bVarArr.length;
                                    int i8 = 0;
                                    boolean z4 = false;
                                    while (i8 < length3) {
                                        b bVar2 = bVarArr[i8];
                                        long j6 = bVar2.get();
                                        if (j6 != Long.MIN_VALUE) {
                                            if (j6 != j2) {
                                                bVar2.c++;
                                            }
                                            bVar2.f8119a.onNext(poll);
                                        } else {
                                            z4 = true;
                                        }
                                        i8++;
                                        j2 = Long.MAX_VALUE;
                                    }
                                    j3--;
                                    if (z) {
                                        i4++;
                                        if (i4 == i3) {
                                            this.i.get().request((long) i3);
                                            i4 = 0;
                                        }
                                    }
                                    b[] bVarArr2 = (b[]) atomicReference.get();
                                    if (z4 || bVarArr2 != bVarArr) {
                                        bVarArr = bVarArr2;
                                        break;
                                    } else {
                                        j5 = 0;
                                        j2 = Long.MAX_VALUE;
                                    }
                                } else {
                                    Throwable th2 = this.m;
                                    if (th2 != null) {
                                        a(th2);
                                        return;
                                    } else {
                                        b();
                                        return;
                                    }
                                }
                            } catch (Throwable th3) {
                                Throwable th4 = th3;
                                io.reactivex.c.b.throwIfFatal(th4);
                                SubscriptionHelper.cancel(this.i);
                                a(th4);
                                return;
                            }
                        }
                        if (j3 == j5) {
                            if (isDisposed()) {
                                jVar.clear();
                                return;
                            }
                            boolean z5 = this.l;
                            if (z5 && !this.h) {
                                Throwable th5 = this.m;
                                if (th5 != null) {
                                    a(th5);
                                    return;
                                }
                            }
                            if (z5 && jVar.isEmpty()) {
                                Throwable th6 = this.m;
                                if (th6 != null) {
                                    a(th6);
                                    return;
                                } else {
                                    b();
                                    return;
                                }
                            }
                        }
                    }
                    this.n = i4;
                    i5 = this.d.addAndGet(-i5);
                    if (i5 != 0) {
                        if (jVar == null) {
                            jVar = this.j;
                        }
                        bVarArr = (b[]) atomicReference.get();
                        atomicReference2 = atomicReference;
                    } else {
                        return;
                    }
                }
            }
        }

        private void a(Throwable th) {
            for (b bVar : (b[]) this.e.getAndSet(c)) {
                if (bVar.get() != Long.MIN_VALUE) {
                    bVar.f8119a.onError(th);
                }
            }
        }

        private void b() {
            for (b bVar : (b[]) this.e.getAndSet(c)) {
                if (bVar.get() != Long.MIN_VALUE) {
                    bVar.f8119a.onComplete();
                }
            }
        }
    }

    static final class b<T> extends AtomicLong implements d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f8119a;

        /* renamed from: b  reason: collision with root package name */
        final a<T> f8120b;
        long c;

        b(org.b.c<? super T> cVar, a<T> aVar) {
            this.f8119a = cVar;
            this.f8120b = aVar;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.addCancel(this, j);
                this.f8120b.a();
            }
        }

        public final void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f8120b.a(this);
                this.f8120b.a();
            }
        }

        public final boolean isCancelled() {
            return get() == Long.MIN_VALUE;
        }
    }

    static final class c<R> implements o<R>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super R> f8121a;

        /* renamed from: b  reason: collision with root package name */
        final a<?> f8122b;
        d c;

        c(org.b.c<? super R> cVar, a<?> aVar) {
            this.f8121a = cVar;
            this.f8122b = aVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f8121a.onSubscribe(this);
            }
        }

        public final void onNext(R r) {
            this.f8121a.onNext(r);
        }

        public final void onError(Throwable th) {
            this.f8121a.onError(th);
            this.f8122b.dispose();
        }

        public final void onComplete() {
            this.f8121a.onComplete();
            this.f8122b.dispose();
        }

        public final void request(long j) {
            this.c.request(j);
        }

        public final void cancel() {
            this.c.cancel();
            this.f8122b.dispose();
        }
    }

    public ct(j<T> jVar, h<? super j<T>, ? extends org.b.b<? extends R>> hVar, int i, boolean z) {
        super(jVar);
        this.c = hVar;
        this.d = i;
        this.e = z;
    }

    public final void subscribeActual(org.b.c<? super R> cVar) {
        a aVar = new a(this.d, this.e);
        try {
            ((org.b.b) io.reactivex.internal.a.b.requireNonNull(this.c.apply(aVar), "selector returned a null Publisher")).subscribe(new c(cVar, aVar));
            this.f7923b.subscribe(aVar);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
