package io.reactivex.internal.operators.flowable;

import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.f.n;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class o<T, U extends Collection<? super T>, B> extends a<T, U> {
    final Callable<? extends org.b.b<B>> c;
    final Callable<U> d;

    static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.k.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, U, B> f8364a;

        /* renamed from: b  reason: collision with root package name */
        boolean f8365b;

        a(b<T, U, B> bVar) {
            this.f8364a = bVar;
        }

        public final void onNext(B b2) {
            if (!this.f8365b) {
                this.f8365b = true;
                dispose();
                this.f8364a.a();
            }
        }

        public final void onError(Throwable th) {
            if (this.f8365b) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.f8365b = true;
            this.f8364a.onError(th);
        }

        public final void onComplete() {
            if (!this.f8365b) {
                this.f8365b = true;
                this.f8364a.a();
            }
        }
    }

    static final class b<T, U extends Collection<? super T>, B> extends n<T, U, U> implements c, io.reactivex.o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final Callable<U> f8366a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<? extends org.b.b<B>> f8367b;
        d c;
        final AtomicReference<c> d = new AtomicReference<>();
        U e;

        b(org.b.c<? super U> cVar, Callable<U> callable, Callable<? extends org.b.b<B>> callable2) {
            super(cVar, new io.reactivex.internal.d.a());
            this.f8366a = callable;
            this.f8367b = callable2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                org.b.c cVar = this.n;
                try {
                    this.e = (Collection) io.reactivex.internal.a.b.requireNonNull(this.f8366a.call(), "The buffer supplied is null");
                    try {
                        org.b.b bVar = (org.b.b) io.reactivex.internal.a.b.requireNonNull(this.f8367b.call(), "The boundary publisher supplied is null");
                        a aVar = new a(this);
                        this.d.set(aVar);
                        cVar.onSubscribe(this);
                        if (!this.cancelled) {
                            dVar.request(Long.MAX_VALUE);
                            bVar.subscribe(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        this.cancelled = true;
                        dVar.cancel();
                        EmptySubscription.error(th, cVar);
                    }
                } catch (Throwable th2) {
                    io.reactivex.c.b.throwIfFatal(th2);
                    this.cancelled = true;
                    dVar.cancel();
                    EmptySubscription.error(th2, cVar);
                }
            }
        }

        public final void onNext(T t) {
            synchronized (this) {
                U u = this.e;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        public final void onError(Throwable th) {
            cancel();
            this.n.onError(th);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:10:0x0019, code lost:
            io.reactivex.internal.util.o.drainMaxLoop(r3.queue, r3.n, false, r3, r3);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:11:0x0021, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:8:0x000b, code lost:
            r3.queue.offer(r0);
            r3.o = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:9:0x0017, code lost:
            if (enter() == false) goto L_0x0021;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onComplete() {
            /*
                r3 = this;
                monitor-enter(r3)
                U r0 = r3.e     // Catch:{ all -> 0x0022 }
                if (r0 != 0) goto L_0x0007
                monitor-exit(r3)     // Catch:{ all -> 0x0022 }
                return
            L_0x0007:
                r1 = 0
                r3.e = r1     // Catch:{ all -> 0x0022 }
                monitor-exit(r3)     // Catch:{ all -> 0x0022 }
                io.reactivex.internal.b.i r1 = r3.queue
                r1.offer(r0)
                r0 = 1
                r3.o = r0
                boolean r0 = r3.enter()
                if (r0 == 0) goto L_0x0021
                io.reactivex.internal.b.i r0 = r3.queue
                org.b.c r1 = r3.n
                r2 = 0
                io.reactivex.internal.util.o.drainMaxLoop(r0, r1, r2, r3, r3)
            L_0x0021:
                return
            L_0x0022:
                r0 = move-exception
                monitor-exit(r3)     // Catch:{ all -> 0x0022 }
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.o.b.onComplete():void");
        }

        public final void request(long j) {
            requested(j);
        }

        public final void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.c.cancel();
                b();
                if (enter()) {
                    this.queue.clear();
                }
            }
        }

        private void b() {
            DisposableHelper.dispose(this.d);
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0033, code lost:
            r1.subscribe(r2);
            a(r3, r4);
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a() {
            /*
                r4 = this;
                java.util.concurrent.Callable<U> r0 = r4.f8366a     // Catch:{ all -> 0x0050 }
                java.lang.Object r0 = r0.call()     // Catch:{ all -> 0x0050 }
                java.lang.String r1 = "The buffer supplied is null"
                java.lang.Object r0 = io.reactivex.internal.a.b.requireNonNull(r0, (java.lang.String) r1)     // Catch:{ all -> 0x0050 }
                java.util.Collection r0 = (java.util.Collection) r0     // Catch:{ all -> 0x0050 }
                java.util.concurrent.Callable<? extends org.b.b<B>> r1 = r4.f8367b     // Catch:{ all -> 0x003e }
                java.lang.Object r1 = r1.call()     // Catch:{ all -> 0x003e }
                java.lang.String r2 = "The boundary publisher supplied is null"
                java.lang.Object r1 = io.reactivex.internal.a.b.requireNonNull(r1, (java.lang.String) r2)     // Catch:{ all -> 0x003e }
                org.b.b r1 = (org.b.b) r1     // Catch:{ all -> 0x003e }
                io.reactivex.internal.operators.flowable.o$a r2 = new io.reactivex.internal.operators.flowable.o$a
                r2.<init>(r4)
                java.util.concurrent.atomic.AtomicReference<io.reactivex.b.c> r3 = r4.d
                boolean r3 = io.reactivex.internal.disposables.DisposableHelper.replace(r3, r2)
                if (r3 == 0) goto L_0x003d
                monitor-enter(r4)
                U r3 = r4.e     // Catch:{ all -> 0x003a }
                if (r3 != 0) goto L_0x0030
                monitor-exit(r4)     // Catch:{ all -> 0x003a }
                return
            L_0x0030:
                r4.e = r0     // Catch:{ all -> 0x003a }
                monitor-exit(r4)     // Catch:{ all -> 0x003a }
                r1.subscribe(r2)
                r4.a(r3, r4)
                goto L_0x003d
            L_0x003a:
                r0 = move-exception
                monitor-exit(r4)     // Catch:{ all -> 0x003a }
                throw r0
            L_0x003d:
                return
            L_0x003e:
                r0 = move-exception
                io.reactivex.c.b.throwIfFatal(r0)
                r1 = 1
                r4.cancelled = r1
                org.b.d r1 = r4.c
                r1.cancel()
                org.b.c r1 = r4.n
                r1.onError(r0)
                return
            L_0x0050:
                r0 = move-exception
                io.reactivex.c.b.throwIfFatal(r0)
                r4.cancel()
                org.b.c r1 = r4.n
                r1.onError(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.o.b.a():void");
        }

        public final void dispose() {
            this.c.cancel();
            b();
        }

        public final boolean isDisposed() {
            return this.d.get() == DisposableHelper.DISPOSED;
        }

        public final boolean accept(org.b.c<? super U> cVar, U u) {
            this.n.onNext(u);
            return true;
        }
    }

    public o(j<T> jVar, Callable<? extends org.b.b<B>> callable, Callable<U> callable2) {
        super(jVar);
        this.c = callable;
        this.d = callable2;
    }

    public final void subscribeActual(org.b.c<? super U> cVar) {
        this.f7923b.subscribe(new b(new io.reactivex.k.d(cVar), this.d, this.c));
    }
}
