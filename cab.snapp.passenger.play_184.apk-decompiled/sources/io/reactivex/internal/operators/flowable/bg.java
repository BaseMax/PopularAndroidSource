package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;

public final class bg<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final T[] f8021b;

    static final class a<T> extends c<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.internal.b.a<? super T> f8022a;

        a(io.reactivex.internal.b.a<? super T> aVar, T[] tArr) {
            super(tArr);
            this.f8022a = aVar;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            Object[] objArr = this.f8024b;
            int length = objArr.length;
            io.reactivex.internal.b.a<? super T> aVar = this.f8022a;
            int i = this.c;
            while (i != length) {
                if (!this.d) {
                    Object obj = objArr[i];
                    if (obj == null) {
                        aVar.onError(new NullPointerException("The element at index " + i + " is null"));
                        return;
                    }
                    aVar.tryOnNext(obj);
                    i++;
                } else {
                    return;
                }
            }
            if (!this.d) {
                aVar.onComplete();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(long j) {
            Object[] objArr = this.f8024b;
            int length = objArr.length;
            int i = this.c;
            io.reactivex.internal.b.a<? super T> aVar = this.f8022a;
            long j2 = j;
            do {
                long j3 = 0;
                while (true) {
                    if (j3 == j2 || i == length) {
                        if (i == length) {
                            if (!this.d) {
                                aVar.onComplete();
                            }
                            return;
                        }
                        j2 = get();
                        if (j3 == j2) {
                            this.c = i;
                            j2 = addAndGet(-j3);
                        }
                    } else if (!this.d) {
                        Object obj = objArr[i];
                        if (obj == null) {
                            aVar.onError(new NullPointerException("The element at index " + i + " is null"));
                            return;
                        }
                        if (aVar.tryOnNext(obj)) {
                            j3++;
                        }
                        i++;
                    } else {
                        return;
                    }
                }
            } while (j2 != 0);
        }
    }

    static final class b<T> extends c<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f8023a;

        b(org.b.c<? super T> cVar, T[] tArr) {
            super(tArr);
            this.f8023a = cVar;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            Object[] objArr = this.f8024b;
            int length = objArr.length;
            org.b.c<? super T> cVar = this.f8023a;
            int i = this.c;
            while (i != length) {
                if (!this.d) {
                    Object obj = objArr[i];
                    if (obj == null) {
                        cVar.onError(new NullPointerException("The element at index " + i + " is null"));
                        return;
                    }
                    cVar.onNext(obj);
                    i++;
                } else {
                    return;
                }
            }
            if (!this.d) {
                cVar.onComplete();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(long j) {
            Object[] objArr = this.f8024b;
            int length = objArr.length;
            int i = this.c;
            org.b.c<? super T> cVar = this.f8023a;
            long j2 = j;
            do {
                long j3 = 0;
                while (true) {
                    if (j3 == j2 || i == length) {
                        if (i == length) {
                            if (!this.d) {
                                cVar.onComplete();
                            }
                            return;
                        }
                        j2 = get();
                        if (j3 == j2) {
                            this.c = i;
                            j2 = addAndGet(-j3);
                        }
                    } else if (!this.d) {
                        Object obj = objArr[i];
                        if (obj == null) {
                            cVar.onError(new NullPointerException("The element at index " + i + " is null"));
                            return;
                        }
                        cVar.onNext(obj);
                        j3++;
                        i++;
                    } else {
                        return;
                    }
                }
            } while (j2 != 0);
        }
    }

    static abstract class c<T> extends io.reactivex.internal.subscriptions.b<T> {

        /* renamed from: b  reason: collision with root package name */
        final T[] f8024b;
        int c;
        volatile boolean d;

        /* access modifiers changed from: package-private */
        public abstract void a();

        /* access modifiers changed from: package-private */
        public abstract void a(long j);

        public final int requestFusion(int i) {
            return i & 1;
        }

        c(T[] tArr) {
            this.f8024b = tArr;
        }

        public final T poll() {
            int i = this.c;
            T[] tArr = this.f8024b;
            if (i == tArr.length) {
                return null;
            }
            this.c = i + 1;
            return io.reactivex.internal.a.b.requireNonNull(tArr[i], "array element is null");
        }

        public final boolean isEmpty() {
            return this.c == this.f8024b.length;
        }

        public final void clear() {
            this.c = this.f8024b.length;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j) && io.reactivex.internal.util.c.add(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    a();
                    return;
                }
                a(j);
            }
        }

        public final void cancel() {
            this.d = true;
        }
    }

    public bg(T[] tArr) {
        this.f8021b = tArr;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        if (cVar instanceof io.reactivex.internal.b.a) {
            cVar.onSubscribe(new a((io.reactivex.internal.b.a) cVar, this.f8021b));
        } else {
            cVar.onSubscribe(new b(cVar, this.f8021b));
        }
    }
}
