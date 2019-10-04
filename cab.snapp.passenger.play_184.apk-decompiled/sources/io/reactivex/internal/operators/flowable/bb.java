package io.reactivex.internal.operators.flowable;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.e.h;
import io.reactivex.g;
import io.reactivex.internal.b.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class bb<T> extends io.reactivex.a implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f8007a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends g> f8008b;
    final int c;
    final boolean d;

    static final class a<T> extends AtomicInteger implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final d f8009a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.util.b f8010b = new io.reactivex.internal.util.b();
        final h<? super T, ? extends g> c;
        final boolean d;
        final io.reactivex.b.b e = new io.reactivex.b.b();
        final int f;
        org.b.d g;
        volatile boolean h;

        /* renamed from: io.reactivex.internal.operators.flowable.bb$a$a  reason: collision with other inner class name */
        final class C0183a extends AtomicReference<c> implements c, d {
            C0183a() {
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onComplete() {
                a aVar = a.this;
                aVar.e.delete(this);
                aVar.onComplete();
            }

            public final void onError(Throwable th) {
                a aVar = a.this;
                aVar.e.delete(this);
                aVar.onError(th);
            }

            public final void dispose() {
                DisposableHelper.dispose(this);
            }

            public final boolean isDisposed() {
                return DisposableHelper.isDisposed((c) get());
            }
        }

        a(d dVar, h<? super T, ? extends g> hVar, boolean z, int i) {
            this.f8009a = dVar;
            this.c = hVar;
            this.d = z;
            this.f = i;
            lazySet(1);
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.g, dVar)) {
                this.g = dVar;
                this.f8009a.onSubscribe(this);
                int i = this.f;
                if (i == Integer.MAX_VALUE) {
                    dVar.request(Long.MAX_VALUE);
                    return;
                }
                dVar.request((long) i);
            }
        }

        public final void onNext(T t) {
            try {
                g gVar = (g) io.reactivex.internal.a.b.requireNonNull(this.c.apply(t), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0183a aVar = new C0183a();
                if (!this.h && this.e.add(aVar)) {
                    gVar.subscribe(aVar);
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.g.cancel();
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            if (!this.f8010b.addThrowable(th)) {
                io.reactivex.g.a.onError(th);
            } else if (!this.d) {
                dispose();
                if (getAndSet(0) > 0) {
                    this.f8009a.onError(this.f8010b.terminate());
                }
            } else if (decrementAndGet() == 0) {
                this.f8009a.onError(this.f8010b.terminate());
            } else if (this.f != Integer.MAX_VALUE) {
                this.g.request(1);
            }
        }

        public final void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable terminate = this.f8010b.terminate();
                if (terminate != null) {
                    this.f8009a.onError(terminate);
                } else {
                    this.f8009a.onComplete();
                }
            } else {
                if (this.f != Integer.MAX_VALUE) {
                    this.g.request(1);
                }
            }
        }

        public final void dispose() {
            this.h = true;
            this.g.cancel();
            this.e.dispose();
        }

        public final boolean isDisposed() {
            return this.e.isDisposed();
        }
    }

    public bb(j<T> jVar, h<? super T, ? extends g> hVar, boolean z, int i) {
        this.f8007a = jVar;
        this.f8008b = hVar;
        this.d = z;
        this.c = i;
    }

    public final void subscribeActual(d dVar) {
        this.f8007a.subscribe(new a(dVar, this.f8008b, this.d, this.c));
    }

    public final j<T> fuseToFlowable() {
        return io.reactivex.g.a.onAssembly(new ba(this.f8007a, this.f8008b, this.d, this.c));
    }
}
