package io.reactivex.internal.operators.b;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.e.h;
import io.reactivex.g;
import io.reactivex.internal.b.e;
import io.reactivex.internal.b.j;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.b;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class l<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f7055a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends g> f7056b;
    final ErrorMode c;
    final int d;

    static final class a<T> extends AtomicInteger implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final d f7057a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends g> f7058b;
        final ErrorMode c;
        final b d = new b();
        final C0149a e = new C0149a(this);
        final int f;
        j<T> g;
        c h;
        volatile boolean i;
        volatile boolean j;
        volatile boolean k;

        /* renamed from: io.reactivex.internal.operators.b.l$a$a  reason: collision with other inner class name */
        static final class C0149a extends AtomicReference<c> implements d {

            /* renamed from: a  reason: collision with root package name */
            final a<?> f7059a;

            C0149a(a<?> aVar) {
                this.f7059a = aVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.replace(this, cVar);
            }

            public final void onError(Throwable th) {
                a<?> aVar = this.f7059a;
                if (!aVar.d.addThrowable(th)) {
                    io.reactivex.g.a.onError(th);
                } else if (aVar.c == ErrorMode.IMMEDIATE) {
                    aVar.k = true;
                    aVar.h.dispose();
                    Throwable terminate = aVar.d.terminate();
                    if (terminate != io.reactivex.internal.util.h.TERMINATED) {
                        aVar.f7057a.onError(terminate);
                    }
                    if (aVar.getAndIncrement() == 0) {
                        aVar.g.clear();
                    }
                } else {
                    aVar.i = false;
                    aVar.a();
                }
            }

            public final void onComplete() {
                a<?> aVar = this.f7059a;
                aVar.i = false;
                aVar.a();
            }
        }

        a(d dVar, h<? super T, ? extends g> hVar, ErrorMode errorMode, int i2) {
            this.f7057a = dVar;
            this.f7058b = hVar;
            this.c = errorMode;
            this.f = i2;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.h, cVar)) {
                this.h = cVar;
                if (cVar instanceof e) {
                    e eVar = (e) cVar;
                    int requestFusion = eVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.g = eVar;
                        this.j = true;
                        this.f7057a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.g = eVar;
                        this.f7057a.onSubscribe(this);
                        return;
                    }
                }
                this.g = new io.reactivex.internal.d.c(this.f);
                this.f7057a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (t != null) {
                this.g.offer(t);
            }
            a();
        }

        public final void onError(Throwable th) {
            if (!this.d.addThrowable(th)) {
                io.reactivex.g.a.onError(th);
            } else if (this.c == ErrorMode.IMMEDIATE) {
                this.k = true;
                DisposableHelper.dispose(this.e);
                Throwable terminate = this.d.terminate();
                if (terminate != io.reactivex.internal.util.h.TERMINATED) {
                    this.f7057a.onError(terminate);
                }
                if (getAndIncrement() == 0) {
                    this.g.clear();
                }
            } else {
                this.j = true;
                a();
            }
        }

        public final void onComplete() {
            this.j = true;
            a();
        }

        public final void dispose() {
            this.k = true;
            this.h.dispose();
            DisposableHelper.dispose(this.e);
            if (getAndIncrement() == 0) {
                this.g.clear();
            }
        }

        public final boolean isDisposed() {
            return this.k;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            boolean z;
            if (getAndIncrement() == 0) {
                b bVar = this.d;
                ErrorMode errorMode = this.c;
                while (!this.k) {
                    if (!this.i) {
                        if (errorMode != ErrorMode.BOUNDARY || bVar.get() == null) {
                            boolean z2 = this.j;
                            g gVar = null;
                            try {
                                T poll = this.g.poll();
                                if (poll != null) {
                                    gVar = (g) io.reactivex.internal.a.b.requireNonNull(this.f7058b.apply(poll), "The mapper returned a null CompletableSource");
                                    z = false;
                                } else {
                                    z = true;
                                }
                                if (z2 && z) {
                                    this.k = true;
                                    Throwable terminate = bVar.terminate();
                                    if (terminate != null) {
                                        this.f7057a.onError(terminate);
                                        return;
                                    } else {
                                        this.f7057a.onComplete();
                                        return;
                                    }
                                } else if (!z) {
                                    this.i = true;
                                    gVar.subscribe(this.e);
                                }
                            } catch (Throwable th) {
                                io.reactivex.c.b.throwIfFatal(th);
                                this.k = true;
                                this.g.clear();
                                this.h.dispose();
                                bVar.addThrowable(th);
                                this.f7057a.onError(bVar.terminate());
                                return;
                            }
                        } else {
                            this.k = true;
                            this.g.clear();
                            this.f7057a.onError(bVar.terminate());
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                this.g.clear();
            }
        }
    }

    public l(z<T> zVar, h<? super T, ? extends g> hVar, ErrorMode errorMode, int i) {
        this.f7055a = zVar;
        this.f7056b = hVar;
        this.c = errorMode;
        this.d = i;
    }

    public final void subscribeActual(d dVar) {
        if (!r.a((Object) this.f7055a, this.f7056b, dVar)) {
            this.f7055a.subscribe(new a(dVar, this.f7056b, this.c, this.d));
        }
    }
}
