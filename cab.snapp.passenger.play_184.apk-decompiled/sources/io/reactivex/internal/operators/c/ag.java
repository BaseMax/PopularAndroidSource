package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ah;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.d;
import java.util.concurrent.TimeUnit;

public final class ag<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f7112b;
    final TimeUnit c;
    final ah d;
    final boolean e;

    static final class a<T> implements io.reactivex.ag<T>, io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.ag<? super T> f7113a;

        /* renamed from: b  reason: collision with root package name */
        final long f7114b;
        final TimeUnit c;
        final ah.c d;
        final boolean e;
        io.reactivex.b.c f;

        /* renamed from: io.reactivex.internal.operators.c.ag$a$a  reason: collision with other inner class name */
        final class C0156a implements Runnable {
            C0156a() {
            }

            public final void run() {
                try {
                    a.this.f7113a.onComplete();
                } finally {
                    a.this.d.dispose();
                }
            }
        }

        final class b implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            private final Throwable f7117b;

            b(Throwable th) {
                this.f7117b = th;
            }

            public final void run() {
                try {
                    a.this.f7113a.onError(this.f7117b);
                } finally {
                    a.this.d.dispose();
                }
            }
        }

        final class c implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            private final T f7119b;

            c(T t) {
                this.f7119b = t;
            }

            public final void run() {
                a.this.f7113a.onNext(this.f7119b);
            }
        }

        a(io.reactivex.ag<? super T> agVar, long j, TimeUnit timeUnit, ah.c cVar, boolean z) {
            this.f7113a = agVar;
            this.f7114b = j;
            this.c = timeUnit;
            this.d = cVar;
            this.e = z;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.f, cVar)) {
                this.f = cVar;
                this.f7113a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.d.schedule(new c(t), this.f7114b, this.c);
        }

        public final void onError(Throwable th) {
            this.d.schedule(new b(th), this.e ? this.f7114b : 0, this.c);
        }

        public final void onComplete() {
            this.d.schedule(new C0156a(), this.f7114b, this.c);
        }

        public final void dispose() {
            this.f.dispose();
            this.d.dispose();
        }

        public final boolean isDisposed() {
            return this.d.isDisposed();
        }
    }

    public ag(ae<T> aeVar, long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        super(aeVar);
        this.f7112b = j;
        this.c = timeUnit;
        this.d = ahVar;
        this.e = z;
    }

    public final void subscribeActual(io.reactivex.ag<? super T> agVar) {
        d dVar = !this.e ? new d(agVar) : agVar;
        ah.c createWorker = this.d.createWorker();
        ae aeVar = this.f7091a;
        a aVar = new a(dVar, this.f7112b, this.c, createWorker, this.e);
        aeVar.subscribe(aVar);
    }
}
