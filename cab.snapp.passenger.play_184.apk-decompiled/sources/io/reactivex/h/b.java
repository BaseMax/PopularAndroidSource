package io.reactivex.h;

import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.a;
import org.b.c;
import org.b.d;

final class b<T> extends a<T> {

    /* renamed from: b  reason: collision with root package name */
    final a<T> f6718b;
    boolean c;
    a<Object> d;
    volatile boolean e;

    b(a<T> aVar) {
        this.f6718b = aVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f6718b.subscribe(cVar);
    }

    public final void onSubscribe(d dVar) {
        boolean z = true;
        if (!this.e) {
            synchronized (this) {
                if (!this.e) {
                    if (this.c) {
                        a<Object> aVar = this.d;
                        if (aVar == null) {
                            aVar = new a<>(4);
                            this.d = aVar;
                        }
                        aVar.add(NotificationLite.subscription(dVar));
                        return;
                    }
                    this.c = true;
                    z = false;
                }
            }
        }
        if (z) {
            dVar.cancel();
            return;
        }
        this.f6718b.onSubscribe(dVar);
        a();
    }

    public final void onNext(T t) {
        if (!this.e) {
            synchronized (this) {
                if (!this.e) {
                    if (this.c) {
                        a<Object> aVar = this.d;
                        if (aVar == null) {
                            aVar = new a<>(4);
                            this.d = aVar;
                        }
                        aVar.add(NotificationLite.next(t));
                        return;
                    }
                    this.c = true;
                    this.f6718b.onNext(t);
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
        r2.f6718b.onError(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x003a, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onError(java.lang.Throwable r3) {
        /*
            r2 = this;
            boolean r0 = r2.e
            if (r0 == 0) goto L_0x0008
            io.reactivex.g.a.onError(r3)
            return
        L_0x0008:
            monitor-enter(r2)
            boolean r0 = r2.e     // Catch:{ all -> 0x003b }
            r1 = 1
            if (r0 == 0) goto L_0x0010
            r0 = 1
            goto L_0x002e
        L_0x0010:
            r2.e = r1     // Catch:{ all -> 0x003b }
            boolean r0 = r2.c     // Catch:{ all -> 0x003b }
            if (r0 == 0) goto L_0x002b
            io.reactivex.internal.util.a<java.lang.Object> r0 = r2.d     // Catch:{ all -> 0x003b }
            if (r0 != 0) goto L_0x0022
            io.reactivex.internal.util.a r0 = new io.reactivex.internal.util.a     // Catch:{ all -> 0x003b }
            r1 = 4
            r0.<init>(r1)     // Catch:{ all -> 0x003b }
            r2.d = r0     // Catch:{ all -> 0x003b }
        L_0x0022:
            java.lang.Object r3 = io.reactivex.internal.util.NotificationLite.error(r3)     // Catch:{ all -> 0x003b }
            r0.setFirst(r3)     // Catch:{ all -> 0x003b }
            monitor-exit(r2)     // Catch:{ all -> 0x003b }
            return
        L_0x002b:
            r0 = 0
            r2.c = r1     // Catch:{ all -> 0x003b }
        L_0x002e:
            monitor-exit(r2)     // Catch:{ all -> 0x003b }
            if (r0 == 0) goto L_0x0035
            io.reactivex.g.a.onError(r3)
            return
        L_0x0035:
            io.reactivex.h.a<T> r0 = r2.f6718b
            r0.onError(r3)
            return
        L_0x003b:
            r3 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x003b }
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.h.b.onError(java.lang.Throwable):void");
    }

    public final void onComplete() {
        if (!this.e) {
            synchronized (this) {
                if (!this.e) {
                    this.e = true;
                    if (this.c) {
                        a<Object> aVar = this.d;
                        if (aVar == null) {
                            aVar = new a<>(4);
                            this.d = aVar;
                        }
                        aVar.add(NotificationLite.complete());
                        return;
                    }
                    this.c = true;
                    this.f6718b.onComplete();
                }
            }
        }
    }

    private void a() {
        a<Object> aVar;
        while (true) {
            synchronized (this) {
                aVar = this.d;
                if (aVar == null) {
                    this.c = false;
                    return;
                }
                this.d = null;
            }
            aVar.accept((c<? super U>) this.f6718b);
        }
        while (true) {
        }
    }

    public final boolean hasSubscribers() {
        return this.f6718b.hasSubscribers();
    }

    public final boolean hasThrowable() {
        return this.f6718b.hasThrowable();
    }

    public final Throwable getThrowable() {
        return this.f6718b.getThrowable();
    }

    public final boolean hasComplete() {
        return this.f6718b.hasComplete();
    }
}
