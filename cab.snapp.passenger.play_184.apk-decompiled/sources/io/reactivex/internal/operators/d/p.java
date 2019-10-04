package io.reactivex.internal.operators.d;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class p<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.parallel.a<List<T>> f7713b;
    final Comparator<? super T> c;

    static final class a<T> extends AtomicReference<d> implements o<List<T>> {

        /* renamed from: a  reason: collision with root package name */
        final b<T> f7714a;

        /* renamed from: b  reason: collision with root package name */
        final int f7715b;

        public final void onComplete() {
        }

        a(b<T> bVar, int i) {
            this.f7714a = bVar;
            this.f7715b = i;
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }

        public final void onNext(List<T> list) {
            b<T> bVar = this.f7714a;
            bVar.c[this.f7715b] = list;
            if (bVar.h.decrementAndGet() == 0) {
                bVar.a();
            }
        }

        public final void onError(Throwable th) {
            b<T> bVar = this.f7714a;
            if (bVar.i.compareAndSet(null, th)) {
                bVar.a();
                return;
            }
            if (th != bVar.i.get()) {
                io.reactivex.g.a.onError(th);
            }
        }
    }

    static final class b<T> extends AtomicInteger implements d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f7716a;

        /* renamed from: b  reason: collision with root package name */
        final a<T>[] f7717b;
        final List<T>[] c;
        final int[] d;
        final Comparator<? super T> e;
        final AtomicLong f = new AtomicLong();
        volatile boolean g;
        final AtomicInteger h = new AtomicInteger();
        final AtomicReference<Throwable> i = new AtomicReference<>();

        b(c<? super T> cVar, int i2, Comparator<? super T> comparator) {
            this.f7716a = cVar;
            this.e = comparator;
            a<T>[] aVarArr = new a[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                aVarArr[i3] = new a<>(this, i3);
            }
            this.f7717b = aVarArr;
            this.c = new List[i2];
            this.d = new int[i2];
            this.h.lazySet(i2);
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this.f, j);
                if (this.h.get() == 0) {
                    a();
                }
            }
        }

        public final void cancel() {
            if (!this.g) {
                this.g = true;
                b();
                if (getAndIncrement() == 0) {
                    Arrays.fill(this.c, null);
                }
            }
        }

        private void b() {
            for (a<T> cancel : this.f7717b) {
                SubscriptionHelper.cancel(cancel);
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            boolean z;
            T t;
            if (getAndIncrement() == 0) {
                c<? super T> cVar = this.f7716a;
                List<T>[] listArr = this.c;
                int[] iArr = this.d;
                int length = iArr.length;
                int i2 = 1;
                while (true) {
                    long j = this.f.get();
                    long j2 = 0;
                    while (j2 != j) {
                        if (this.g) {
                            Arrays.fill(listArr, null);
                            return;
                        }
                        Throwable th = this.i.get();
                        if (th != null) {
                            b();
                            Arrays.fill(listArr, null);
                            cVar.onError(th);
                            return;
                        }
                        T t2 = null;
                        int i3 = -1;
                        for (int i4 = 0; i4 < length; i4++) {
                            List<T> list = listArr[i4];
                            int i5 = iArr[i4];
                            if (list.size() != i5) {
                                if (t2 == null) {
                                    t = list.get(i5);
                                } else {
                                    t = list.get(i5);
                                    try {
                                        if (!(this.e.compare(t2, t) > 0)) {
                                        }
                                    } catch (Throwable th2) {
                                        io.reactivex.c.b.throwIfFatal(th2);
                                        b();
                                        Arrays.fill(listArr, null);
                                        if (!this.i.compareAndSet(null, th2)) {
                                            io.reactivex.g.a.onError(th2);
                                        }
                                        cVar.onError(this.i.get());
                                        return;
                                    }
                                }
                                t2 = t;
                                i3 = i4;
                            }
                        }
                        if (t2 == null) {
                            Arrays.fill(listArr, null);
                            cVar.onComplete();
                            return;
                        }
                        cVar.onNext(t2);
                        iArr[i3] = iArr[i3] + 1;
                        j2++;
                    }
                    if (j2 == j) {
                        if (this.g) {
                            Arrays.fill(listArr, null);
                            return;
                        }
                        Throwable th3 = this.i.get();
                        if (th3 != null) {
                            b();
                            Arrays.fill(listArr, null);
                            cVar.onError(th3);
                            return;
                        }
                        int i6 = 0;
                        while (true) {
                            if (i6 >= length) {
                                z = true;
                                break;
                            } else if (iArr[i6] != listArr[i6].size()) {
                                z = false;
                                break;
                            } else {
                                i6++;
                            }
                        }
                        if (z) {
                            Arrays.fill(listArr, null);
                            cVar.onComplete();
                            return;
                        }
                    }
                    if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                        this.f.addAndGet(-j2);
                    }
                    int i7 = get();
                    if (i7 == i2) {
                        i7 = addAndGet(-i2);
                        if (i7 == 0) {
                            return;
                        }
                    }
                    i2 = i7;
                }
            }
        }
    }

    public p(io.reactivex.parallel.a<List<T>> aVar, Comparator<? super T> comparator) {
        this.f7713b = aVar;
        this.c = comparator;
    }

    public final void subscribeActual(c<? super T> cVar) {
        b bVar = new b(cVar, this.f7713b.parallelism(), this.c);
        cVar.onSubscribe(bVar);
        this.f7713b.subscribe(bVar.f7717b);
    }
}
