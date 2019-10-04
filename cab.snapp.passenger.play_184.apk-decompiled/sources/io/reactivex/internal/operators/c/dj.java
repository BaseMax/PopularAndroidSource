package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class dj<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f7417b;
    final TimeUnit c;
    final ah d;
    final int e;
    final boolean f;

    static final class a<T> extends AtomicInteger implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7418a;

        /* renamed from: b  reason: collision with root package name */
        final long f7419b;
        final TimeUnit c;
        final ah d;
        final io.reactivex.internal.d.c<Object> e;
        final boolean f;
        c g;
        volatile boolean h;
        volatile boolean i;
        Throwable j;

        a(ag<? super T> agVar, long j2, TimeUnit timeUnit, ah ahVar, int i2, boolean z) {
            this.f7418a = agVar;
            this.f7419b = j2;
            this.c = timeUnit;
            this.d = ahVar;
            this.e = new io.reactivex.internal.d.c<>(i2);
            this.f = z;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.g, cVar)) {
                this.g = cVar;
                this.f7418a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.e.offer(Long.valueOf(this.d.now(this.c)), t);
            a();
        }

        public final void onError(Throwable th) {
            this.j = th;
            this.i = true;
            a();
        }

        public final void onComplete() {
            this.i = true;
            a();
        }

        public final void dispose() {
            if (!this.h) {
                this.h = true;
                this.g.dispose();
                if (getAndIncrement() == 0) {
                    this.e.clear();
                }
            }
        }

        public final boolean isDisposed() {
            return this.h;
        }

        private void a() {
            if (getAndIncrement() == 0) {
                ag<? super T> agVar = this.f7418a;
                io.reactivex.internal.d.c<Object> cVar = this.e;
                boolean z = this.f;
                TimeUnit timeUnit = this.c;
                ah ahVar = this.d;
                long j2 = this.f7419b;
                int i2 = 1;
                while (!this.h) {
                    boolean z2 = this.i;
                    Long l = (Long) cVar.peek();
                    boolean z3 = l == null;
                    long now = ahVar.now(timeUnit);
                    if (!z3 && l.longValue() > now - j2) {
                        z3 = true;
                    }
                    if (z2) {
                        if (!z) {
                            Throwable th = this.j;
                            if (th != null) {
                                this.e.clear();
                                agVar.onError(th);
                                return;
                            } else if (z3) {
                                agVar.onComplete();
                                return;
                            }
                        } else if (z3) {
                            Throwable th2 = this.j;
                            if (th2 != null) {
                                agVar.onError(th2);
                                return;
                            } else {
                                agVar.onComplete();
                                return;
                            }
                        }
                    }
                    if (!z3) {
                        cVar.poll();
                        agVar.onNext(cVar.poll());
                    } else {
                        i2 = addAndGet(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    }
                }
                this.e.clear();
            }
        }
    }

    public dj(ae<T> aeVar, long j, TimeUnit timeUnit, ah ahVar, int i, boolean z) {
        super(aeVar);
        this.f7417b = j;
        this.c = timeUnit;
        this.d = ahVar;
        this.e = i;
        this.f = z;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        ae aeVar = this.f7091a;
        a aVar = new a(agVar, this.f7417b, this.c, this.d, this.e, this.f);
        aeVar.subscribe(aVar);
    }
}
