package io.reactivex.k;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.a;
import io.reactivex.o;
import org.b.c;

public final class d<T> implements o<T>, org.b.d {

    /* renamed from: a  reason: collision with root package name */
    final c<? super T> f8665a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f8666b;
    org.b.d c;
    boolean d;
    a<Object> e;
    volatile boolean f;

    public d(c<? super T> cVar) {
        this(cVar, false);
    }

    public d(c<? super T> cVar, boolean z) {
        this.f8665a = cVar;
        this.f8666b = z;
    }

    public final void onSubscribe(org.b.d dVar) {
        if (SubscriptionHelper.validate(this.c, dVar)) {
            this.c = dVar;
            this.f8665a.onSubscribe(this);
        }
    }

    public final void onNext(T t) {
        if (!this.f) {
            if (t == null) {
                this.c.cancel();
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            synchronized (this) {
                if (!this.f) {
                    if (this.d) {
                        a<Object> aVar = this.e;
                        if (aVar == null) {
                            aVar = new a<>(4);
                            this.e = aVar;
                        }
                        aVar.add(NotificationLite.next(t));
                        return;
                    }
                    this.d = true;
                    this.f8665a.onNext(t);
                    a();
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0031, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0038, code lost:
        if (r1 == false) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x003a, code lost:
        io.reactivex.g.a.onError(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x003d, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x003e, code lost:
        r2.f8665a.onError(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0043, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onError(java.lang.Throwable r3) {
        /*
            r2 = this;
            boolean r0 = r2.f
            if (r0 == 0) goto L_0x0008
            io.reactivex.g.a.onError(r3)
            return
        L_0x0008:
            monitor-enter(r2)
            boolean r0 = r2.f     // Catch:{ all -> 0x0044 }
            r1 = 1
            if (r0 == 0) goto L_0x000f
            goto L_0x0037
        L_0x000f:
            boolean r0 = r2.d     // Catch:{ all -> 0x0044 }
            if (r0 == 0) goto L_0x0032
            r2.f = r1     // Catch:{ all -> 0x0044 }
            io.reactivex.internal.util.a<java.lang.Object> r0 = r2.e     // Catch:{ all -> 0x0044 }
            if (r0 != 0) goto L_0x0021
            io.reactivex.internal.util.a r0 = new io.reactivex.internal.util.a     // Catch:{ all -> 0x0044 }
            r1 = 4
            r0.<init>(r1)     // Catch:{ all -> 0x0044 }
            r2.e = r0     // Catch:{ all -> 0x0044 }
        L_0x0021:
            java.lang.Object r3 = io.reactivex.internal.util.NotificationLite.error(r3)     // Catch:{ all -> 0x0044 }
            boolean r1 = r2.f8666b     // Catch:{ all -> 0x0044 }
            if (r1 == 0) goto L_0x002d
            r0.add(r3)     // Catch:{ all -> 0x0044 }
            goto L_0x0030
        L_0x002d:
            r0.setFirst(r3)     // Catch:{ all -> 0x0044 }
        L_0x0030:
            monitor-exit(r2)     // Catch:{ all -> 0x0044 }
            return
        L_0x0032:
            r2.f = r1     // Catch:{ all -> 0x0044 }
            r2.d = r1     // Catch:{ all -> 0x0044 }
            r1 = 0
        L_0x0037:
            monitor-exit(r2)     // Catch:{ all -> 0x0044 }
            if (r1 == 0) goto L_0x003e
            io.reactivex.g.a.onError(r3)
            return
        L_0x003e:
            org.b.c<? super T> r0 = r2.f8665a
            r0.onError(r3)
            return
        L_0x0044:
            r3 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0044 }
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.k.d.onError(java.lang.Throwable):void");
    }

    public final void onComplete() {
        if (!this.f) {
            synchronized (this) {
                if (!this.f) {
                    if (this.d) {
                        a<Object> aVar = this.e;
                        if (aVar == null) {
                            aVar = new a<>(4);
                            this.e = aVar;
                        }
                        aVar.add(NotificationLite.complete());
                        return;
                    }
                    this.f = true;
                    this.d = true;
                    this.f8665a.onComplete();
                }
            }
        }
    }

    private void a() {
        a<Object> aVar;
        do {
            synchronized (this) {
                aVar = this.e;
                if (aVar == null) {
                    this.d = false;
                    return;
                }
                this.e = null;
            }
        } while (!aVar.accept((c<? super U>) this.f8665a));
    }

    public final void request(long j) {
        this.c.request(j);
    }

    public final void cancel() {
        this.c.cancel();
    }
}
