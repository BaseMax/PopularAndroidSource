package io.reactivex.internal.operators.flowable;

import io.reactivex.e.d;
import io.reactivex.internal.b.g;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class dn<T> extends j<Boolean> {

    /* renamed from: b  reason: collision with root package name */
    final org.b.b<? extends T> f8193b;
    final org.b.b<? extends T> c;
    final d<? super T, ? super T> d;
    final int e;

    static final class a<T> extends io.reactivex.internal.subscriptions.c<Boolean> implements b {

        /* renamed from: a  reason: collision with root package name */
        final d<? super T, ? super T> f8194a;

        /* renamed from: b  reason: collision with root package name */
        final c<T> f8195b;
        final c<T> c;
        final io.reactivex.internal.util.b d;
        final AtomicInteger e = new AtomicInteger();
        T f;
        T g;

        a(org.b.c<? super Boolean> cVar, int i, d<? super T, ? super T> dVar) {
            super(cVar);
            this.f8194a = dVar;
            this.f8195b = new c<>(this, i);
            this.c = new c<>(this, i);
            this.d = new io.reactivex.internal.util.b();
        }

        public final void cancel() {
            super.cancel();
            this.f8195b.cancel();
            this.c.cancel();
            if (this.e.getAndIncrement() == 0) {
                this.f8195b.a();
                this.c.a();
            }
        }

        private void a() {
            this.f8195b.cancel();
            this.f8195b.a();
            this.c.cancel();
            this.c.a();
        }

        public final void drain() {
            if (this.e.getAndIncrement() == 0) {
                int i = 1;
                do {
                    io.reactivex.internal.b.j<T> jVar = this.f8195b.e;
                    io.reactivex.internal.b.j<T> jVar2 = this.c.e;
                    if (jVar != null && jVar2 != null) {
                        while (!isCancelled()) {
                            if (((Throwable) this.d.get()) != null) {
                                a();
                                this.h.onError(this.d.terminate());
                                return;
                            }
                            boolean z = this.f8195b.f;
                            T t = this.f;
                            if (t == null) {
                                try {
                                    t = jVar.poll();
                                    this.f = t;
                                } catch (Throwable th) {
                                    io.reactivex.c.b.throwIfFatal(th);
                                    a();
                                    this.d.addThrowable(th);
                                    this.h.onError(this.d.terminate());
                                    return;
                                }
                            }
                            boolean z2 = false;
                            boolean z3 = t == null;
                            boolean z4 = this.c.f;
                            T t2 = this.g;
                            if (t2 == null) {
                                try {
                                    t2 = jVar2.poll();
                                    this.g = t2;
                                } catch (Throwable th2) {
                                    io.reactivex.c.b.throwIfFatal(th2);
                                    a();
                                    this.d.addThrowable(th2);
                                    this.h.onError(this.d.terminate());
                                    return;
                                }
                            }
                            if (t2 == null) {
                                z2 = true;
                            }
                            if (z && z4 && z3 && z2) {
                                complete(Boolean.TRUE);
                                return;
                            } else if (z && z4 && z3 != z2) {
                                a();
                                complete(Boolean.FALSE);
                                return;
                            } else if (!z3 && !z2) {
                                try {
                                    if (!this.f8194a.test(t, t2)) {
                                        a();
                                        complete(Boolean.FALSE);
                                        return;
                                    }
                                    this.f = null;
                                    this.g = null;
                                    this.f8195b.request();
                                    this.c.request();
                                } catch (Throwable th3) {
                                    io.reactivex.c.b.throwIfFatal(th3);
                                    a();
                                    this.d.addThrowable(th3);
                                    this.h.onError(this.d.terminate());
                                    return;
                                }
                            }
                        }
                        this.f8195b.a();
                        this.c.a();
                        return;
                    } else if (isCancelled()) {
                        this.f8195b.a();
                        this.c.a();
                        return;
                    } else if (((Throwable) this.d.get()) != null) {
                        a();
                        this.h.onError(this.d.terminate());
                        return;
                    }
                    i = this.e.addAndGet(-i);
                } while (i != 0);
            }
        }

        public final void innerError(Throwable th) {
            if (this.d.addThrowable(th)) {
                drain();
            } else {
                io.reactivex.g.a.onError(th);
            }
        }
    }

    interface b {
        void drain();

        void innerError(Throwable th);
    }

    static final class c<T> extends AtomicReference<org.b.d> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final b f8196a;

        /* renamed from: b  reason: collision with root package name */
        final int f8197b;
        final int c;
        long d;
        volatile io.reactivex.internal.b.j<T> e;
        volatile boolean f;
        int g;

        c(b bVar, int i) {
            this.f8196a = bVar;
            this.c = i - (i >> 2);
            this.f8197b = i;
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.setOnce(this, dVar)) {
                if (dVar instanceof g) {
                    g gVar = (g) dVar;
                    int requestFusion = gVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.g = requestFusion;
                        this.e = gVar;
                        this.f = true;
                        this.f8196a.drain();
                        return;
                    } else if (requestFusion == 2) {
                        this.g = requestFusion;
                        this.e = gVar;
                        dVar.request((long) this.f8197b);
                        return;
                    }
                }
                this.e = new io.reactivex.internal.d.b(this.f8197b);
                dVar.request((long) this.f8197b);
            }
        }

        public final void onNext(T t) {
            if (this.g != 0 || this.e.offer(t)) {
                this.f8196a.drain();
            } else {
                onError(new io.reactivex.c.c());
            }
        }

        public final void onError(Throwable th) {
            this.f8196a.innerError(th);
        }

        public final void onComplete() {
            this.f = true;
            this.f8196a.drain();
        }

        public final void request() {
            if (this.g != 1) {
                long j = this.d + 1;
                if (j >= ((long) this.c)) {
                    this.d = 0;
                    ((org.b.d) get()).request(j);
                    return;
                }
                this.d = j;
            }
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            io.reactivex.internal.b.j<T> jVar = this.e;
            if (jVar != null) {
                jVar.clear();
            }
        }
    }

    public dn(org.b.b<? extends T> bVar, org.b.b<? extends T> bVar2, d<? super T, ? super T> dVar, int i) {
        this.f8193b = bVar;
        this.c = bVar2;
        this.d = dVar;
        this.e = i;
    }

    public final void subscribeActual(org.b.c<? super Boolean> cVar) {
        a aVar = new a(cVar, this.e, this.d);
        cVar.onSubscribe(aVar);
        org.b.b<? extends T> bVar = this.f8193b;
        org.b.b<? extends T> bVar2 = this.c;
        bVar.subscribe(aVar.f8195b);
        bVar2.subscribe(aVar.c);
    }
}
