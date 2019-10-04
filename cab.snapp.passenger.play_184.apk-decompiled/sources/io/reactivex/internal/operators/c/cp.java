package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.e.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.e;
import io.reactivex.z;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class cp<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.f.a<T> f7324a;

    /* renamed from: b  reason: collision with root package name */
    final int f7325b;
    final long c;
    final TimeUnit d;
    final ah e;
    a f;

    static final class a extends AtomicReference<c> implements g<c>, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final cp<?> f7326a;

        /* renamed from: b  reason: collision with root package name */
        c f7327b;
        long c;
        boolean d;
        boolean e;

        a(cp<?> cpVar) {
            this.f7326a = cpVar;
        }

        public final void run() {
            this.f7326a.b(this);
        }

        public final void accept(c cVar) throws Exception {
            DisposableHelper.replace(this, cVar);
            synchronized (this.f7326a) {
                if (this.e) {
                    ((e) this.f7326a.f7324a).resetIf(cVar);
                }
            }
        }
    }

    static final class b<T> extends AtomicBoolean implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7328a;

        /* renamed from: b  reason: collision with root package name */
        final cp<T> f7329b;
        final a c;
        c d;

        b(ag<? super T> agVar, cp<T> cpVar, a aVar) {
            this.f7328a = agVar;
            this.f7329b = cpVar;
            this.c = aVar;
        }

        public final void onNext(T t) {
            this.f7328a.onNext(t);
        }

        public final void onError(Throwable th) {
            if (compareAndSet(false, true)) {
                this.f7329b.a(this.c);
                this.f7328a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (compareAndSet(false, true)) {
                this.f7329b.a(this.c);
                this.f7328a.onComplete();
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:22:0x0040, code lost:
            r2.replace(r0.e.scheduleDirect(r1, r0.c, r0.d));
         */
        /* JADX WARNING: Code restructure failed: missing block: B:27:0x0051, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void dispose() {
            /*
                r7 = this;
                io.reactivex.b.c r0 = r7.d
                r0.dispose()
                r0 = 0
                r1 = 1
                boolean r0 = r7.compareAndSet(r0, r1)
                if (r0 == 0) goto L_0x0055
                io.reactivex.internal.operators.c.cp<T> r0 = r7.f7329b
                io.reactivex.internal.operators.c.cp$a r1 = r7.c
                monitor-enter(r0)
                io.reactivex.internal.operators.c.cp$a r2 = r0.f     // Catch:{ all -> 0x0052 }
                if (r2 == 0) goto L_0x0050
                io.reactivex.internal.operators.c.cp$a r2 = r0.f     // Catch:{ all -> 0x0052 }
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
                long r2 = r0.c     // Catch:{ all -> 0x0052 }
                int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r6 != 0) goto L_0x0038
                r0.b(r1)     // Catch:{ all -> 0x0052 }
                monitor-exit(r0)     // Catch:{ all -> 0x0052 }
                return
            L_0x0038:
                io.reactivex.internal.disposables.f r2 = new io.reactivex.internal.disposables.f     // Catch:{ all -> 0x0052 }
                r2.<init>()     // Catch:{ all -> 0x0052 }
                r1.f7327b = r2     // Catch:{ all -> 0x0052 }
                monitor-exit(r0)     // Catch:{ all -> 0x0052 }
                io.reactivex.ah r3 = r0.e
                long r4 = r0.c
                java.util.concurrent.TimeUnit r0 = r0.d
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.cp.b.dispose():void");
        }

        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.d, cVar)) {
                this.d = cVar;
                this.f7328a.onSubscribe(this);
            }
        }
    }

    public cp(io.reactivex.f.a<T> aVar) {
        this(aVar, 1, 0, TimeUnit.NANOSECONDS, null);
    }

    public cp(io.reactivex.f.a<T> aVar, int i, long j, TimeUnit timeUnit, ah ahVar) {
        this.f7324a = aVar;
        this.f7325b = i;
        this.c = j;
        this.d = timeUnit;
        this.e = ahVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        a aVar;
        boolean z;
        synchronized (this) {
            aVar = this.f;
            if (aVar == null) {
                aVar = new a(this);
                this.f = aVar;
            }
            long j = aVar.c;
            if (j == 0 && aVar.f7327b != null) {
                aVar.f7327b.dispose();
            }
            long j2 = j + 1;
            aVar.c = j2;
            z = true;
            if (aVar.d || j2 != ((long) this.f7325b)) {
                z = false;
            } else {
                aVar.d = true;
            }
        }
        this.f7324a.subscribe(new b(agVar, this, aVar));
        if (z) {
            this.f7324a.connect(aVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(a aVar) {
        synchronized (this) {
            if (this.f != null && this.f == aVar) {
                this.f = null;
                if (aVar.f7327b != null) {
                    aVar.f7327b.dispose();
                }
            }
            long j = aVar.c - 1;
            aVar.c = j;
            if (j == 0) {
                if (this.f7324a instanceof c) {
                    ((c) this.f7324a).dispose();
                } else if (this.f7324a instanceof e) {
                    ((e) this.f7324a).resetIf((c) aVar.get());
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(a aVar) {
        synchronized (this) {
            if (aVar.c == 0 && aVar == this.f) {
                this.f = null;
                c cVar = (c) aVar.get();
                DisposableHelper.dispose(aVar);
                if (this.f7324a instanceof c) {
                    ((c) this.f7324a).dispose();
                } else if (this.f7324a instanceof e) {
                    if (cVar == null) {
                        aVar.e = true;
                    } else {
                        ((e) this.f7324a).resetIf(cVar);
                    }
                }
            }
        }
    }
}
