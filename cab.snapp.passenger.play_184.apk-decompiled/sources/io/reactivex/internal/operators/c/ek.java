package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.internal.c.u;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.j.e;
import io.reactivex.observers.d;
import io.reactivex.z;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class ek<T> extends a<T, z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final long f7531b;
    final long c;
    final TimeUnit d;
    final ah e;
    final long f;
    final int g;
    final boolean h;

    static final class a<T> extends u<T, Object, z<T>> implements io.reactivex.b.c {
        final long e;
        final TimeUnit f;
        final ah g;
        final int h;
        final boolean i;
        final long j;
        final ah.c k;
        long l;
        long m;
        io.reactivex.b.c n;
        e<T> o;
        volatile boolean p;
        final AtomicReference<io.reactivex.b.c> q = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.c.ek$a$a  reason: collision with other inner class name */
        static final class C0170a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final long f7532a;

            /* renamed from: b  reason: collision with root package name */
            final a<?> f7533b;

            C0170a(long j, a<?> aVar) {
                this.f7532a = j;
                this.f7533b = aVar;
            }

            public final void run() {
                a<?> aVar = this.f7533b;
                if (!aVar.cancelled) {
                    aVar.queue.offer(this);
                } else {
                    aVar.p = true;
                    aVar.a();
                }
                if (aVar.enter()) {
                    aVar.b();
                }
            }
        }

        a(ag<? super z<T>> agVar, long j2, TimeUnit timeUnit, ah ahVar, int i2, long j3, boolean z) {
            super(agVar, new io.reactivex.internal.d.a());
            this.e = j2;
            this.f = timeUnit;
            this.g = ahVar;
            this.h = i2;
            this.j = j3;
            this.i = z;
            if (z) {
                this.k = ahVar.createWorker();
            } else {
                this.k = null;
            }
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            io.reactivex.b.c cVar2;
            if (DisposableHelper.validate(this.n, cVar)) {
                this.n = cVar;
                ag agVar = this.f6788a;
                agVar.onSubscribe(this);
                if (!this.cancelled) {
                    e<T> create = e.create(this.h);
                    this.o = create;
                    agVar.onNext(create);
                    C0170a aVar = new C0170a(this.m, this);
                    if (this.i) {
                        ah.c cVar3 = this.k;
                        long j2 = this.e;
                        cVar2 = cVar3.schedulePeriodically(aVar, j2, j2, this.f);
                    } else {
                        ah ahVar = this.g;
                        long j3 = this.e;
                        cVar2 = ahVar.schedulePeriodicallyDirect(aVar, j3, j3, this.f);
                    }
                    DisposableHelper.replace(this.q, cVar2);
                }
            }
        }

        public final void onNext(T t) {
            if (!this.p) {
                if (fastEnter()) {
                    e<T> eVar = this.o;
                    eVar.onNext(t);
                    long j2 = this.l + 1;
                    if (j2 >= this.j) {
                        this.m++;
                        this.l = 0;
                        eVar.onComplete();
                        e<T> create = e.create(this.h);
                        this.o = create;
                        this.f6788a.onNext(create);
                        if (this.i) {
                            this.q.get().dispose();
                            ah.c cVar = this.k;
                            C0170a aVar = new C0170a(this.m, this);
                            long j3 = this.e;
                            DisposableHelper.replace(this.q, cVar.schedulePeriodically(aVar, j3, j3, this.f));
                        }
                    } else {
                        this.l = j2;
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
                b();
            }
        }

        public final void onError(Throwable th) {
            this.c = th;
            this.f6789b = true;
            if (enter()) {
                b();
            }
            this.f6788a.onError(th);
            a();
        }

        public final void onComplete() {
            this.f6789b = true;
            if (enter()) {
                b();
            }
            this.f6788a.onComplete();
            a();
        }

        public final void dispose() {
            this.cancelled = true;
        }

        public final boolean isDisposed() {
            return this.cancelled;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            DisposableHelper.dispose(this.q);
            ah.c cVar = this.k;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            io.reactivex.internal.d.a aVar = (io.reactivex.internal.d.a) this.queue;
            ag agVar = this.f6788a;
            e<T> eVar = this.o;
            int i2 = 1;
            while (!this.p) {
                boolean z = this.f6789b;
                Object poll = aVar.poll();
                boolean z2 = poll == null;
                boolean z3 = poll instanceof C0170a;
                if (z && (z2 || z3)) {
                    this.o = null;
                    aVar.clear();
                    a();
                    Throwable th = this.c;
                    if (th != null) {
                        eVar.onError(th);
                        return;
                    } else {
                        eVar.onComplete();
                        return;
                    }
                } else if (z2) {
                    i2 = leave(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else if (z3) {
                    C0170a aVar2 = (C0170a) poll;
                    if (this.i || this.m == aVar2.f7532a) {
                        eVar.onComplete();
                        this.l = 0;
                        eVar = e.create(this.h);
                        this.o = eVar;
                        agVar.onNext(eVar);
                    }
                } else {
                    eVar.onNext(NotificationLite.getValue(poll));
                    long j2 = this.l + 1;
                    if (j2 >= this.j) {
                        this.m++;
                        this.l = 0;
                        eVar.onComplete();
                        eVar = e.create(this.h);
                        this.o = eVar;
                        this.f6788a.onNext(eVar);
                        if (this.i) {
                            io.reactivex.b.c cVar = this.q.get();
                            cVar.dispose();
                            ah.c cVar2 = this.k;
                            C0170a aVar3 = new C0170a(this.m, this);
                            long j3 = this.e;
                            io.reactivex.b.c schedulePeriodically = cVar2.schedulePeriodically(aVar3, j3, j3, this.f);
                            if (!this.q.compareAndSet(cVar, schedulePeriodically)) {
                                schedulePeriodically.dispose();
                            }
                        }
                    } else {
                        this.l = j2;
                    }
                }
            }
            this.n.dispose();
            aVar.clear();
            a();
        }
    }

    static final class b<T> extends u<T, Object, z<T>> implements ag<T>, io.reactivex.b.c, Runnable {
        static final Object l = new Object();
        final long e;
        final TimeUnit f;
        final ah g;
        final int h;
        io.reactivex.b.c i;
        e<T> j;
        final AtomicReference<io.reactivex.b.c> k = new AtomicReference<>();
        volatile boolean m;

        b(ag<? super z<T>> agVar, long j2, TimeUnit timeUnit, ah ahVar, int i2) {
            super(agVar, new io.reactivex.internal.d.a());
            this.e = j2;
            this.f = timeUnit;
            this.g = ahVar;
            this.h = i2;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.i, cVar)) {
                this.i = cVar;
                this.j = e.create(this.h);
                ag agVar = this.f6788a;
                agVar.onSubscribe(this);
                agVar.onNext(this.j);
                if (!this.cancelled) {
                    ah ahVar = this.g;
                    long j2 = this.e;
                    DisposableHelper.replace(this.k, ahVar.schedulePeriodicallyDirect(this, j2, j2, this.f));
                }
            }
        }

        public final void onNext(T t) {
            if (!this.m) {
                if (fastEnter()) {
                    this.j.onNext(t);
                    if (leave(-1) == 0) {
                        return;
                    }
                } else {
                    this.queue.offer(NotificationLite.next(t));
                    if (!enter()) {
                        return;
                    }
                }
                b();
            }
        }

        public final void onError(Throwable th) {
            this.c = th;
            this.f6789b = true;
            if (enter()) {
                b();
            }
            a();
            this.f6788a.onError(th);
        }

        public final void onComplete() {
            this.f6789b = true;
            if (enter()) {
                b();
            }
            a();
            this.f6788a.onComplete();
        }

        public final void dispose() {
            this.cancelled = true;
        }

        public final boolean isDisposed() {
            return this.cancelled;
        }

        private void a() {
            DisposableHelper.dispose(this.k);
        }

        public final void run() {
            if (this.cancelled) {
                this.m = true;
                a();
            }
            this.queue.offer(l);
            if (enter()) {
                b();
            }
        }

        private void b() {
            io.reactivex.internal.d.a aVar = (io.reactivex.internal.d.a) this.queue;
            ag agVar = this.f6788a;
            e<T> eVar = this.j;
            int i2 = 1;
            while (true) {
                boolean z = this.m;
                boolean z2 = this.f6789b;
                Object poll = aVar.poll();
                if (!z2 || !(poll == null || poll == l)) {
                    if (poll == null) {
                        i2 = leave(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    } else if (poll == l) {
                        eVar.onComplete();
                        if (!z) {
                            eVar = e.create(this.h);
                            this.j = eVar;
                            agVar.onNext(eVar);
                        } else {
                            this.i.dispose();
                        }
                    } else {
                        eVar.onNext(NotificationLite.getValue(poll));
                    }
                }
            }
            this.j = null;
            aVar.clear();
            a();
            Throwable th = this.c;
            if (th != null) {
                eVar.onError(th);
            } else {
                eVar.onComplete();
            }
        }
    }

    static final class c<T> extends u<T, Object, z<T>> implements io.reactivex.b.c, Runnable {
        final long e;
        final long f;
        final TimeUnit g;
        final ah.c h;
        final int i;
        final List<e<T>> j = new LinkedList();
        io.reactivex.b.c k;
        volatile boolean l;

        final class a implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            private final e<T> f7535b;

            a(e<T> eVar) {
                this.f7535b = eVar;
            }

            public final void run() {
                c.this.a(this.f7535b);
            }
        }

        static final class b<T> {

            /* renamed from: a  reason: collision with root package name */
            final e<T> f7536a;

            /* renamed from: b  reason: collision with root package name */
            final boolean f7537b;

            b(e<T> eVar, boolean z) {
                this.f7536a = eVar;
                this.f7537b = z;
            }
        }

        c(ag<? super z<T>> agVar, long j2, long j3, TimeUnit timeUnit, ah.c cVar, int i2) {
            super(agVar, new io.reactivex.internal.d.a());
            this.e = j2;
            this.f = j3;
            this.g = timeUnit;
            this.h = cVar;
            this.i = i2;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.k, cVar)) {
                this.k = cVar;
                this.f6788a.onSubscribe(this);
                if (!this.cancelled) {
                    e create = e.create(this.i);
                    this.j.add(create);
                    this.f6788a.onNext(create);
                    this.h.schedule(new a(create), this.e, this.g);
                    ah.c cVar2 = this.h;
                    long j2 = this.f;
                    cVar2.schedulePeriodically(this, j2, j2, this.g);
                }
            }
        }

        public final void onNext(T t) {
            if (fastEnter()) {
                for (e<T> onNext : this.j) {
                    onNext.onNext(t);
                }
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                this.queue.offer(t);
                if (!enter()) {
                    return;
                }
            }
            a();
        }

        public final void onError(Throwable th) {
            this.c = th;
            this.f6789b = true;
            if (enter()) {
                a();
            }
            this.f6788a.onError(th);
            this.h.dispose();
        }

        public final void onComplete() {
            this.f6789b = true;
            if (enter()) {
                a();
            }
            this.f6788a.onComplete();
            this.h.dispose();
        }

        public final void dispose() {
            this.cancelled = true;
        }

        public final boolean isDisposed() {
            return this.cancelled;
        }

        /* access modifiers changed from: package-private */
        public final void a(e<T> eVar) {
            this.queue.offer(new b(eVar, false));
            if (enter()) {
                a();
            }
        }

        private void a() {
            io.reactivex.internal.d.a aVar = (io.reactivex.internal.d.a) this.queue;
            ag agVar = this.f6788a;
            List<e<T>> list = this.j;
            int i2 = 1;
            while (!this.l) {
                boolean z = this.f6789b;
                Object poll = aVar.poll();
                boolean z2 = poll == null;
                boolean z3 = poll instanceof b;
                if (z && (z2 || z3)) {
                    aVar.clear();
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
                    this.h.dispose();
                    list.clear();
                    return;
                } else if (z2) {
                    i2 = leave(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else if (z3) {
                    b bVar = (b) poll;
                    if (!bVar.f7537b) {
                        list.remove(bVar.f7536a);
                        bVar.f7536a.onComplete();
                        if (list.isEmpty() && this.cancelled) {
                            this.l = true;
                        }
                    } else if (!this.cancelled) {
                        e create = e.create(this.i);
                        list.add(create);
                        agVar.onNext(create);
                        this.h.schedule(new a(create), this.e, this.g);
                    }
                } else {
                    for (e<T> onNext : list) {
                        onNext.onNext(poll);
                    }
                }
            }
            this.k.dispose();
            this.h.dispose();
            aVar.clear();
            list.clear();
        }

        public final void run() {
            b bVar = new b(e.create(this.i), true);
            if (!this.cancelled) {
                this.queue.offer(bVar);
            }
            if (enter()) {
                a();
            }
        }
    }

    public ek(ae<T> aeVar, long j, long j2, TimeUnit timeUnit, ah ahVar, long j3, int i, boolean z) {
        super(aeVar);
        this.f7531b = j;
        this.c = j2;
        this.d = timeUnit;
        this.e = ahVar;
        this.f = j3;
        this.g = i;
        this.h = z;
    }

    public final void subscribeActual(ag<? super z<T>> agVar) {
        d dVar = new d(agVar);
        if (this.f7531b != this.c) {
            ae aeVar = this.f7091a;
            c cVar = new c(dVar, this.f7531b, this.c, this.d, this.e.createWorker(), this.g);
            aeVar.subscribe(cVar);
        } else if (this.f == Long.MAX_VALUE) {
            ae aeVar2 = this.f7091a;
            b bVar = new b(dVar, this.f7531b, this.d, this.e, this.g);
            aeVar2.subscribe(bVar);
        } else {
            ae aeVar3 = this.f7091a;
            a aVar = new a(dVar, this.f7531b, this.d, this.e, this.g, this.f, this.h);
            aeVar3.subscribe(aVar);
        }
    }
}
