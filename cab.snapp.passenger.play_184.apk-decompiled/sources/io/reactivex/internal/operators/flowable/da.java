package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.e.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.e;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class da<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.d.a<T> f8146b;
    final int c;
    final long d;
    final TimeUnit e;
    final ah f;
    a g;

    static final class a extends AtomicReference<c> implements g<c>, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final da<?> f8147a;

        /* renamed from: b  reason: collision with root package name */
        c f8148b;
        long c;
        boolean d;
        boolean e;

        a(da<?> daVar) {
            this.f8147a = daVar;
        }

        public final void run() {
            this.f8147a.b(this);
        }

        public final void accept(c cVar) throws Exception {
            DisposableHelper.replace(this, cVar);
            synchronized (this.f8147a) {
                if (this.e) {
                    ((e) this.f8147a.f8146b).resetIf(cVar);
                }
            }
        }
    }

    static final class b<T> extends AtomicBoolean implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f8149a;

        /* renamed from: b  reason: collision with root package name */
        final da<T> f8150b;
        final a c;
        d d;

        b(org.b.c<? super T> cVar, da<T> daVar, a aVar) {
            this.f8149a = cVar;
            this.f8150b = daVar;
            this.c = aVar;
        }

        public final void onNext(T t) {
            this.f8149a.onNext(t);
        }

        public final void onError(Throwable th) {
            if (compareAndSet(false, true)) {
                this.f8150b.a(this.c);
                this.f8149a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (compareAndSet(false, true)) {
                this.f8150b.a(this.c);
                this.f8149a.onComplete();
            }
        }

        public final void request(long j) {
            this.d.request(j);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:22:0x0040, code lost:
            r2.replace(r0.f.scheduleDirect(r1, r0.d, r0.e));
         */
        /* JADX WARNING: Code restructure failed: missing block: B:27:0x0051, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void cancel() {
            /*
                r7 = this;
                org.b.d r0 = r7.d
                r0.cancel()
                r0 = 0
                r1 = 1
                boolean r0 = r7.compareAndSet(r0, r1)
                if (r0 == 0) goto L_0x0055
                io.reactivex.internal.operators.flowable.da<T> r0 = r7.f8150b
                io.reactivex.internal.operators.flowable.da$a r1 = r7.c
                monitor-enter(r0)
                io.reactivex.internal.operators.flowable.da$a r2 = r0.g     // Catch:{ all -> 0x0052 }
                if (r2 == 0) goto L_0x0050
                io.reactivex.internal.operators.flowable.da$a r2 = r0.g     // Catch:{ all -> 0x0052 }
                if (r2 == r1) goto L_0x001b
                goto L_0x0050
            L_0x001b:
                long r2 = r1.c     // Catch:{ all -> 0x0052 }
                r4 = 1
                long r2 = r2 - r4
                r1.c = r2     // Catch:{ all -> 0x0052 }
                r4 = 0
                int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r6 != 0) goto L_0x004e
                boolean r2 = r1.d     // Catch:{ all -> 0x0052 }
                if (r2 != 0) goto L_0x002d
                goto L_0x004e
            L_0x002d:
                long r2 = r0.d     // Catch:{ all -> 0x0052 }
                int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r6 != 0) goto L_0x0038
                r0.b(r1)     // Catch:{ all -> 0x0052 }
                monitor-exit(r0)     // Catch:{ all -> 0x0052 }
                return
            L_0x0038:
                io.reactivex.internal.disposables.f r2 = new io.reactivex.internal.disposables.f     // Catch:{ all -> 0x0052 }
                r2.<init>()     // Catch:{ all -> 0x0052 }
                r1.f8148b = r2     // Catch:{ all -> 0x0052 }
                monitor-exit(r0)     // Catch:{ all -> 0x0052 }
                io.reactivex.ah r3 = r0.f
                long r4 = r0.d
                java.util.concurrent.TimeUnit r0 = r0.e
                io.reactivex.b.c r0 = r3.scheduleDirect(r1, r4, r0)
                r2.replace(r0)
                goto L_0x0055
            L_0x004e:
                monitor-exit(r0)     // Catch:{ all -> 0x0052 }
                return
            L_0x0050:
                monitor-exit(r0)     // Catch:{ all -> 0x0052 }
                return
            L_0x0052:
                r1 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x0052 }
                throw r1
            L_0x0055:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.da.b.cancel():void");
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.d, dVar)) {
                this.d = dVar;
                this.f8149a.onSubscribe(this);
            }
        }
    }

    public da(io.reactivex.d.a<T> aVar) {
        this(aVar, 1, 0, TimeUnit.NANOSECONDS, null);
    }

    public da(io.reactivex.d.a<T> aVar, int i, long j, TimeUnit timeUnit, ah ahVar) {
        this.f8146b = aVar;
        this.c = i;
        this.d = j;
        this.e = timeUnit;
        this.f = ahVar;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        a aVar;
        boolean z;
        synchronized (this) {
            aVar = this.g;
            if (aVar == null) {
                aVar = new a(this);
                this.g = aVar;
            }
            long j = aVar.c;
            if (j == 0 && aVar.f8148b != null) {
                aVar.f8148b.dispose();
            }
            long j2 = j + 1;
            aVar.c = j2;
            z = true;
            if (aVar.d || j2 != ((long) this.c)) {
                z = false;
            } else {
                aVar.d = true;
            }
        }
        this.f8146b.subscribe(new b(cVar, this, aVar));
        if (z) {
            this.f8146b.connect(aVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(a aVar) {
        synchronized (this) {
            if (this.g != null && this.g == aVar) {
                this.g = null;
                if (aVar.f8148b != null) {
                    aVar.f8148b.dispose();
                }
            }
            long j = aVar.c - 1;
            aVar.c = j;
            if (j == 0) {
                if (this.f8146b instanceof c) {
                    ((c) this.f8146b).dispose();
                } else if (this.f8146b instanceof e) {
                    ((e) this.f8146b).resetIf((c) aVar.get());
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(a aVar) {
        synchronized (this) {
            if (aVar.c == 0 && aVar == this.g) {
                this.g = null;
                c cVar = (c) aVar.get();
                DisposableHelper.dispose(aVar);
                if (this.f8146b instanceof c) {
                    ((c) this.f8146b).dispose();
                } else if (this.f8146b instanceof e) {
                    if (cVar == null) {
                        aVar.e = true;
                    } else {
                        ((e) this.f8146b).resetIf(cVar);
                    }
                }
            }
        }
    }
}
