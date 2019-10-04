package io.reactivex.internal.operators.flowable;

import io.reactivex.b.c;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.h;
import io.reactivex.j;
import io.reactivex.o;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.b.d;

public final class b<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f8000a;

    /* renamed from: b  reason: collision with root package name */
    final int f8001b;

    static final class a<T> extends AtomicReference<d> implements c, o<T>, Runnable, Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.internal.d.b<T> f8002a;

        /* renamed from: b  reason: collision with root package name */
        final long f8003b;
        final long c;
        final Lock d = new ReentrantLock();
        final Condition e = this.d.newCondition();
        long f;
        volatile boolean g;
        Throwable h;

        a(int i) {
            this.f8002a = new io.reactivex.internal.d.b<>(i);
            this.f8003b = (long) i;
            this.c = (long) (i - (i >> 2));
        }

        public final boolean hasNext() {
            while (true) {
                boolean z = this.g;
                boolean isEmpty = this.f8002a.isEmpty();
                if (z) {
                    Throwable th = this.h;
                    if (th != null) {
                        throw h.wrapOrThrow(th);
                    } else if (isEmpty) {
                        return false;
                    }
                }
                if (!isEmpty) {
                    return true;
                }
                io.reactivex.internal.util.d.verifyNonBlocking();
                this.d.lock();
                while (!this.g && this.f8002a.isEmpty()) {
                    try {
                        this.e.await();
                    } catch (InterruptedException e2) {
                        run();
                        throw h.wrapOrThrow(e2);
                    } catch (Throwable th2) {
                        this.d.unlock();
                        throw th2;
                    }
                }
                this.d.unlock();
            }
        }

        public final T next() {
            if (hasNext()) {
                T poll = this.f8002a.poll();
                long j = this.f + 1;
                if (j == this.c) {
                    this.f = 0;
                    ((d) get()).request(j);
                } else {
                    this.f = j;
                }
                return poll;
            }
            throw new NoSuchElementException();
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.setOnce(this, dVar, this.f8003b);
        }

        public final void onNext(T t) {
            if (!this.f8002a.offer(t)) {
                SubscriptionHelper.cancel(this);
                onError(new io.reactivex.c.c("Queue full?!"));
                return;
            }
            a();
        }

        public final void onError(Throwable th) {
            this.h = th;
            this.g = true;
            a();
        }

        public final void onComplete() {
            this.g = true;
            a();
        }

        private void a() {
            this.d.lock();
            try {
                this.e.signalAll();
            } finally {
                this.d.unlock();
            }
        }

        public final void run() {
            SubscriptionHelper.cancel(this);
            a();
        }

        public final void remove() {
            throw new UnsupportedOperationException(com.google.android.gms.analytics.a.b.ACTION_REMOVE);
        }

        public final void dispose() {
            SubscriptionHelper.cancel(this);
        }

        public final boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }
    }

    public b(j<T> jVar, int i) {
        this.f8000a = jVar;
        this.f8001b = i;
    }

    public final Iterator<T> iterator() {
        a aVar = new a(this.f8001b);
        this.f8000a.subscribe(aVar);
        return aVar;
    }
}
