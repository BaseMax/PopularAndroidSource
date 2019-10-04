package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.e.h;
import io.reactivex.g;
import io.reactivex.internal.c.b;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class ax<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends g> f7158b;
    final boolean c;

    static final class a<T> extends b<T> implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7159a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.util.b f7160b = new io.reactivex.internal.util.b();
        final h<? super T, ? extends g> c;
        final boolean d;
        final io.reactivex.b.b e = new io.reactivex.b.b();
        c f;
        volatile boolean g;

        /* renamed from: io.reactivex.internal.operators.c.ax$a$a  reason: collision with other inner class name */
        final class C0158a extends AtomicReference<c> implements c, d {
            C0158a() {
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

        public final void clear() {
        }

        public final boolean isEmpty() {
            return true;
        }

        public final T poll() throws Exception {
            return null;
        }

        public final int requestFusion(int i) {
            return i & 2;
        }

        a(ag<? super T> agVar, h<? super T, ? extends g> hVar, boolean z) {
            this.f7159a = agVar;
            this.c = hVar;
            this.d = z;
            lazySet(1);
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f, cVar)) {
                this.f = cVar;
                this.f7159a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            try {
                g gVar = (g) io.reactivex.internal.a.b.requireNonNull(this.c.apply(t), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0158a aVar = new C0158a();
                if (!this.g && this.e.add(aVar)) {
                    gVar.subscribe(aVar);
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f.dispose();
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            if (!this.f7160b.addThrowable(th)) {
                io.reactivex.g.a.onError(th);
            } else if (!this.d) {
                dispose();
                if (getAndSet(0) > 0) {
                    this.f7159a.onError(this.f7160b.terminate());
                }
            } else if (decrementAndGet() == 0) {
                this.f7159a.onError(this.f7160b.terminate());
            }
        }

        public final void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable terminate = this.f7160b.terminate();
                if (terminate != null) {
                    this.f7159a.onError(terminate);
                    return;
                }
                this.f7159a.onComplete();
            }
        }

        public final void dispose() {
            this.g = true;
            this.f.dispose();
            this.e.dispose();
        }

        public final boolean isDisposed() {
            return this.f.isDisposed();
        }
    }

    public ax(ae<T> aeVar, h<? super T, ? extends g> hVar, boolean z) {
        super(aeVar);
        this.f7158b = hVar;
        this.c = z;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7158b, this.c));
    }
}
