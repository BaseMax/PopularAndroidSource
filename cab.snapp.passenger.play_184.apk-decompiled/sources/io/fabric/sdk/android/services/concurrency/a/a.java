package io.fabric.sdk.android.services.concurrency.a;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.AbstractQueuedSynchronizer;

public abstract class a<V> implements Future<V> {

    /* renamed from: a  reason: collision with root package name */
    final C0124a<V> f6631a = new C0124a<>();

    /* renamed from: io.fabric.sdk.android.services.concurrency.a.a$a  reason: collision with other inner class name */
    static final class C0124a<V> extends AbstractQueuedSynchronizer {

        /* renamed from: a  reason: collision with root package name */
        private V f6632a;

        /* renamed from: b  reason: collision with root package name */
        private Throwable f6633b;

        C0124a() {
        }

        /* access modifiers changed from: protected */
        public final int tryAcquireShared(int i) {
            return b() ? 1 : -1;
        }

        /* access modifiers changed from: protected */
        public final boolean tryReleaseShared(int i) {
            setState(i);
            return true;
        }

        /* access modifiers changed from: package-private */
        public final V a() throws CancellationException, ExecutionException {
            int state = getState();
            if (state == 2) {
                Throwable th = this.f6633b;
                if (th == null) {
                    return this.f6632a;
                }
                throw new ExecutionException(th);
            } else if (state == 4 || state == 8) {
                throw a.a("Task was cancelled.", this.f6633b);
            } else {
                throw new IllegalStateException("Error, synchronizer in invalid state: ".concat(String.valueOf(state)));
            }
        }

        /* access modifiers changed from: package-private */
        public final boolean b() {
            return (getState() & 14) != 0;
        }

        /* access modifiers changed from: package-private */
        public final boolean c() {
            return (getState() & 12) != 0;
        }

        /* access modifiers changed from: package-private */
        public final boolean a(V v, Throwable th, int i) {
            boolean compareAndSetState = compareAndSetState(0, 1);
            if (compareAndSetState) {
                this.f6632a = v;
                if ((i & 12) != 0) {
                    th = new CancellationException("Future.cancel() was called.");
                }
                this.f6633b = th;
                releaseShared(i);
            } else if (getState() == 1) {
                acquireShared(-1);
            }
            return compareAndSetState;
        }
    }

    /* access modifiers changed from: protected */
    public void a() {
    }

    protected a() {
    }

    static final CancellationException a(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    public V get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        C0124a<V> aVar = this.f6631a;
        if (aVar.tryAcquireSharedNanos(-1, timeUnit.toNanos(j))) {
            return aVar.a();
        }
        throw new TimeoutException("Timeout waiting for task.");
    }

    public V get() throws InterruptedException, ExecutionException {
        C0124a<V> aVar = this.f6631a;
        aVar.acquireSharedInterruptibly(-1);
        return aVar.a();
    }

    public boolean isDone() {
        return this.f6631a.b();
    }

    public boolean isCancelled() {
        return this.f6631a.c();
    }

    public boolean cancel(boolean z) {
        if (!this.f6631a.a(null, null, z ? 8 : 4)) {
            return false;
        }
        if (z) {
            a();
        }
        return true;
    }
}
