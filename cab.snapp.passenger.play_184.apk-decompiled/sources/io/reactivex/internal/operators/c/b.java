package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.d;
import io.reactivex.internal.util.h;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class b<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<? extends T> f7171a;

    /* renamed from: b  reason: collision with root package name */
    final int f7172b;

    static final class a<T> extends AtomicReference<c> implements ag<T>, c, Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.internal.d.c<T> f7173a;

        /* renamed from: b  reason: collision with root package name */
        final Lock f7174b = new ReentrantLock();
        final Condition c = this.f7174b.newCondition();
        volatile boolean d;
        Throwable e;

        a(int i) {
            this.f7173a = new io.reactivex.internal.d.c<>(i);
        }

        public final boolean hasNext() {
            while (true) {
                boolean z = this.d;
                boolean isEmpty = this.f7173a.isEmpty();
                if (z) {
                    Throwable th = this.e;
                    if (th != null) {
                        throw h.wrapOrThrow(th);
                    } else if (isEmpty) {
                        return false;
                    }
                }
                if (!isEmpty) {
                    return true;
                }
                d.verifyNonBlocking();
                this.f7174b.lock();
                while (!this.d && this.f7173a.isEmpty()) {
                    try {
                        this.c.await();
                    } catch (InterruptedException e2) {
                        DisposableHelper.dispose(this);
                        a();
                        throw h.wrapOrThrow(e2);
                    } catch (Throwable th2) {
                        this.f7174b.unlock();
                        throw th2;
                    }
                }
                this.f7174b.unlock();
            }
        }

        public final T next() {
            if (hasNext()) {
                return this.f7173a.poll();
            }
            throw new NoSuchElementException();
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onNext(T t) {
            this.f7173a.offer(t);
            a();
        }

        public final void onError(Throwable th) {
            this.e = th;
            this.d = true;
            a();
        }

        public final void onComplete() {
            this.d = true;
            a();
        }

        private void a() {
            this.f7174b.lock();
            try {
                this.c.signalAll();
            } finally {
                this.f7174b.unlock();
            }
        }

        public final void remove() {
            throw new UnsupportedOperationException(com.google.android.gms.analytics.a.b.ACTION_REMOVE);
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public b(ae<? extends T> aeVar, int i) {
        this.f7171a = aeVar;
        this.f7172b = i;
    }

    public final Iterator<T> iterator() {
        a aVar = new a(this.f7172b);
        this.f7171a.subscribe(aVar);
        return aVar;
    }
}
