package io.reactivex.internal.operators.b;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.e.h;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.b;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicReference;

public final class o<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f7070a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends g> f7071b;
    final boolean c;

    static final class a<T> implements ag<T>, c {
        static final C0152a f = new C0152a(null);

        /* renamed from: a  reason: collision with root package name */
        final d f7072a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends g> f7073b;
        final boolean c;
        final b d = new b();
        final AtomicReference<C0152a> e = new AtomicReference<>();
        volatile boolean g;
        c h;

        /* renamed from: io.reactivex.internal.operators.b.o$a$a  reason: collision with other inner class name */
        static final class C0152a extends AtomicReference<c> implements d {

            /* renamed from: a  reason: collision with root package name */
            final a<?> f7074a;

            C0152a(a<?> aVar) {
                this.f7074a = aVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onError(Throwable th) {
                a<?> aVar = this.f7074a;
                if (!aVar.e.compareAndSet(this, null) || !aVar.d.addThrowable(th)) {
                    io.reactivex.g.a.onError(th);
                    return;
                }
                if (!aVar.c) {
                    aVar.dispose();
                    Throwable terminate = aVar.d.terminate();
                    if (terminate != io.reactivex.internal.util.h.TERMINATED) {
                        aVar.f7072a.onError(terminate);
                    }
                } else if (aVar.g) {
                    aVar.f7072a.onError(aVar.d.terminate());
                }
            }

            public final void onComplete() {
                a<?> aVar = this.f7074a;
                if (aVar.e.compareAndSet(this, null) && aVar.g) {
                    Throwable terminate = aVar.d.terminate();
                    if (terminate == null) {
                        aVar.f7072a.onComplete();
                        return;
                    }
                    aVar.f7072a.onError(terminate);
                }
            }
        }

        a(d dVar, h<? super T, ? extends g> hVar, boolean z) {
            this.f7072a = dVar;
            this.f7073b = hVar;
            this.c = z;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.h, cVar)) {
                this.h = cVar;
                this.f7072a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            try {
                g gVar = (g) io.reactivex.internal.a.b.requireNonNull(this.f7073b.apply(t), "The mapper returned a null CompletableSource");
                C0152a aVar = new C0152a(this);
                while (true) {
                    C0152a aVar2 = this.e.get();
                    if (aVar2 == f) {
                        break;
                    } else if (this.e.compareAndSet(aVar2, aVar)) {
                        if (aVar2 != null) {
                            DisposableHelper.dispose(aVar2);
                        }
                        gVar.subscribe(aVar);
                    }
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.h.dispose();
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            if (!this.d.addThrowable(th)) {
                io.reactivex.g.a.onError(th);
            } else if (this.c) {
                onComplete();
            } else {
                a();
                Throwable terminate = this.d.terminate();
                if (terminate != io.reactivex.internal.util.h.TERMINATED) {
                    this.f7072a.onError(terminate);
                }
            }
        }

        public final void onComplete() {
            this.g = true;
            if (this.e.get() == null) {
                Throwable terminate = this.d.terminate();
                if (terminate == null) {
                    this.f7072a.onComplete();
                    return;
                }
                this.f7072a.onError(terminate);
            }
        }

        private void a() {
            C0152a andSet = this.e.getAndSet(f);
            if (andSet != null && andSet != f) {
                DisposableHelper.dispose(andSet);
            }
        }

        public final void dispose() {
            this.h.dispose();
            a();
        }

        public final boolean isDisposed() {
            return this.e.get() == f;
        }
    }

    public o(z<T> zVar, h<? super T, ? extends g> hVar, boolean z) {
        this.f7070a = zVar;
        this.f7071b = hVar;
        this.c = z;
    }

    public final void subscribeActual(d dVar) {
        if (!r.a((Object) this.f7070a, this.f7071b, dVar)) {
            this.f7070a.subscribe(new a(dVar, this.f7071b, this.c));
        }
    }
}
