package io.reactivex.internal.operators.flowable;

import io.reactivex.b.c;
import io.reactivex.internal.f.n;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.Collection;
import java.util.concurrent.Callable;
import org.b.d;

public final class p<T, U extends Collection<? super T>, B> extends a<T, U> {
    final org.b.b<B> c;
    final Callable<U> d;

    static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.k.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, U, B> f8368a;

        a(b<T, U, B> bVar) {
            this.f8368a = bVar;
        }

        public final void onNext(B b2) {
            this.f8368a.a();
        }

        public final void onError(Throwable th) {
            this.f8368a.onError(th);
        }

        public final void onComplete() {
            this.f8368a.onComplete();
        }
    }

    static final class b<T, U extends Collection<? super T>, B> extends n<T, U, U> implements c, o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final Callable<U> f8369a;

        /* renamed from: b  reason: collision with root package name */
        final org.b.b<B> f8370b;
        d c;
        c d;
        U e;

        b(org.b.c<? super U> cVar, Callable<U> callable, org.b.b<B> bVar) {
            super(cVar, new io.reactivex.internal.d.a());
            this.f8369a = callable;
            this.f8370b = bVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                try {
                    this.e = (Collection) io.reactivex.internal.a.b.requireNonNull(this.f8369a.call(), "The buffer supplied is null");
                    a aVar = new a(this);
                    this.d = aVar;
                    this.n.onSubscribe(this);
                    if (!this.cancelled) {
                        dVar.request(Long.MAX_VALUE);
                        this.f8370b.subscribe(aVar);
                    }
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.cancelled = true;
                    dVar.cancel();
                    EmptySubscription.error(th, this.n);
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.p.b.onComplete():void");
        }

        public final void request(long j) {
            requested(j);
        }

        public final void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.d.dispose();
                this.c.cancel();
                if (enter()) {
                    this.queue.clear();
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            try {
                U u = (Collection) io.reactivex.internal.a.b.requireNonNull(this.f8369a.call(), "The buffer supplied is null");
                synchronized (this) {
                    U u2 = this.e;
                    if (u2 != null) {
                        this.e = u;
                        a(u2, this);
                    }
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                cancel();
                this.n.onError(th);
            }
        }

        public final void dispose() {
            cancel();
        }

        public final boolean isDisposed() {
            return this.cancelled;
        }

        public final boolean accept(org.b.c<? super U> cVar, U u) {
            this.n.onNext(u);
            return true;
        }
    }

    public p(j<T> jVar, org.b.b<B> bVar, Callable<U> callable) {
        super(jVar);
        this.c = bVar;
        this.d = callable;
    }

    public final void subscribeActual(org.b.c<? super U> cVar) {
        this.f7923b.subscribe(new b(new io.reactivex.k.d(cVar), this.d, this.c));
    }
}
