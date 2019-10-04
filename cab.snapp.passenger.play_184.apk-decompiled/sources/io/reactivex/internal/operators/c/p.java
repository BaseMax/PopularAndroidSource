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

public final class p<T, U extends Collection<? super T>, B> extends a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final ae<B> f7597b;
    final Callable<U> c;

    static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.observers.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, U, B> f7598a;

        a(b<T, U, B> bVar) {
            this.f7598a = bVar;
        }

        public final void onNext(B b2) {
            this.f7598a.a();
        }

        public final void onError(Throwable th) {
            this.f7598a.onError(th);
        }

        public final void onComplete() {
            this.f7598a.onComplete();
        }
    }

    static final class b<T, U extends Collection<? super T>, B> extends u<T, U, U> implements ag<T>, c {
        final Callable<U> e;
        final ae<B> f;
        c g;
        c h;
        U i;

        b(ag<? super U> agVar, Callable<U> callable, ae<B> aeVar) {
            super(agVar, new io.reactivex.internal.d.a());
            this.e = callable;
            this.f = aeVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.g, cVar)) {
                this.g = cVar;
                try {
                    this.i = (Collection) io.reactivex.internal.a.b.requireNonNull(this.e.call(), "The buffer supplied is null");
                    a aVar = new a(this);
                    this.h = aVar;
                    this.f6788a.onSubscribe(this);
                    if (!this.cancelled) {
                        this.f.subscribe(aVar);
                    }
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.cancelled = true;
                    cVar.dispose();
                    EmptyDisposable.error(th, (ag<?>) this.f6788a);
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.p.b.onComplete():void");
        }

        public final void dispose() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.h.dispose();
                this.g.dispose();
                if (enter()) {
                    this.queue.clear();
                }
            }
        }

        public final boolean isDisposed() {
            return this.cancelled;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            try {
                U u = (Collection) io.reactivex.internal.a.b.requireNonNull(this.e.call(), "The buffer supplied is null");
                synchronized (this) {
                    U u2 = this.i;
                    if (u2 != null) {
                        this.i = u;
                        a(u2, this);
                    }
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                dispose();
                this.f6788a.onError(th);
            }
        }

        public final void accept(ag<? super U> agVar, U u) {
            this.f6788a.onNext(u);
        }
    }

    public p(ae<T> aeVar, ae<B> aeVar2, Callable<U> callable) {
        super(aeVar);
        this.f7597b = aeVar2;
        this.c = callable;
    }

    public final void subscribeActual(ag<? super U> agVar) {
        this.f7091a.subscribe(new b(new d(agVar), this.c, this.f7597b));
    }
}
