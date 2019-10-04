package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class h<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.b.b<? extends T>[] f8341b;
    final Iterable<? extends org.b.b<? extends T>> c;

    static final class a<T> implements d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8342a;

        /* renamed from: b  reason: collision with root package name */
        final b<T>[] f8343b;
        final AtomicInteger c = new AtomicInteger();

        a(c<? super T> cVar, int i) {
            this.f8342a = cVar;
            this.f8343b = new b[i];
        }

        public final void subscribe(org.b.b<? extends T>[] bVarArr) {
            b<T>[] bVarArr2 = this.f8343b;
            int length = bVarArr2.length;
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                bVarArr2[i] = new b<>(this, i2, this.f8342a);
                i = i2;
            }
            this.c.lazySet(0);
            this.f8342a.onSubscribe(this);
            for (int i3 = 0; i3 < length && this.c.get() == 0; i3++) {
                bVarArr[i3].subscribe(bVarArr2[i3]);
            }
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                int i = this.c.get();
                if (i > 0) {
                    this.f8343b[i - 1].request(j);
                } else if (i == 0) {
                    for (b<T> request : this.f8343b) {
                        request.request(j);
                    }
                }
            }
        }

        public final boolean win(int i) {
            int i2 = 0;
            if (this.c.get() != 0 || !this.c.compareAndSet(0, i)) {
                return false;
            }
            b<T>[] bVarArr = this.f8343b;
            int length = bVarArr.length;
            while (i2 < length) {
                int i3 = i2 + 1;
                if (i3 != i) {
                    bVarArr[i2].cancel();
                }
                i2 = i3;
            }
            return true;
        }

        public final void cancel() {
            if (this.c.get() != -1) {
                this.c.lazySet(-1);
                for (b<T> cancel : this.f8343b) {
                    cancel.cancel();
                }
            }
        }
    }

    static final class b<T> extends AtomicReference<d> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final a<T> f8344a;

        /* renamed from: b  reason: collision with root package name */
        final int f8345b;
        final c<? super T> c;
        boolean d;
        final AtomicLong e = new AtomicLong();

        b(a<T> aVar, int i, c<? super T> cVar) {
            this.f8344a = aVar;
            this.f8345b = i;
            this.c = cVar;
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this, this.e, dVar);
        }

        public final void request(long j) {
            SubscriptionHelper.deferredRequest(this, this.e, j);
        }

        public final void onNext(T t) {
            if (this.d) {
                this.c.onNext(t);
            } else if (this.f8344a.win(this.f8345b)) {
                this.d = true;
                this.c.onNext(t);
            } else {
                ((d) get()).cancel();
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                this.c.onError(th);
            } else if (this.f8344a.win(this.f8345b)) {
                this.d = true;
                this.c.onError(th);
            } else {
                ((d) get()).cancel();
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onComplete() {
            if (this.d) {
                this.c.onComplete();
            } else if (this.f8344a.win(this.f8345b)) {
                this.d = true;
                this.c.onComplete();
            } else {
                ((d) get()).cancel();
            }
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this);
        }
    }

    public h(org.b.b<? extends T>[] bVarArr, Iterable<? extends org.b.b<? extends T>> iterable) {
        this.f8341b = bVarArr;
        this.c = iterable;
    }

    public final void subscribeActual(c<? super T> cVar) {
        int i;
        org.b.b<? extends T>[] bVarArr = this.f8341b;
        if (bVarArr == null) {
            bVarArr = new org.b.b[8];
            try {
                i = 0;
                for (org.b.b<? extends T> bVar : this.c) {
                    if (bVar == null) {
                        EmptySubscription.error(new NullPointerException("One of the sources is null"), cVar);
                        return;
                    }
                    if (i == bVarArr.length) {
                        org.b.b<? extends T>[] bVarArr2 = new org.b.b[((i >> 2) + i)];
                        System.arraycopy(bVarArr, 0, bVarArr2, 0, i);
                        bVarArr = bVarArr2;
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
            EmptySubscription.complete(cVar);
        } else if (i == 1) {
            bVarArr[0].subscribe(cVar);
        } else {
            new a(cVar, i).subscribe(bVarArr);
        }
    }
}
