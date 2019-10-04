package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class r<T> extends a<T, T> implements o<T> {
    static final a[] f = new a[0];
    static final a[] g = new a[0];
    final AtomicBoolean c = new AtomicBoolean();
    final int d;
    final AtomicReference<a<T>[]> e;
    volatile long h;
    final b<T> i;
    b<T> j;
    int k;
    Throwable l;
    volatile boolean m;

    static final class a<T> extends AtomicInteger implements d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8379a;

        /* renamed from: b  reason: collision with root package name */
        final r<T> f8380b;
        final AtomicLong c = new AtomicLong();
        b<T> d;
        int e;
        long f;

        a(c<? super T> cVar, r<T> rVar) {
            this.f8379a = cVar;
            this.f8380b = rVar;
            this.d = rVar.i;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.addCancel(this.c, j);
                this.f8380b.a(this);
            }
        }

        public final void cancel() {
            a[] aVarArr;
            a[] aVarArr2;
            if (this.c.getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                r<T> rVar = this.f8380b;
                do {
                    aVarArr = (a[]) rVar.e.get();
                    int length = aVarArr.length;
                    if (length != 0) {
                        int i = -1;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                break;
                            } else if (aVarArr[i2] == this) {
                                i = i2;
                                break;
                            } else {
                                i2++;
                            }
                        }
                        if (i < 0) {
                            return;
                        }
                        if (length == 1) {
                            aVarArr2 = r.f;
                        } else {
                            a[] aVarArr3 = new a[(length - 1)];
                            System.arraycopy(aVarArr, 0, aVarArr3, 0, i);
                            System.arraycopy(aVarArr, i + 1, aVarArr3, i, (length - i) - 1);
                            aVarArr2 = aVarArr3;
                        }
                    } else {
                        return;
                    }
                } while (!rVar.e.compareAndSet(aVarArr, aVarArr2));
            }
        }
    }

    static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        final T[] f8381a;

        /* renamed from: b  reason: collision with root package name */
        volatile b<T> f8382b;

        b(int i) {
            this.f8381a = (Object[]) new Object[i];
        }
    }

    public r(j<T> jVar, int i2) {
        super(jVar);
        this.d = i2;
        b<T> bVar = new b<>(i2);
        this.i = bVar;
        this.j = bVar;
        this.e = new AtomicReference<>(f);
    }

    public final void subscribeActual(c<? super T> cVar) {
        a[] aVarArr;
        a[] aVarArr2;
        a aVar = new a(cVar, this);
        cVar.onSubscribe(aVar);
        do {
            aVarArr = (a[]) this.e.get();
            if (aVarArr == g) {
                break;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[(length + 1)];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.e.compareAndSet(aVarArr, aVarArr2));
        if (this.c.get() || !this.c.compareAndSet(false, true)) {
            a(aVar);
        } else {
            this.f7923b.subscribe(this);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(a<T> aVar) {
        a<T> aVar2 = aVar;
        if (aVar.getAndIncrement() == 0) {
            long j2 = aVar2.f;
            int i2 = aVar2.e;
            b<T> bVar = aVar2.d;
            AtomicLong atomicLong = aVar2.c;
            c<? super T> cVar = aVar2.f8379a;
            int i3 = this.d;
            b<T> bVar2 = bVar;
            int i4 = i2;
            int i5 = 1;
            while (true) {
                boolean z = this.m;
                int i6 = 0;
                boolean z2 = this.h == j2;
                if (!z || !z2) {
                    if (!z2) {
                        long j3 = atomicLong.get();
                        if (j3 == Long.MIN_VALUE) {
                            aVar2.d = null;
                            return;
                        } else if (j3 != j2) {
                            if (i4 == i3) {
                                bVar2 = bVar2.f8382b;
                            } else {
                                i6 = i4;
                            }
                            cVar.onNext(bVar2.f8381a[i6]);
                            i4 = i6 + 1;
                            j2++;
                        }
                    }
                    aVar2.f = j2;
                    aVar2.e = i4;
                    aVar2.d = bVar2;
                    i5 = aVar2.addAndGet(-i5);
                    if (i5 == 0) {
                        return;
                    }
                } else {
                    aVar2.d = null;
                    Throwable th = this.l;
                    if (th != null) {
                        cVar.onError(th);
                        return;
                    } else {
                        cVar.onComplete();
                        return;
                    }
                }
            }
        }
    }

    public final void onSubscribe(d dVar) {
        dVar.request(Long.MAX_VALUE);
    }

    public final void onNext(T t) {
        int i2 = this.k;
        if (i2 == this.d) {
            b<T> bVar = new b<>(i2);
            bVar.f8381a[0] = t;
            this.k = 1;
            this.j.f8382b = bVar;
            this.j = bVar;
        } else {
            this.j.f8381a[i2] = t;
            this.k = i2 + 1;
        }
        this.h++;
        for (a a2 : (a[]) this.e.get()) {
            a(a2);
        }
    }

    public final void onError(Throwable th) {
        if (this.m) {
            io.reactivex.g.a.onError(th);
            return;
        }
        this.l = th;
        this.m = true;
        for (a a2 : (a[]) this.e.getAndSet(g)) {
            a(a2);
        }
    }

    public final void onComplete() {
        this.m = true;
        for (a a2 : (a[]) this.e.getAndSet(g)) {
            a(a2);
        }
    }
}
