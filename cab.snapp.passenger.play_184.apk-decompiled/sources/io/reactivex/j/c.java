package io.reactivex.j;

import io.reactivex.ag;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.a;

final class c<T> extends d<T> implements a.C0204a<Object> {

    /* renamed from: a  reason: collision with root package name */
    final d<T> f8657a;

    /* renamed from: b  reason: collision with root package name */
    boolean f8658b;
    a<Object> c;
    volatile boolean d;

    c(d<T> dVar) {
        this.f8657a = dVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f8657a.subscribe(agVar);
    }

    public final void onSubscribe(io.reactivex.b.c cVar) {
        boolean z = true;
        if (!this.d) {
            synchronized (this) {
                if (!this.d) {
                    if (this.f8658b) {
                        a<Object> aVar = this.c;
                        if (aVar == null) {
                            aVar = new a<>(4);
                            this.c = aVar;
                        }
                        aVar.add(NotificationLite.disposable(cVar));
                        return;
                    }
                    this.f8658b = true;
                    z = false;
                }
            }
        }
        if (z) {
            cVar.dispose();
            return;
        }
        this.f8657a.onSubscribe(cVar);
        a();
    }

    public final void onNext(T t) {
        if (!this.d) {
            synchronized (this) {
                if (!this.d) {
                    if (this.f8658b) {
                        a<Object> aVar = this.c;
                        if (aVar == null) {
                            aVar = new a<>(4);
                            this.c = aVar;
                        }
                        aVar.add(NotificationLite.next(t));
                        return;
                    }
                    this.f8658b = true;
                    this.f8657a.onNext(t);
                    a();
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x002f, code lost:
        if (r0 == false) goto L_0x0035;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0031, code lost:
        io.reactivex.g.a.onError(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0034, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0035, code lost:
        r2.f8657a.onError(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x003a, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onError(java.lang.Throwable r3) {
        /*
            r2 = this;
            boolean r0 = r2.d
            if (r0 == 0) goto L_0x0008
            io.reactivex.g.a.onError(r3)
            return
        L_0x0008:
            monitor-enter(r2)
            boolean r0 = r2.d     // Catch:{ all -> 0x003b }
            r1 = 1
            if (r0 == 0) goto L_0x0010
            r0 = 1
            goto L_0x002e
        L_0x0010:
            r2.d = r1     // Catch:{ all -> 0x003b }
            boolean r0 = r2.f8658b     // Catch:{ all -> 0x003b }
            if (r0 == 0) goto L_0x002b
            io.reactivex.internal.util.a<java.lang.Object> r0 = r2.c     // Catch:{ all -> 0x003b }
            if (r0 != 0) goto L_0x0022
            io.reactivex.internal.util.a r0 = new io.reactivex.internal.util.a     // Catch:{ all -> 0x003b }
            r1 = 4
            r0.<init>(r1)     // Catch:{ all -> 0x003b }
            r2.c = r0     // Catch:{ all -> 0x003b }
        L_0x0022:
            java.lang.Object r3 = io.reactivex.internal.util.NotificationLite.error(r3)     // Catch:{ all -> 0x003b }
            r0.setFirst(r3)     // Catch:{ all -> 0x003b }
            monitor-exit(r2)     // Catch:{ all -> 0x003b }
            return
        L_0x002b:
            r0 = 0
            r2.f8658b = r1     // Catch:{ all -> 0x003b }
        L_0x002e:
            monitor-exit(r2)     // Catch:{ all -> 0x003b }
            if (r0 == 0) goto L_0x0035
            io.reactivex.g.a.onError(r3)
            return
        L_0x0035:
            io.reactivex.j.d<T> r0 = r2.f8657a
            r0.onError(r3)
            return
        L_0x003b:
            r3 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x003b }
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.j.c.onError(java.lang.Throwable):void");
    }

    public final void onComplete() {
        if (!this.d) {
            synchronized (this) {
                if (!this.d) {
                    this.d = true;
                    if (this.f8658b) {
                        a<Object> aVar = this.c;
                        if (aVar == null) {
                            aVar = new a<>(4);
                            this.c = aVar;
                        }
                        aVar.add(NotificationLite.complete());
                        return;
                    }
                    this.f8658b = true;
                    this.f8657a.onComplete();
                }
            }
        }
    }

    private void a() {
        a<Object> aVar;
        while (true) {
            synchronized (this) {
                aVar = this.c;
                if (aVar == null) {
                    this.f8658b = false;
                    return;
                }
                this.c = null;
            }
            aVar.forEachWhile(this);
        }
        while (true) {
        }
    }

    public final boolean test(Object obj) {
        return NotificationLite.acceptFull(obj, this.f8657a);
    }

    public final boolean hasObservers() {
        return this.f8657a.hasObservers();
    }

    public final boolean hasThrowable() {
        return this.f8657a.hasThrowable();
    }

    public final Throwable getThrowable() {
        return this.f8657a.getThrowable();
    }

    public final boolean hasComplete() {
        return this.f8657a.hasComplete();
    }
}
