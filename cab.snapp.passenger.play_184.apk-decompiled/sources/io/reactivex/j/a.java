package io.reactivex.j;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.a.b;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.a;
import io.reactivex.internal.util.h;
import java.lang.reflect.Array;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public final class a<T> extends d<T> {
    static final C0205a[] c = new C0205a[0];
    static final C0205a[] d = new C0205a[0];
    private static final Object[] j = new Object[0];

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<Object> f8649a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<C0205a<T>[]> f8650b;
    final ReadWriteLock e;
    final Lock f;
    final Lock g;
    final AtomicReference<Throwable> h;
    long i;

    /* renamed from: io.reactivex.j.a$a  reason: collision with other inner class name */
    static final class C0205a<T> implements c, a.C0204a<Object> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f8651a;

        /* renamed from: b  reason: collision with root package name */
        final a<T> f8652b;
        boolean c;
        boolean d;
        io.reactivex.internal.util.a<Object> e;
        boolean f;
        volatile boolean g;
        long h;

        C0205a(ag<? super T> agVar, a<T> aVar) {
            this.f8651a = agVar;
            this.f8652b = aVar;
        }

        public final void dispose() {
            if (!this.g) {
                this.g = true;
                this.f8652b.a(this);
            }
        }

        public final boolean isDisposed() {
            return this.g;
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Code restructure failed: missing block: B:25:0x0031, code lost:
            r3.f = true;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a(java.lang.Object r4, long r5) {
            /*
                r3 = this;
                boolean r0 = r3.g
                if (r0 == 0) goto L_0x0005
                return
            L_0x0005:
                boolean r0 = r3.f
                if (r0 != 0) goto L_0x0037
                monitor-enter(r3)
                boolean r0 = r3.g     // Catch:{ all -> 0x0034 }
                if (r0 == 0) goto L_0x0010
                monitor-exit(r3)     // Catch:{ all -> 0x0034 }
                return
            L_0x0010:
                long r0 = r3.h     // Catch:{ all -> 0x0034 }
                int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
                if (r2 != 0) goto L_0x0018
                monitor-exit(r3)     // Catch:{ all -> 0x0034 }
                return
            L_0x0018:
                boolean r5 = r3.d     // Catch:{ all -> 0x0034 }
                if (r5 == 0) goto L_0x002d
                io.reactivex.internal.util.a<java.lang.Object> r5 = r3.e     // Catch:{ all -> 0x0034 }
                if (r5 != 0) goto L_0x0028
                io.reactivex.internal.util.a r5 = new io.reactivex.internal.util.a     // Catch:{ all -> 0x0034 }
                r6 = 4
                r5.<init>(r6)     // Catch:{ all -> 0x0034 }
                r3.e = r5     // Catch:{ all -> 0x0034 }
            L_0x0028:
                r5.add(r4)     // Catch:{ all -> 0x0034 }
                monitor-exit(r3)     // Catch:{ all -> 0x0034 }
                return
            L_0x002d:
                r5 = 1
                r3.c = r5     // Catch:{ all -> 0x0034 }
                monitor-exit(r3)     // Catch:{ all -> 0x0034 }
                r3.f = r5
                goto L_0x0037
            L_0x0034:
                r4 = move-exception
                monitor-exit(r3)     // Catch:{ all -> 0x0034 }
                throw r4
            L_0x0037:
                r3.test(r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.j.a.C0205a.a(java.lang.Object, long):void");
        }

        public final boolean test(Object obj) {
            return this.g || NotificationLite.accept(obj, this.f8651a);
        }
    }

    public static <T> a<T> create() {
        return new a<>();
    }

    public static <T> a<T> createDefault(T t) {
        return new a<>(t);
    }

    a() {
        this.e = new ReentrantReadWriteLock();
        this.f = this.e.readLock();
        this.g = this.e.writeLock();
        this.f8650b = new AtomicReference<>(c);
        this.f8649a = new AtomicReference<>();
        this.h = new AtomicReference<>();
    }

    private a(T t) {
        this();
        this.f8649a.lazySet(b.requireNonNull(t, "defaultValue is null"));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0064, code lost:
        if (r8 == null) goto L_0x0087;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x006a, code lost:
        if (r0.test(r8) != false) goto L_0x0087;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x006e, code lost:
        if (r0.g != false) goto L_0x0087;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0070, code lost:
        monitor-enter(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
        r8 = r0.e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0073, code lost:
        if (r8 != null) goto L_0x0079;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0075, code lost:
        r0.d = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0077, code lost:
        monitor-exit(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0078, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0079, code lost:
        r0.e = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x007c, code lost:
        monitor-exit(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x007d, code lost:
        r8.forEachWhile(r0);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void subscribeActual(io.reactivex.ag<? super T> r8) {
        /*
            r7 = this;
            io.reactivex.j.a$a r0 = new io.reactivex.j.a$a
            r0.<init>(r8, r7)
            r8.onSubscribe(r0)
        L_0x0008:
            java.util.concurrent.atomic.AtomicReference<io.reactivex.j.a$a<T>[]> r1 = r7.f8650b
            java.lang.Object r1 = r1.get()
            io.reactivex.j.a$a[] r1 = (io.reactivex.j.a.C0205a[]) r1
            io.reactivex.j.a$a[] r2 = d
            r3 = 1
            r4 = 0
            if (r1 != r2) goto L_0x0018
            r1 = 0
            goto L_0x002b
        L_0x0018:
            int r2 = r1.length
            int r5 = r2 + 1
            io.reactivex.j.a$a[] r5 = new io.reactivex.j.a.C0205a[r5]
            java.lang.System.arraycopy(r1, r4, r5, r4, r2)
            r5[r2] = r0
            java.util.concurrent.atomic.AtomicReference<io.reactivex.j.a$a<T>[]> r2 = r7.f8650b
            boolean r1 = r2.compareAndSet(r1, r5)
            if (r1 == 0) goto L_0x0008
            r1 = 1
        L_0x002b:
            if (r1 == 0) goto L_0x0088
            boolean r8 = r0.g
            if (r8 == 0) goto L_0x0035
            r7.a(r0)
            return
        L_0x0035:
            boolean r8 = r0.g
            if (r8 != 0) goto L_0x0087
            monitor-enter(r0)
            boolean r8 = r0.g     // Catch:{ all -> 0x0084 }
            if (r8 == 0) goto L_0x0040
            monitor-exit(r0)     // Catch:{ all -> 0x0084 }
            return
        L_0x0040:
            boolean r8 = r0.c     // Catch:{ all -> 0x0084 }
            if (r8 == 0) goto L_0x0046
            monitor-exit(r0)     // Catch:{ all -> 0x0084 }
            return
        L_0x0046:
            io.reactivex.j.a<T> r8 = r0.f8652b     // Catch:{ all -> 0x0084 }
            java.util.concurrent.locks.Lock r1 = r8.f     // Catch:{ all -> 0x0084 }
            r1.lock()     // Catch:{ all -> 0x0084 }
            long r5 = r8.i     // Catch:{ all -> 0x0084 }
            r0.h = r5     // Catch:{ all -> 0x0084 }
            java.util.concurrent.atomic.AtomicReference<java.lang.Object> r8 = r8.f8649a     // Catch:{ all -> 0x0084 }
            java.lang.Object r8 = r8.get()     // Catch:{ all -> 0x0084 }
            r1.unlock()     // Catch:{ all -> 0x0084 }
            if (r8 == 0) goto L_0x005e
            r1 = 1
            goto L_0x005f
        L_0x005e:
            r1 = 0
        L_0x005f:
            r0.d = r1     // Catch:{ all -> 0x0084 }
            r0.c = r3     // Catch:{ all -> 0x0084 }
            monitor-exit(r0)     // Catch:{ all -> 0x0084 }
            if (r8 == 0) goto L_0x0087
            boolean r8 = r0.test(r8)
            if (r8 != 0) goto L_0x0087
        L_0x006c:
            boolean r8 = r0.g
            if (r8 != 0) goto L_0x0087
            monitor-enter(r0)
            io.reactivex.internal.util.a<java.lang.Object> r8 = r0.e     // Catch:{ all -> 0x0081 }
            if (r8 != 0) goto L_0x0079
            r0.d = r4     // Catch:{ all -> 0x0081 }
            monitor-exit(r0)     // Catch:{ all -> 0x0081 }
            return
        L_0x0079:
            r1 = 0
            r0.e = r1     // Catch:{ all -> 0x0081 }
            monitor-exit(r0)     // Catch:{ all -> 0x0081 }
            r8.forEachWhile(r0)
            goto L_0x006c
        L_0x0081:
            r8 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0081 }
            throw r8
        L_0x0084:
            r8 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0084 }
            throw r8
        L_0x0087:
            return
        L_0x0088:
            java.util.concurrent.atomic.AtomicReference<java.lang.Throwable> r0 = r7.h
            java.lang.Object r0 = r0.get()
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            java.lang.Throwable r1 = io.reactivex.internal.util.h.TERMINATED
            if (r0 != r1) goto L_0x0098
            r8.onComplete()
            return
        L_0x0098:
            r8.onError(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.j.a.subscribeActual(io.reactivex.ag):void");
    }

    public final void onSubscribe(c cVar) {
        if (this.h.get() != null) {
            cVar.dispose();
        }
    }

    public final void onNext(T t) {
        b.requireNonNull(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.h.get() == null) {
            Object next = NotificationLite.next(t);
            b(next);
            for (C0205a a2 : (C0205a[]) this.f8650b.get()) {
                a2.a(next, this.i);
            }
        }
    }

    public final void onError(Throwable th) {
        b.requireNonNull(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.h.compareAndSet(null, th)) {
            io.reactivex.g.a.onError(th);
            return;
        }
        Object error = NotificationLite.error(th);
        for (C0205a a2 : a(error)) {
            a2.a(error, this.i);
        }
    }

    public final void onComplete() {
        if (this.h.compareAndSet(null, h.TERMINATED)) {
            Object complete = NotificationLite.complete();
            for (C0205a a2 : a(complete)) {
                a2.a(complete, this.i);
            }
        }
    }

    public final boolean hasObservers() {
        return ((C0205a[]) this.f8650b.get()).length != 0;
    }

    public final Throwable getThrowable() {
        Object obj = this.f8649a.get();
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    public final T getValue() {
        Object obj = this.f8649a.get();
        if (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) {
            return null;
        }
        return NotificationLite.getValue(obj);
    }

    @Deprecated
    public final Object[] getValues() {
        Object[] values = getValues(j);
        return values == j ? new Object[0] : values;
    }

    @Deprecated
    public final T[] getValues(T[] tArr) {
        Object obj = this.f8649a.get();
        if (obj == null || NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) {
            if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        T value = NotificationLite.getValue(obj);
        if (tArr.length != 0) {
            tArr[0] = value;
            if (tArr.length != 1) {
                tArr[1] = null;
            }
        } else {
            tArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1);
            tArr[0] = value;
        }
        return tArr;
    }

    public final boolean hasComplete() {
        return NotificationLite.isComplete(this.f8649a.get());
    }

    public final boolean hasThrowable() {
        return NotificationLite.isError(this.f8649a.get());
    }

    public final boolean hasValue() {
        Object obj = this.f8649a.get();
        return obj != null && !NotificationLite.isComplete(obj) && !NotificationLite.isError(obj);
    }

    /* access modifiers changed from: package-private */
    public final void a(C0205a<T> aVar) {
        C0205a<T>[] aVarArr;
        C0205a[] aVarArr2;
        do {
            aVarArr = (C0205a[]) this.f8650b.get();
            int length = aVarArr.length;
            if (length != 0) {
                int i2 = -1;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        break;
                    } else if (aVarArr[i3] == aVar) {
                        i2 = i3;
                        break;
                    } else {
                        i3++;
                    }
                }
                if (i2 >= 0) {
                    if (length == 1) {
                        aVarArr2 = c;
                    } else {
                        C0205a[] aVarArr3 = new C0205a[(length - 1)];
                        System.arraycopy(aVarArr, 0, aVarArr3, 0, i2);
                        System.arraycopy(aVarArr, i2 + 1, aVarArr3, i2, (length - i2) - 1);
                        aVarArr2 = aVarArr3;
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f8650b.compareAndSet(aVarArr, aVarArr2));
    }

    private C0205a<T>[] a(Object obj) {
        C0205a<T>[] aVarArr = (C0205a[]) this.f8650b.getAndSet(d);
        if (aVarArr != d) {
            b(obj);
        }
        return aVarArr;
    }

    private void b(Object obj) {
        this.g.lock();
        this.i++;
        this.f8649a.lazySet(obj);
        this.g.unlock();
    }
}
