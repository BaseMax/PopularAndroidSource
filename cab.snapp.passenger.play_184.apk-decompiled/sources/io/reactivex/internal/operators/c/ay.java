package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.g;
import io.reactivex.internal.b.d;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.b;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ay<T> extends io.reactivex.a implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7162a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends g> f7163b;
    final boolean c;

    static final class a<T> extends AtomicInteger implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f7164a;

        /* renamed from: b  reason: collision with root package name */
        final b f7165b = new b();
        final h<? super T, ? extends g> c;
        final boolean d;
        final io.reactivex.b.b e = new io.reactivex.b.b();
        c f;
        volatile boolean g;

        /* renamed from: io.reactivex.internal.operators.c.ay$a$a  reason: collision with other inner class name */
        final class C0159a extends AtomicReference<c> implements c, io.reactivex.d {
            C0159a() {
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

        a(io.reactivex.d dVar, h<? super T, ? extends g> hVar, boolean z) {
            this.f7164a = dVar;
            this.c = hVar;
            this.d = z;
            lazySet(1);
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f, cVar)) {
                this.f = cVar;
                this.f7164a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            try {
                g gVar = (g) io.reactivex.internal.a.b.requireNonNull(this.c.apply(t), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0159a aVar = new C0159a();
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
            if (!this.f7165b.addThrowable(th)) {
                io.reactivex.g.a.onError(th);
            } else if (!this.d) {
                dispose();
                if (getAndSet(0) > 0) {
                    this.f7164a.onError(this.f7165b.terminate());
                }
            } else if (decrementAndGet() == 0) {
                this.f7164a.onError(this.f7165b.terminate());
            }
        }

        public final void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable terminate = this.f7165b.terminate();
                if (terminate != null) {
                    this.f7164a.onError(terminate);
                    return;
                }
                this.f7164a.onComplete();
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

    public ay(ae<T> aeVar, h<? super T, ? extends g> hVar, boolean z) {
        this.f7162a = aeVar;
        this.f7163b = hVar;
        this.c = z;
    }

    public final void subscribeActual(io.reactivex.d dVar) {
        this.f7162a.subscribe(new a(dVar, this.f7163b, this.c));
    }

    public final z<T> fuseToObservable() {
        return io.reactivex.g.a.onAssembly(new ax(this.f7162a, this.f7163b, this.c));
    }
}
