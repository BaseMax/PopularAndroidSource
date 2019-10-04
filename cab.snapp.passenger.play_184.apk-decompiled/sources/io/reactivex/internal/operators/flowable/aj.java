package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.TimeUnit;
import org.b.c;
import org.b.d;

public final class aj<T> extends a<T, T> {
    final long c;
    final TimeUnit d;
    final ah e;
    final boolean f;

    static final class a<T> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f7950a;

        /* renamed from: b  reason: collision with root package name */
        final long f7951b;
        final TimeUnit c;
        final ah.c d;
        final boolean e;
        d f;

        /* renamed from: io.reactivex.internal.operators.flowable.aj$a$a  reason: collision with other inner class name */
        final class C0180a implements Runnable {
            C0180a() {
            }

            public final void run() {
                try {
                    a.this.f7950a.onComplete();
                } finally {
                    a.this.d.dispose();
                }
            }
        }

        final class b implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            private final Throwable f7954b;

            b(Throwable th) {
                this.f7954b = th;
            }

            public final void run() {
                try {
                    a.this.f7950a.onError(this.f7954b);
                } finally {
                    a.this.d.dispose();
                }
            }
        }

        final class c implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            private final T f7956b;

            c(T t) {
                this.f7956b = t;
            }

            public final void run() {
                a.this.f7950a.onNext(this.f7956b);
            }
        }

        a(org.b.c<? super T> cVar, long j, TimeUnit timeUnit, ah.c cVar2, boolean z) {
            this.f7950a = cVar;
            this.f7951b = j;
            this.c = timeUnit;
            this.d = cVar2;
            this.e = z;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f, dVar)) {
                this.f = dVar;
                this.f7950a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.d.schedule(new c(t), this.f7951b, this.c);
        }

        public final void onError(Throwable th) {
            this.d.schedule(new b(th), this.e ? this.f7951b : 0, this.c);
        }

        public final void onComplete() {
            this.d.schedule(new C0180a(), this.f7951b, this.c);
        }

        public final void request(long j) {
            this.f.request(j);
        }

        public final void cancel() {
            this.f.cancel();
            this.d.dispose();
        }
    }

    public aj(j<T> jVar, long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        super(jVar);
        this.c = j;
        this.d = timeUnit;
        this.e = ahVar;
        this.f = z;
    }

    public final void subscribeActual(c<? super T> cVar) {
        io.reactivex.k.d dVar = !this.f ? new io.reactivex.k.d(cVar) : cVar;
        ah.c createWorker = this.e.createWorker();
        j jVar = this.f7923b;
        a aVar = new a(dVar, this.c, this.d, createWorker, this.f);
        jVar.subscribe(aVar);
    }
}
