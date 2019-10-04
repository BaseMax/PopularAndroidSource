package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.j;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class ax<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final w<? extends T>[] f8475b;

    static final class a<T> extends ConcurrentLinkedQueue<T> implements d<T> {

        /* renamed from: a  reason: collision with root package name */
        int f8476a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f8477b = new AtomicInteger();

        a() {
        }

        public final boolean offer(T t, T t2) {
            throw new UnsupportedOperationException();
        }

        public final boolean offer(T t) {
            this.f8477b.getAndIncrement();
            return super.offer(t);
        }

        public final T poll() {
            T poll = super.poll();
            if (poll != null) {
                this.f8476a++;
            }
            return poll;
        }

        public final int consumerIndex() {
            return this.f8476a;
        }

        public final int producerIndex() {
            return this.f8477b.get();
        }

        public final void drop() {
            poll();
        }
    }

    static final class b<T> extends io.reactivex.internal.subscriptions.a<T> implements t<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f8478a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.b.b f8479b = new io.reactivex.b.b();
        final AtomicLong c = new AtomicLong();
        final d<Object> d;
        final io.reactivex.internal.util.b e = new io.reactivex.internal.util.b();
        final int f;
        volatile boolean g;
        boolean h;
        long i;

        b(org.b.c<? super T> cVar, int i2, d<Object> dVar) {
            this.f8478a = cVar;
            this.f = i2;
            this.d = dVar;
        }

        public final int requestFusion(int i2) {
            if ((i2 & 2) == 0) {
                return 0;
            }
            this.h = true;
            return 2;
        }

        public final T poll() throws Exception {
            T poll;
            do {
                poll = this.d.poll();
            } while (poll == NotificationLite.COMPLETE);
            return poll;
        }

        public final boolean isEmpty() {
            return this.d.isEmpty();
        }

        public final void clear() {
            this.d.clear();
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this.c, j);
                c();
            }
        }

        public final void cancel() {
            if (!this.g) {
                this.g = true;
                this.f8479b.dispose();
                if (getAndIncrement() == 0) {
                    this.d.clear();
                }
            }
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            this.f8479b.add(cVar);
        }

        public final void onSuccess(T t) {
            this.d.offer(t);
            c();
        }

        public final void onError(Throwable th) {
            if (this.e.addThrowable(th)) {
                this.f8479b.dispose();
                this.d.offer(NotificationLite.COMPLETE);
                c();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.d.offer(NotificationLite.COMPLETE);
            c();
        }

        private void a() {
            org.b.c<? super T> cVar = this.f8478a;
            d<Object> dVar = this.d;
            long j = this.i;
            int i2 = 1;
            do {
                long j2 = this.c.get();
                while (j != j2) {
                    if (!this.g) {
                        if (((Throwable) this.e.get()) == null) {
                            if (dVar.consumerIndex() != this.f) {
                                Object poll = dVar.poll();
                                if (poll == null) {
                                    break;
                                } else if (poll != NotificationLite.COMPLETE) {
                                    cVar.onNext(poll);
                                    j++;
                                }
                            } else {
                                cVar.onComplete();
                                return;
                            }
                        } else {
                            dVar.clear();
                            cVar.onError(this.e.terminate());
                            return;
                        }
                    } else {
                        dVar.clear();
                        return;
                    }
                }
                if (j == j2) {
                    if (((Throwable) this.e.get()) != null) {
                        dVar.clear();
                        cVar.onError(this.e.terminate());
                        return;
                    }
                    while (dVar.peek() == NotificationLite.COMPLETE) {
                        dVar.drop();
                    }
                    if (dVar.consumerIndex() == this.f) {
                        cVar.onComplete();
                        return;
                    }
                }
                this.i = j;
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }

        private void b() {
            org.b.c<? super T> cVar = this.f8478a;
            d<Object> dVar = this.d;
            int i2 = 1;
            while (!this.g) {
                Throwable th = (Throwable) this.e.get();
                if (th != null) {
                    dVar.clear();
                    cVar.onError(th);
                    return;
                }
                boolean z = dVar.producerIndex() == this.f;
                if (!dVar.isEmpty()) {
                    cVar.onNext(null);
                }
                if (z) {
                    cVar.onComplete();
                    return;
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
            dVar.clear();
        }

        private void c() {
            if (getAndIncrement() == 0) {
                if (this.h) {
                    b();
                } else {
                    a();
                }
            }
        }
    }

    static final class c<T> extends AtomicReferenceArray<T> implements d<T> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicInteger f8480a = new AtomicInteger();

        /* renamed from: b  reason: collision with root package name */
        int f8481b;

        c(int i) {
            super(i);
        }

        public final boolean offer(T t) {
            io.reactivex.internal.a.b.requireNonNull(t, "value is null");
            int andIncrement = this.f8480a.getAndIncrement();
            if (andIncrement >= length()) {
                return false;
            }
            lazySet(andIncrement, t);
            return true;
        }

        public final boolean offer(T t, T t2) {
            throw new UnsupportedOperationException();
        }

        public final T poll() {
            int i = this.f8481b;
            if (i == length()) {
                return null;
            }
            AtomicInteger atomicInteger = this.f8480a;
            do {
                T t = get(i);
                if (t != null) {
                    this.f8481b = i + 1;
                    lazySet(i, null);
                    return t;
                }
            } while (atomicInteger.get() != i);
            return null;
        }

        public final T peek() {
            int i = this.f8481b;
            if (i == length()) {
                return null;
            }
            return get(i);
        }

        public final void drop() {
            int i = this.f8481b;
            lazySet(i, null);
            this.f8481b = i + 1;
        }

        public final boolean isEmpty() {
            return this.f8481b == producerIndex();
        }

        public final void clear() {
            while (poll() != null) {
                if (isEmpty()) {
                    return;
                }
            }
        }

        public final int consumerIndex() {
            return this.f8481b;
        }

        public final int producerIndex() {
            return this.f8480a.get();
        }
    }

    interface d<T> extends io.reactivex.internal.b.j<T> {
        int consumerIndex();

        void drop();

        T peek();

        T poll();

        int producerIndex();
    }

    public ax(w<? extends T>[] wVarArr) {
        this.f8475b = wVarArr;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        d dVar;
        w<? extends T>[] wVarArr = this.f8475b;
        int length = wVarArr.length;
        if (length <= bufferSize()) {
            dVar = new c(length);
        } else {
            dVar = new a();
        }
        b bVar = new b(cVar, length, dVar);
        cVar.onSubscribe(bVar);
        io.reactivex.internal.util.b bVar2 = bVar.e;
        int length2 = wVarArr.length;
        int i = 0;
        while (i < length2) {
            w<? extends T> wVar = wVarArr[i];
            if (!bVar.g && bVar2.get() == null) {
                wVar.subscribe(bVar);
                i++;
            } else {
                return;
            }
        }
    }
}
