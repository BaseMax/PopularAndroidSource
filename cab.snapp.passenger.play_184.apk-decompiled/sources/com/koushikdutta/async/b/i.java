package com.koushikdutta.async.b;

import com.koushikdutta.async.g;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

public class i<T> extends h implements d<T> {
    f<T> callback;
    Exception exception;
    T result;
    boolean silent;
    g waiter;

    public i() {
    }

    public i(T t) {
        setComplete(t);
    }

    public i(Exception exc) {
        setComplete(exc);
    }

    public boolean cancel(boolean z) {
        return cancel();
    }

    private boolean cancelInternal(boolean z) {
        f handleCompleteLocked;
        if (!super.cancel()) {
            return false;
        }
        synchronized (this) {
            this.exception = new CancellationException();
            releaseWaiterLocked();
            handleCompleteLocked = handleCompleteLocked();
            this.silent = z;
        }
        handleCallbackUnlocked(handleCompleteLocked);
        return true;
    }

    public boolean cancelSilently() {
        return cancelInternal(true);
    }

    public boolean cancel() {
        return cancelInternal(this.silent);
    }

    public T get() throws InterruptedException, ExecutionException {
        synchronized (this) {
            if (!isCancelled()) {
                if (!isDone()) {
                    g ensureWaiterLocked = ensureWaiterLocked();
                    ensureWaiterLocked.acquire();
                    return getResultOrThrow();
                }
            }
            T resultOrThrow = getResultOrThrow();
            return resultOrThrow;
        }
    }

    private T getResultOrThrow() throws ExecutionException {
        Exception exc = this.exception;
        if (exc == null) {
            return this.result;
        }
        throw new ExecutionException(exc);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0017, code lost:
        if (r0.tryAcquire(r2, r4) == false) goto L_0x001e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001d, code lost:
        return getResultOrThrow();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0023, code lost:
        throw new java.util.concurrent.TimeoutException();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public T get(long r2, java.util.concurrent.TimeUnit r4) throws java.lang.InterruptedException, java.util.concurrent.ExecutionException, java.util.concurrent.TimeoutException {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.isCancelled()     // Catch:{ all -> 0x002a }
            if (r0 != 0) goto L_0x0024
            boolean r0 = r1.isDone()     // Catch:{ all -> 0x002a }
            if (r0 == 0) goto L_0x000e
            goto L_0x0024
        L_0x000e:
            com.koushikdutta.async.g r0 = r1.ensureWaiterLocked()     // Catch:{ all -> 0x002a }
            monitor-exit(r1)     // Catch:{ all -> 0x002a }
            boolean r2 = r0.tryAcquire(r2, r4)
            if (r2 == 0) goto L_0x001e
            java.lang.Object r2 = r1.getResultOrThrow()
            return r2
        L_0x001e:
            java.util.concurrent.TimeoutException r2 = new java.util.concurrent.TimeoutException
            r2.<init>()
            throw r2
        L_0x0024:
            java.lang.Object r2 = r1.getResultOrThrow()     // Catch:{ all -> 0x002a }
            monitor-exit(r1)     // Catch:{ all -> 0x002a }
            return r2
        L_0x002a:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x002a }
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.b.i.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    public boolean setComplete() {
        return setComplete((Object) null);
    }

    private f<T> handleCompleteLocked() {
        f<T> fVar = this.callback;
        this.callback = null;
        return fVar;
    }

    private void handleCallbackUnlocked(f<T> fVar) {
        if (fVar != null && !this.silent) {
            fVar.onCompleted(this.exception, this.result);
        }
    }

    /* access modifiers changed from: package-private */
    public void releaseWaiterLocked() {
        g gVar = this.waiter;
        if (gVar != null) {
            gVar.release();
            this.waiter = null;
        }
    }

    /* access modifiers changed from: package-private */
    public g ensureWaiterLocked() {
        if (this.waiter == null) {
            this.waiter = new g();
        }
        return this.waiter;
    }

    public boolean setComplete(Exception exc) {
        return setComplete(exc, null);
    }

    public boolean setComplete(T t) {
        return setComplete(null, t);
    }

    public boolean setComplete(Exception exc, T t) {
        synchronized (this) {
            if (!super.setComplete()) {
                return false;
            }
            this.result = t;
            this.exception = exc;
            releaseWaiterLocked();
            f handleCompleteLocked = handleCompleteLocked();
            handleCallbackUnlocked(handleCompleteLocked);
            return true;
        }
    }

    public f<T> getCompletionCallback() {
        return new f<T>() {
            public final void onCompleted(Exception exc, T t) {
                i.this.setComplete(exc, t);
            }
        };
    }

    public i<T> setComplete(e<T> eVar) {
        eVar.setCallback(getCompletionCallback());
        setParent((a) eVar);
        return this;
    }

    public f<T> getCallback() {
        return this.callback;
    }

    public i<T> setCallback(f<T> fVar) {
        f fVar2;
        synchronized (this) {
            this.callback = fVar;
            if (!isDone()) {
                if (!isCancelled()) {
                    fVar2 = null;
                }
            }
            fVar2 = handleCompleteLocked();
        }
        handleCallbackUnlocked(fVar2);
        return this;
    }

    public final <C extends f<T>> C then(C c) {
        if (c instanceof c) {
            ((c) c).setParent(this);
        }
        setCallback((f) c);
        return c;
    }

    public i<T> setParent(a aVar) {
        super.setParent(aVar);
        return this;
    }

    public i<T> reset() {
        super.reset();
        this.result = null;
        this.exception = null;
        this.waiter = null;
        this.callback = null;
        this.silent = false;
        return this;
    }

    public Exception tryGetException() {
        return this.exception;
    }

    public T tryGet() {
        return this.result;
    }
}
