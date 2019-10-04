package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.h;
import io.reactivex.internal.c.u;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.j.e;
import io.reactivex.z;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class ei<T, B, V> extends a<T, z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final ae<B> f7520b;
    final h<? super B, ? extends ae<V>> c;
    final int d;

    static final class a<T, V> extends io.reactivex.observers.b<V> {

        /* renamed from: a  reason: collision with root package name */
        final c<T, ?, V> f7521a;

        /* renamed from: b  reason: collision with root package name */
        final e<T> f7522b;
        boolean c;

        a(c<T, ?, V> cVar, e<T> eVar) {
            this.f7521a = cVar;
            this.f7522b = eVar;
        }

        public final void onNext(V v) {
            dispose();
            onComplete();
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = true;
            this.f7521a.a(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                c<T, ?, V> cVar = this.f7521a;
                cVar.h.delete(this);
                cVar.queue.offer(new d(this.f7522b, null));
                if (cVar.enter()) {
                    cVar.a();
                }
            }
        }
    }

    static final class b<T, B> extends io.reactivex.observers.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final c<T, B, ?> f7523a;

        b(c<T, B, ?> cVar) {
            this.f7523a = cVar;
        }

        public final void onNext(B b2) {
            c<T, B, ?> cVar = this.f7523a;
            cVar.queue.offer(new d(null, b2));
            if (cVar.enter()) {
                cVar.a();
            }
        }

        public final void onError(Throwable th) {
            this.f7523a.a(th);
        }

        public final void onComplete() {
            this.f7523a.onComplete();
        }
    }

    static final class c<T, B, V> extends u<T, Object, z<T>> implements io.reactivex.b.c {
        final ae<B> e;
        final h<? super B, ? extends ae<V>> f;
        final int g;
        final io.reactivex.b.b h;
        io.reactivex.b.c i;
        final AtomicReference<io.reactivex.b.c> j = new AtomicReference<>();
        final List<e<T>> k;
        final AtomicLong l = new AtomicLong();
        final AtomicBoolean m = new AtomicBoolean();

        public final void accept(ag<? super z<T>> agVar, Object obj) {
        }

        c(ag<? super z<T>> agVar, ae<B> aeVar, h<? super B, ? extends ae<V>> hVar, int i2) {
            super(agVar, new io.reactivex.internal.d.a());
            this.e = aeVar;
            this.f = hVar;
            this.g = i2;
            this.h = new io.reactivex.b.b();
            this.k = new ArrayList();
            this.l.lazySet(1);
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.i, cVar)) {
                this.i = cVar;
                this.f6788a.onSubscribe(this);
                if (!this.m.get()) {
                    b bVar = new b(this);
                    if (this.j.compareAndSet(null, bVar)) {
                        this.e.subscribe(bVar);
                    }
                }
            }
        }

        public final void onNext(T t) {
            if (fastEnter()) {
                for (e<T> onNext : this.k) {
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

        public final void onError(Throwable th) {
            if (this.f6789b) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = th;
            this.f6789b = true;
            if (enter()) {
                a();
            }
            if (this.l.decrementAndGet() == 0) {
                this.h.dispose();
            }
            this.f6788a.onError(th);
        }

        public final void onComplete() {
            if (!this.f6789b) {
                this.f6789b = true;
                if (enter()) {
                    a();
                }
                if (this.l.decrementAndGet() == 0) {
                    this.h.dispose();
                }
                this.f6788a.onComplete();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(Throwable th) {
            this.i.dispose();
            this.h.dispose();
            onError(th);
        }

        public final void dispose() {
            if (this.m.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.j);
                if (this.l.decrementAndGet() == 0) {
                    this.i.dispose();
                }
            }
        }

        public final boolean isDisposed() {
            return this.m.get();
        }

        private void b() {
            this.h.dispose();
            DisposableHelper.dispose(this.j);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            io.reactivex.internal.d.a aVar = (io.reactivex.internal.d.a) this.queue;
            ag agVar = this.f6788a;
            List<e<T>> list = this.k;
            int i2 = 1;
            while (true) {
                boolean z = this.f6789b;
                Object poll = aVar.poll();
                boolean z2 = poll == null;
                if (z && z2) {
                    b();
                    Throwable th = this.c;
                    if (th != null) {
                        for (e<T> onError : list) {
                            onError.onError(th);
                        }
                    } else {
                        for (e<T> onComplete : list) {
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
                    if (dVar.f7524a != null) {
                        if (list.remove(dVar.f7524a)) {
                            dVar.f7524a.onComplete();
                            if (this.l.decrementAndGet() == 0) {
                                b();
                                return;
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.m.get()) {
                        e create = e.create(this.g);
                        list.add(create);
                        agVar.onNext(create);
                        try {
                            ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f.apply(dVar.f7525b), "The ObservableSource supplied is null");
                            a aVar2 = new a(this, create);
                            if (this.h.add(aVar2)) {
                                this.l.getAndIncrement();
                                aeVar.subscribe(aVar2);
                            }
                        } catch (Throwable th2) {
                            io.reactivex.c.b.throwIfFatal(th2);
                            this.m.set(true);
                            agVar.onError(th2);
                        }
                    }
                } else {
                    for (e<T> onNext : list) {
                        onNext.onNext(NotificationLite.getValue(poll));
                    }
                }
            }
        }
    }

    static final class d<T, B> {

        /* renamed from: a  reason: collision with root package name */
        final e<T> f7524a;

        /* renamed from: b  reason: collision with root package name */
        final B f7525b;

        d(e<T> eVar, B b2) {
            this.f7524a = eVar;
            this.f7525b = b2;
        }
    }

    public ei(ae<T> aeVar, ae<B> aeVar2, h<? super B, ? extends ae<V>> hVar, int i) {
        super(aeVar);
        this.f7520b = aeVar2;
        this.c = hVar;
        this.d = i;
    }

    public final void subscribeActual(ag<? super z<T>> agVar) {
        this.f7091a.subscribe(new c(new io.reactivex.observers.d(agVar), this.f7520b, this.c, this.d));
    }
}
