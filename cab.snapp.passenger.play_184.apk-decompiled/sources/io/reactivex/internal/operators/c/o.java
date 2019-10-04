package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.c.u;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.observers.d;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

public final class o<T, U extends Collection<? super T>, B> extends a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends ae<B>> f7594b;
    final Callable<U> c;

    static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.observers.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, U, B> f7595a;

        /* renamed from: b  reason: collision with root package name */
        boolean f7596b;

        a(b<T, U, B> bVar) {
            this.f7595a = bVar;
        }

        public final void onNext(B b2) {
            if (!this.f7596b) {
                this.f7596b = true;
                dispose();
                this.f7595a.a();
            }
        }

        public final void onError(Throwable th) {
            if (this.f7596b) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.f7596b = true;
            this.f7595a.onError(th);
        }

        public final void onComplete() {
            if (!this.f7596b) {
                this.f7596b = true;
                this.f7595a.a();
            }
        }
    }

    static final class b<T, U extends Collection<? super T>, B> extends u<T, U, U> implements ag<T>, c {
        final Callable<U> e;
        final Callable<? extends ae<B>> f;
        c g;
        final AtomicReference<c> h = new AtomicReference<>();
        U i;

        b(ag<? super U> agVar, Callable<U> callable, Callable<? extends ae<B>> callable2) {
            super(agVar, new io.reactivex.internal.d.a());
            this.e = callable;
            this.f = callable2;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.g, cVar)) {
                this.g = cVar;
                ag agVar = this.f6788a;
                try {
                    this.i = (Collection) io.reactivex.internal.a.b.requireNonNull(this.e.call(), "The buffer supplied is null");
                    try {
                        ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f.call(), "The boundary ObservableSource supplied is null");
                        a aVar = new a(this);
                        this.h.set(aVar);
                        agVar.onSubscribe(this);
                        if (!this.cancelled) {
                            aeVar.subscribe(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        this.cancelled = true;
                        cVar.dispose();
                        EmptyDisposable.error(th, (ag<?>) agVar);
                    }
                } catch (Throwable th2) {
                    io.reactivex.c.b.throwIfFatal(th2);
                    this.cancelled = true;
                    cVar.dispose();
                    EmptyDisposable.error(th2, (ag<?>) agVar);
                }
            }
        }

        public final void onNext(T t) {
            synchronized (this) {
                U u = this.i;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        public final void onError(Throwable th) {
            dispose();
            this.f6788a.onError(th);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:10:0x0019, code lost:
            io.reactivex.internal.util.o.drainLoop(r3.queue, r3.f6788a, false, r3, r3);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:11:0x0021, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:8:0x000b, code lost:
            r3.queue.offer(r0);
            r3.f6789b = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:9:0x0017, code lost:
            if (enter() == false) goto L_0x0021;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onComplete() {
            /*
                r3 = this;
                monitor-enter(r3)
                U r0 = r3.i     // Catch:{ all -> 0x0022 }
                if (r0 != 0) goto L_0x0007
                monitor-exit(r3)     // Catch:{ all -> 0x0022 }
                return
            L_0x0007:
                r1 = 0
                r3.i = r1     // Catch:{ all -> 0x0022 }
                monitor-exit(r3)     // Catch:{ all -> 0x0022 }
                io.reactivex.internal.b.i r1 = r3.queue
                r1.offer(r0)
                r0 = 1
                r3.f6789b = r0
                boolean r0 = r3.enter()
                if (r0 == 0) goto L_0x0021
                io.reactivex.internal.b.i r0 = r3.queue
                io.reactivex.ag r1 = r3.f6788a
                r2 = 0
                io.reactivex.internal.util.o.drainLoop(r0, r1, r2, r3, r3)
            L_0x0021:
                return
            L_0x0022:
                r0 = move-exception
                monitor-exit(r3)     // Catch:{ all -> 0x0022 }
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.o.b.onComplete():void");
        }

        public final void dispose() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.g.dispose();
                DisposableHelper.dispose(this.h);
                if (enter()) {
                    this.queue.clear();
                }
            }
        }

        public final boolean isDisposed() {
            return this.cancelled;
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
                java.util.concurrent.Callable<U> r0 = r4.e     // Catch:{ all -> 0x0050 }
                java.lang.Object r0 = r0.call()     // Catch:{ all -> 0x0050 }
                java.lang.String r1 = "The buffer supplied is null"
                java.lang.Object r0 = io.reactivex.internal.a.b.requireNonNull(r0, (java.lang.String) r1)     // Catch:{ all -> 0x0050 }
                java.util.Collection r0 = (java.util.Collection) r0     // Catch:{ all -> 0x0050 }
                java.util.concurrent.Callable<? extends io.reactivex.ae<B>> r1 = r4.f     // Catch:{ all -> 0x003e }
                java.lang.Object r1 = r1.call()     // Catch:{ all -> 0x003e }
                java.lang.String r2 = "The boundary ObservableSource supplied is null"
                java.lang.Object r1 = io.reactivex.internal.a.b.requireNonNull(r1, (java.lang.String) r2)     // Catch:{ all -> 0x003e }
                io.reactivex.ae r1 = (io.reactivex.ae) r1     // Catch:{ all -> 0x003e }
                io.reactivex.internal.operators.c.o$a r2 = new io.reactivex.internal.operators.c.o$a
                r2.<init>(r4)
                java.util.concurrent.atomic.AtomicReference<io.reactivex.b.c> r3 = r4.h
                boolean r3 = io.reactivex.internal.disposables.DisposableHelper.replace(r3, r2)
                if (r3 == 0) goto L_0x003d
                monitor-enter(r4)
                U r3 = r4.i     // Catch:{ all -> 0x003a }
                if (r3 != 0) goto L_0x0030
                monitor-exit(r4)     // Catch:{ all -> 0x003a }
                return
            L_0x0030:
                r4.i = r0     // Catch:{ all -> 0x003a }
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
                io.reactivex.b.c r1 = r4.g
                r1.dispose()
                io.reactivex.ag r1 = r4.f6788a
                r1.onError(r0)
                return
            L_0x0050:
                r0 = move-exception
                io.reactivex.c.b.throwIfFatal(r0)
                r4.dispose()
                io.reactivex.ag r1 = r4.f6788a
                r1.onError(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.o.b.a():void");
        }

        public final void accept(ag<? super U> agVar, U u) {
            this.f6788a.onNext(u);
        }
    }

    public o(ae<T> aeVar, Callable<? extends ae<B>> callable, Callable<U> callable2) {
        super(aeVar);
        this.f7594b = callable;
        this.c = callable2;
    }

    public final void subscribeActual(ag<? super U> agVar) {
        this.f7091a.subscribe(new b(new d(agVar), this.c, this.f7594b));
    }
}
