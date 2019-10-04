package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.b.i;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.f.n;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.j;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class ev<T, B, V> extends a<T, j<T>> {
    final org.b.b<B> c;
    final h<? super B, ? extends org.b.b<V>> d;
    final int e;

    static final class a<T, V> extends io.reactivex.k.b<V> {

        /* renamed from: a  reason: collision with root package name */
        final c<T, ?, V> f8296a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h.c<T> f8297b;
        boolean c;

        a(c<T, ?, V> cVar, io.reactivex.h.c<T> cVar2) {
            this.f8296a = cVar;
            this.f8297b = cVar2;
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = true;
            this.f8296a.a(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                c<T, ?, V> cVar = this.f8296a;
                cVar.d.delete(this);
                cVar.queue.offer(new d(this.f8297b, null));
                if (cVar.enter()) {
                    cVar.a();
                }
            }
        }

        public final void onNext(V v) {
            dispose();
            onComplete();
        }
    }

    static final class b<T, B> extends io.reactivex.k.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final c<T, B, ?> f8298a;

        b(c<T, B, ?> cVar) {
            this.f8298a = cVar;
        }

        public final void onNext(B b2) {
            c<T, B, ?> cVar = this.f8298a;
            cVar.queue.offer(new d(null, b2));
            if (cVar.enter()) {
                cVar.a();
            }
        }

        public final void onError(Throwable th) {
            this.f8298a.a(th);
        }

        public final void onComplete() {
            this.f8298a.onComplete();
        }
    }

    static final class c<T, B, V> extends n<T, Object, j<T>> implements org.b.d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.b<B> f8299a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super B, ? extends org.b.b<V>> f8300b;
        final int c;
        final io.reactivex.b.b d;
        org.b.d e;
        final AtomicReference<io.reactivex.b.c> f = new AtomicReference<>();
        final List<io.reactivex.h.c<T>> g;
        final AtomicLong h = new AtomicLong();
        final AtomicBoolean i = new AtomicBoolean();

        public final boolean accept(org.b.c<? super j<T>> cVar, Object obj) {
            return false;
        }

        c(org.b.c<? super j<T>> cVar, org.b.b<B> bVar, h<? super B, ? extends org.b.b<V>> hVar, int i2) {
            super(cVar, new io.reactivex.internal.d.a());
            this.f8299a = bVar;
            this.f8300b = hVar;
            this.c = i2;
            this.d = new io.reactivex.b.b();
            this.g = new ArrayList();
            this.h.lazySet(1);
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.e, dVar)) {
                this.e = dVar;
                this.n.onSubscribe(this);
                if (!this.i.get()) {
                    b bVar = new b(this);
                    if (this.f.compareAndSet(null, bVar)) {
                        dVar.request(Long.MAX_VALUE);
                        this.f8299a.subscribe(bVar);
                    }
                }
            }
        }

        public final void onNext(T t) {
            if (!this.o) {
                if (fastEnter()) {
                    for (io.reactivex.h.c<T> onNext : this.g) {
                        onNext.onNext(t);
                    }
                    if (leave(-1) == 0) {
                        return;
                    }
                } else {
                    this.queue.offer(NotificationLite.next(t));
                    if (!enter()) {
                        return;
                    }
                }
                a();
            }
        }

        public final void onError(Throwable th) {
            if (this.o) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.p = th;
            this.o = true;
            if (enter()) {
                a();
            }
            if (this.h.decrementAndGet() == 0) {
                this.d.dispose();
            }
            this.n.onError(th);
        }

        public final void onComplete() {
            if (!this.o) {
                this.o = true;
                if (enter()) {
                    a();
                }
                if (this.h.decrementAndGet() == 0) {
                    this.d.dispose();
                }
                this.n.onComplete();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(Throwable th) {
            this.e.cancel();
            this.d.dispose();
            DisposableHelper.dispose(this.f);
            this.n.onError(th);
        }

        public final void request(long j) {
            requested(j);
        }

        public final void cancel() {
            if (this.i.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f);
                if (this.h.decrementAndGet() == 0) {
                    this.e.cancel();
                }
            }
        }

        private void b() {
            this.d.dispose();
            DisposableHelper.dispose(this.f);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            i iVar = this.queue;
            org.b.c cVar = this.n;
            List<io.reactivex.h.c<T>> list = this.g;
            int i2 = 1;
            while (true) {
                boolean z = this.o;
                Object poll = iVar.poll();
                boolean z2 = poll == null;
                if (z && z2) {
                    b();
                    Throwable th = this.p;
                    if (th != null) {
                        for (io.reactivex.h.c<T> onError : list) {
                            onError.onError(th);
                        }
                    } else {
                        for (io.reactivex.h.c<T> onComplete : list) {
                            onComplete.onComplete();
                        }
                    }
                    list.clear();
                    return;
                } else if (z2) {
                    i2 = leave(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else if (poll instanceof d) {
                    d dVar = (d) poll;
                    if (dVar.f8301a != null) {
                        if (list.remove(dVar.f8301a)) {
                            dVar.f8301a.onComplete();
                            if (this.h.decrementAndGet() == 0) {
                                b();
                                return;
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.i.get()) {
                        io.reactivex.h.c create = io.reactivex.h.c.create(this.c);
                        long requested = requested();
                        if (requested != 0) {
                            list.add(create);
                            cVar.onNext(create);
                            if (requested != Long.MAX_VALUE) {
                                produced(1);
                            }
                            try {
                                org.b.b bVar = (org.b.b) io.reactivex.internal.a.b.requireNonNull(this.f8300b.apply(dVar.f8302b), "The publisher supplied is null");
                                a aVar = new a(this, create);
                                if (this.d.add(aVar)) {
                                    this.h.getAndIncrement();
                                    bVar.subscribe(aVar);
                                }
                            } catch (Throwable th2) {
                                cancel();
                                cVar.onError(th2);
                            }
                        } else {
                            cancel();
                            cVar.onError(new io.reactivex.c.c("Could not deliver new window due to lack of requests"));
                        }
                    }
                } else {
                    for (io.reactivex.h.c<T> onNext : list) {
                        onNext.onNext(NotificationLite.getValue(poll));
                    }
                }
            }
        }
    }

    static final class d<T, B> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.h.c<T> f8301a;

        /* renamed from: b  reason: collision with root package name */
        final B f8302b;

        d(io.reactivex.h.c<T> cVar, B b2) {
            this.f8301a = cVar;
            this.f8302b = b2;
        }
    }

    public ev(j<T> jVar, org.b.b<B> bVar, h<? super B, ? extends org.b.b<V>> hVar, int i) {
        super(jVar);
        this.c = bVar;
        this.d = hVar;
        this.e = i;
    }

    public final void subscribeActual(org.b.c<? super j<T>> cVar) {
        this.f7923b.subscribe(new c(new io.reactivex.k.d(cVar), this.c, this.d, this.e));
    }
}
