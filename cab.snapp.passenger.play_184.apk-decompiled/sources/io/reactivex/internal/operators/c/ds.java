package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public final class ds<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f7449b;
    final long c;
    final TimeUnit d;
    final ah e;
    final int f;
    final boolean g;

    static final class a<T> extends AtomicBoolean implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7450a;

        /* renamed from: b  reason: collision with root package name */
        final long f7451b;
        final long c;
        final TimeUnit d;
        final ah e;
        final io.reactivex.internal.d.c<Object> f;
        final boolean g;
        c h;
        volatile boolean i;
        Throwable j;

        a(ag<? super T> agVar, long j2, long j3, TimeUnit timeUnit, ah ahVar, int i2, boolean z) {
            this.f7450a = agVar;
            this.f7451b = j2;
            this.c = j3;
            this.d = timeUnit;
            this.e = ahVar;
            this.f = new io.reactivex.internal.d.c<>(i2);
            this.g = z;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.h, cVar)) {
                this.h = cVar;
                this.f7450a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            io.reactivex.internal.d.c<Object> cVar = this.f;
            long now = this.e.now(this.d);
            long j2 = this.c;
            long j3 = this.f7451b;
            boolean z = j3 == Long.MAX_VALUE;
            cVar.offer(Long.valueOf(now), t);
            while (!cVar.isEmpty()) {
                if (((Long) cVar.peek()).longValue() <= now - j2 || (!z && ((long) (cVar.size() >> 1)) > j3)) {
                    cVar.poll();
                    cVar.poll();
                } else {
                    return;
                }
            }
        }

        public final void onError(Throwable th) {
            this.j = th;
            a();
        }

        public final void onComplete() {
            a();
        }

        public final void dispose() {
            if (!this.i) {
                this.i = true;
                this.h.dispose();
                if (compareAndSet(false, true)) {
                    this.f.clear();
                }
            }
        }

        public final boolean isDisposed() {
            return this.i;
        }

        private void a() {
            if (compareAndSet(false, true)) {
                ag<? super T> agVar = this.f7450a;
                io.reactivex.internal.d.c<Object> cVar = this.f;
                boolean z = this.g;
                while (!this.i) {
                    if (!z) {
                        Throwable th = this.j;
                        if (th != null) {
                            cVar.clear();
                            agVar.onError(th);
                            return;
                        }
                    }
                    Object poll = cVar.poll();
                    if (poll == null) {
                        Throwable th2 = this.j;
                        if (th2 != null) {
                            agVar.onError(th2);
                            return;
                        } else {
                            agVar.onComplete();
                            return;
                        }
                    } else {
                        Object poll2 = cVar.poll();
                        if (((Long) poll).longValue() >= this.e.now(this.d) - this.c) {
                            agVar.onNext(poll2);
                        }
                    }
                }
                cVar.clear();
            }
        }
    }

    public ds(ae<T> aeVar, long j, long j2, TimeUnit timeUnit, ah ahVar, int i, boolean z) {
        super(aeVar);
        this.f7449b = j;
        this.c = j2;
        this.d = timeUnit;
        this.e = ahVar;
        this.f = i;
        this.g = z;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        ae aeVar = this.f7091a;
        a aVar = new a(agVar, this.f7449b, this.c, this.d, this.e, this.f, this.g);
        aeVar.subscribe(aVar);
    }
}
