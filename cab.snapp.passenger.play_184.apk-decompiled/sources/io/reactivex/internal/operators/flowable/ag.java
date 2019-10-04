package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.b;
import org.b.c;
import org.b.d;

public final class ag<T, U> extends a<T, T> {
    final h<? super T, ? extends b<U>> c;

    static final class a<T, U> extends AtomicLong implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f7941a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends b<U>> f7942b;
        d c;
        final AtomicReference<io.reactivex.b.c> d = new AtomicReference<>();
        volatile long e;
        boolean f;

        /* renamed from: io.reactivex.internal.operators.flowable.ag$a$a  reason: collision with other inner class name */
        static final class C0179a<T, U> extends io.reactivex.k.b<U> {

            /* renamed from: a  reason: collision with root package name */
            final a<T, U> f7943a;

            /* renamed from: b  reason: collision with root package name */
            final long f7944b;
            final T c;
            boolean d;
            final AtomicBoolean e = new AtomicBoolean();

            C0179a(a<T, U> aVar, long j, T t) {
                this.f7943a = aVar;
                this.f7944b = j;
                this.c = t;
            }

            public final void onNext(U u) {
                if (!this.d) {
                    this.d = true;
                    dispose();
                    a();
                }
            }

            /* access modifiers changed from: package-private */
            public final void a() {
                if (this.e.compareAndSet(false, true)) {
                    this.f7943a.a(this.f7944b, this.c);
                }
            }

            public final void onError(Throwable th) {
                if (this.d) {
                    io.reactivex.g.a.onError(th);
                    return;
                }
                this.d = true;
                this.f7943a.onError(th);
            }

            public final void onComplete() {
                if (!this.d) {
                    this.d = true;
                    a();
                }
            }
        }

        a(c<? super T> cVar, h<? super T, ? extends b<U>> hVar) {
            this.f7941a = cVar;
            this.f7942b = hVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f7941a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.f) {
                long j = this.e + 1;
                this.e = j;
                io.reactivex.b.c cVar = this.d.get();
                if (cVar != null) {
                    cVar.dispose();
                }
                try {
                    b bVar = (b) io.reactivex.internal.a.b.requireNonNull(this.f7942b.apply(t), "The publisher supplied is null");
                    C0179a aVar = new C0179a(this, j, t);
                    if (this.d.compareAndSet(cVar, aVar)) {
                        bVar.subscribe(aVar);
                    }
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    cancel();
                    this.f7941a.onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            DisposableHelper.dispose(this.d);
            this.f7941a.onError(th);
        }

        public final void onComplete() {
            if (!this.f) {
                this.f = true;
                io.reactivex.b.c cVar = this.d.get();
                if (!DisposableHelper.isDisposed(cVar)) {
                    ((C0179a) cVar).a();
                    DisposableHelper.dispose(this.d);
                    this.f7941a.onComplete();
                }
            }
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this, j);
            }
        }

        public final void cancel() {
            this.c.cancel();
            DisposableHelper.dispose(this.d);
        }

        /* access modifiers changed from: package-private */
        public final void a(long j, T t) {
            if (j == this.e) {
                if (get() != 0) {
                    this.f7941a.onNext(t);
                    io.reactivex.internal.util.c.produced(this, 1);
                    return;
                }
                cancel();
                this.f7941a.onError(new io.reactivex.c.c("Could not deliver value due to lack of requests"));
            }
        }
    }

    public ag(j<T> jVar, h<? super T, ? extends b<U>> hVar) {
        super(jVar);
        this.c = hVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(new io.reactivex.k.d(cVar), this.c));
    }
}
