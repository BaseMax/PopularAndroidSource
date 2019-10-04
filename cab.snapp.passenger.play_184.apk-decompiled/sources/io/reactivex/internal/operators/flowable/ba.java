package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.b;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class ba<T> extends a<T, T> {
    final h<? super T, ? extends g> c;
    final int d;
    final boolean e;

    static final class a<T> extends io.reactivex.internal.subscriptions.a<T> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8004a;

        /* renamed from: b  reason: collision with root package name */
        final b f8005b = new b();
        final h<? super T, ? extends g> c;
        final boolean d;
        final io.reactivex.b.b e = new io.reactivex.b.b();
        final int f;
        d g;
        volatile boolean h;

        /* renamed from: io.reactivex.internal.operators.flowable.ba$a$a  reason: collision with other inner class name */
        final class C0182a extends AtomicReference<io.reactivex.b.c> implements io.reactivex.b.c, io.reactivex.d {
            C0182a() {
            }

            public final void onSubscribe(io.reactivex.b.c cVar) {
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
                return DisposableHelper.isDisposed((io.reactivex.b.c) get());
            }
        }

        public final void clear() {
        }

        public final boolean isEmpty() {
            return true;
        }

        public final T poll() throws Exception {
            return null;
        }

        public final void request(long j) {
        }

        public final int requestFusion(int i) {
            return i & 2;
        }

        a(c<? super T> cVar, h<? super T, ? extends g> hVar, boolean z, int i) {
            this.f8004a = cVar;
            this.c = hVar;
            this.d = z;
            this.f = i;
            lazySet(1);
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.g, dVar)) {
                this.g = dVar;
                this.f8004a.onSubscribe(this);
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
                C0182a aVar = new C0182a();
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
            if (!this.f8005b.addThrowable(th)) {
                io.reactivex.g.a.onError(th);
            } else if (!this.d) {
                cancel();
                if (getAndSet(0) > 0) {
                    this.f8004a.onError(this.f8005b.terminate());
                }
            } else if (decrementAndGet() == 0) {
                this.f8004a.onError(this.f8005b.terminate());
            } else if (this.f != Integer.MAX_VALUE) {
                this.g.request(1);
            }
        }

        public final void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable terminate = this.f8005b.terminate();
                if (terminate != null) {
                    this.f8004a.onError(terminate);
                } else {
                    this.f8004a.onComplete();
                }
            } else {
                if (this.f != Integer.MAX_VALUE) {
                    this.g.request(1);
                }
            }
        }

        public final void cancel() {
            this.h = true;
            this.g.cancel();
            this.e.dispose();
        }
    }

    public ba(j<T> jVar, h<? super T, ? extends g> hVar, boolean z, int i) {
        super(jVar);
        this.c = hVar;
        this.e = z;
        this.d = i;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c, this.e, this.d));
    }
}
