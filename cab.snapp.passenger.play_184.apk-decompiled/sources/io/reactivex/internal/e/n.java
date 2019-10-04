package io.reactivex.internal.e;

import io.reactivex.b.c;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class n extends AtomicReferenceArray<Object> implements c, Runnable, Callable<Object> {

    /* renamed from: b  reason: collision with root package name */
    static final Object f6837b = new Object();
    static final Object c = new Object();
    static final Object d = new Object();
    static final Object e = new Object();

    /* renamed from: a  reason: collision with root package name */
    final Runnable f6838a;

    public n(Runnable runnable, io.reactivex.internal.disposables.c cVar) {
        super(3);
        this.f6838a = runnable;
        lazySet(0, cVar);
    }

    public final Object call() {
        run();
        return null;
    }

    public final void run() {
        Object obj;
        Object obj2;
        lazySet(2, Thread.currentThread());
        try {
            this.f6838a.run();
        } catch (Throwable th) {
            lazySet(2, null);
            Object obj3 = get(0);
            if (!(obj3 == f6837b || !compareAndSet(0, obj3, e) || obj3 == null)) {
                ((io.reactivex.internal.disposables.c) obj3).delete(this);
            }
            do {
                obj2 = get(1);
                if (obj2 == c || obj2 == d) {
                    throw th;
                }
            } while (!compareAndSet(1, obj2, e));
            throw th;
        }
        lazySet(2, null);
        Object obj4 = get(0);
        if (!(obj4 == f6837b || !compareAndSet(0, obj4, e) || obj4 == null)) {
            ((io.reactivex.internal.disposables.c) obj4).delete(this);
        }
        do {
            obj = get(1);
            if (obj == c || obj == d) {
                return;
            }
        } while (!compareAndSet(1, obj, e));
    }

    public final void setFuture(Future<?> future) {
        Object obj;
        do {
            obj = get(1);
            if (obj != e) {
                if (obj == c) {
                    future.cancel(false);
                    return;
                } else if (obj == d) {
                    future.cancel(true);
                    return;
                }
            } else {
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP_START, MTH_ENTER_BLOCK] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void dispose() {
        /*
            r5 = this;
        L_0x0000:
            r0 = 1
            java.lang.Object r1 = r5.get(r0)
            java.lang.Object r2 = e
            r3 = 0
            if (r1 == r2) goto L_0x0034
            java.lang.Object r2 = c
            if (r1 == r2) goto L_0x0034
            java.lang.Object r2 = d
            if (r1 == r2) goto L_0x0034
            r2 = 2
            java.lang.Object r2 = r5.get(r2)
            java.lang.Thread r4 = java.lang.Thread.currentThread()
            if (r2 == r4) goto L_0x001f
            r2 = 1
            goto L_0x0020
        L_0x001f:
            r2 = 0
        L_0x0020:
            if (r2 == 0) goto L_0x0025
            java.lang.Object r4 = d
            goto L_0x0027
        L_0x0025:
            java.lang.Object r4 = c
        L_0x0027:
            boolean r0 = r5.compareAndSet(r0, r1, r4)
            if (r0 == 0) goto L_0x0000
            if (r1 == 0) goto L_0x0034
            java.util.concurrent.Future r1 = (java.util.concurrent.Future) r1
            r1.cancel(r2)
        L_0x0034:
            java.lang.Object r0 = r5.get(r3)
            java.lang.Object r1 = e
            if (r0 == r1) goto L_0x004e
            java.lang.Object r1 = f6837b
            if (r0 == r1) goto L_0x004e
            if (r0 != 0) goto L_0x0043
            goto L_0x004e
        L_0x0043:
            boolean r1 = r5.compareAndSet(r3, r0, r1)
            if (r1 == 0) goto L_0x0034
            io.reactivex.internal.disposables.c r0 = (io.reactivex.internal.disposables.c) r0
            r0.delete(r5)
        L_0x004e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.e.n.dispose():void");
    }

    public final boolean isDisposed() {
        Object obj = get(0);
        if (obj == f6837b || obj == e) {
            return true;
        }
        return false;
    }
}
