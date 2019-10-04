package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.internal.b.i;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.f;
import io.reactivex.internal.f.n;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.j;
import io.reactivex.o;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.b.d;

public final class ex<T> extends a<T, j<T>> {
    final long c;
    final long d;
    final TimeUnit e;
    final ah f;
    final long g;
    final int h;
    final boolean i;

    static final class a<T> extends n<T, Object, j<T>> implements d {

        /* renamed from: a  reason: collision with root package name */
        final long f8307a;

        /* renamed from: b  reason: collision with root package name */
        final TimeUnit f8308b;
        final ah c;
        final int d;
        final boolean e;
        final long f;
        final ah.c g;
        long h;
        long i;
        d j;
        io.reactivex.h.c<T> k;
        volatile boolean l;
        final f m = new f();

        /* renamed from: io.reactivex.internal.operators.flowable.ex$a$a  reason: collision with other inner class name */
        static final class C0194a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final long f8309a;

            /* renamed from: b  reason: collision with root package name */
            final a<?> f8310b;

            C0194a(long j, a<?> aVar) {
                this.f8309a = j;
                this.f8310b = aVar;
            }

            public final void run() {
                a<?> aVar = this.f8310b;
                if (!aVar.cancelled) {
                    aVar.queue.offer(this);
                } else {
                    aVar.l = true;
                    aVar.dispose();
                }
                if (aVar.enter()) {
                    aVar.a();
                }
            }
        }

        a(org.b.c<? super j<T>> cVar, long j2, TimeUnit timeUnit, ah ahVar, int i2, long j3, boolean z) {
            super(cVar, new io.reactivex.internal.d.a());
            this.f8307a = j2;
            this.f8308b = timeUnit;
            this.c = ahVar;
            this.d = i2;
            this.f = j3;
            this.e = z;
            if (z) {
                this.g = ahVar.createWorker();
            } else {
                this.g = null;
            }
        }

        public final void onSubscribe(d dVar) {
            io.reactivex.b.c cVar;
            if (SubscriptionHelper.validate(this.j, dVar)) {
                this.j = dVar;
                org.b.c cVar2 = this.n;
                cVar2.onSubscribe(this);
                if (!this.cancelled) {
                    io.reactivex.h.c<T> create = io.reactivex.h.c.create(this.d);
                    this.k = create;
                    long requested = requested();
                    if (requested != 0) {
                        cVar2.onNext(create);
                        if (requested != Long.MAX_VALUE) {
                            produced(1);
                        }
                        C0194a aVar = new C0194a(this.i, this);
                        if (this.e) {
                            ah.c cVar3 = this.g;
                            long j2 = this.f8307a;
                            cVar = cVar3.schedulePeriodically(aVar, j2, j2, this.f8308b);
                        } else {
                            ah ahVar = this.c;
                            long j3 = this.f8307a;
                            cVar = ahVar.schedulePeriodicallyDirect(aVar, j3, j3, this.f8308b);
                        }
                        if (this.m.replace(cVar)) {
                            dVar.request(Long.MAX_VALUE);
                        }
                    } else {
                        this.cancelled = true;
                        dVar.cancel();
                        cVar2.onError(new io.reactivex.c.c("Could not deliver initial window due to lack of requests."));
                    }
                }
            }
        }

        public final void onNext(T t) {
            if (!this.l) {
                if (fastEnter()) {
                    io.reactivex.h.c<T> cVar = this.k;
                    cVar.onNext(t);
                    long j2 = this.h + 1;
                    if (j2 >= this.f) {
                        this.i++;
                        this.h = 0;
                        cVar.onComplete();
                        long requested = requested();
                        if (requested != 0) {
                            io.reactivex.h.c<T> create = io.reactivex.h.c.create(this.d);
                            this.k = create;
                            this.n.onNext(create);
                            if (requested != Long.MAX_VALUE) {
                                produced(1);
                            }
                            if (this.e) {
                                ((io.reactivex.b.c) this.m.get()).dispose();
                                ah.c cVar2 = this.g;
                                C0194a aVar = new C0194a(this.i, this);
                                long j3 = this.f8307a;
                                this.m.replace(cVar2.schedulePeriodically(aVar, j3, j3, this.f8308b));
                            }
                        } else {
                            this.k = null;
                            this.j.cancel();
                            this.n.onError(new io.reactivex.c.c("Could not deliver window due to lack of requests"));
                            dispose();
                            return;
                        }
                    } else {
                        this.h = j2;
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
            this.p = th;
            this.o = true;
            if (enter()) {
                a();
            }
            this.n.onError(th);
            dispose();
        }

        public final void onComplete() {
            this.o = true;
            if (enter()) {
                a();
            }
            this.n.onComplete();
            dispose();
        }

        public final void request(long j2) {
            requested(j2);
        }

        public final void cancel() {
            this.cancelled = true;
        }

        public final void dispose() {
            DisposableHelper.dispose(this.m);
            ah.c cVar = this.g;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            io.reactivex.h.c<T> cVar;
            i iVar = this.queue;
            org.b.c cVar2 = this.n;
            io.reactivex.h.c<T> cVar3 = this.k;
            int i2 = 1;
            while (!this.l) {
                boolean z = this.o;
                Object poll = iVar.poll();
                boolean z2 = poll == null;
                boolean z3 = poll instanceof C0194a;
                if (!z || (!z2 && !z3)) {
                    if (z2) {
                        cVar = cVar3;
                        i2 = leave(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    } else if (z3) {
                        C0194a aVar = (C0194a) poll;
                        if (this.e || this.i == aVar.f8309a) {
                            cVar3.onComplete();
                            this.h = 0;
                            cVar3 = io.reactivex.h.c.create(this.d);
                            this.k = cVar3;
                            long requested = requested();
                            if (requested != 0) {
                                cVar2.onNext(cVar3);
                                if (requested != Long.MAX_VALUE) {
                                    produced(1);
                                }
                            } else {
                                this.k = null;
                                this.queue.clear();
                                this.j.cancel();
                                cVar2.onError(new io.reactivex.c.c("Could not deliver first window due to lack of requests."));
                                dispose();
                                return;
                            }
                        } else {
                            cVar = cVar3;
                        }
                    } else {
                        cVar3.onNext(NotificationLite.getValue(poll));
                        long j2 = this.h + 1;
                        cVar = cVar3;
                        if (j2 >= this.f) {
                            this.i++;
                            this.h = 0;
                            cVar.onComplete();
                            long requested2 = requested();
                            if (requested2 != 0) {
                                io.reactivex.h.c<T> create = io.reactivex.h.c.create(this.d);
                                this.k = create;
                                this.n.onNext(create);
                                if (requested2 != Long.MAX_VALUE) {
                                    produced(1);
                                }
                                if (this.e) {
                                    ((io.reactivex.b.c) this.m.get()).dispose();
                                    ah.c cVar4 = this.g;
                                    C0194a aVar2 = new C0194a(this.i, this);
                                    long j3 = this.f8307a;
                                    this.m.replace(cVar4.schedulePeriodically(aVar2, j3, j3, this.f8308b));
                                }
                                cVar3 = create;
                            } else {
                                this.k = null;
                                this.j.cancel();
                                this.n.onError(new io.reactivex.c.c("Could not deliver window due to lack of requests"));
                                dispose();
                                return;
                            }
                        } else {
                            this.h = j2;
                        }
                    }
                    cVar3 = cVar;
                } else {
                    this.k = null;
                    iVar.clear();
                    Throwable th = this.p;
                    if (th != null) {
                        cVar3.onError(th);
                    } else {
                        cVar3.onComplete();
                    }
                    dispose();
                    return;
                }
            }
            this.j.cancel();
            iVar.clear();
            dispose();
        }
    }

    static final class b<T> extends n<T, Object, j<T>> implements o<T>, Runnable, d {
        static final Object h = new Object();

        /* renamed from: a  reason: collision with root package name */
        final long f8311a;

        /* renamed from: b  reason: collision with root package name */
        final TimeUnit f8312b;
        final ah c;
        final int d;
        d e;
        io.reactivex.h.c<T> f;
        final f g = new f();
        volatile boolean i;

        b(org.b.c<? super j<T>> cVar, long j, TimeUnit timeUnit, ah ahVar, int i2) {
            super(cVar, new io.reactivex.internal.d.a());
            this.f8311a = j;
            this.f8312b = timeUnit;
            this.c = ahVar;
            this.d = i2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.e, dVar)) {
                this.e = dVar;
                this.f = io.reactivex.h.c.create(this.d);
                org.b.c cVar = this.n;
                cVar.onSubscribe(this);
                long requested = requested();
                if (requested != 0) {
                    cVar.onNext(this.f);
                    if (requested != Long.MAX_VALUE) {
                        produced(1);
                    }
                    if (!this.cancelled) {
                        f fVar = this.g;
                        ah ahVar = this.c;
                        long j = this.f8311a;
                        if (fVar.replace(ahVar.schedulePeriodicallyDirect(this, j, j, this.f8312b))) {
                            dVar.request(Long.MAX_VALUE);
                            return;
                        }
                        return;
                    }
                    return;
                }
                this.cancelled = true;
                dVar.cancel();
                cVar.onError(new io.reactivex.c.c("Could not deliver first window due to lack of requests."));
            }
        }

        public final void onNext(T t) {
            if (!this.i) {
                if (fastEnter()) {
                    this.f.onNext(t);
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
            this.p = th;
            this.o = true;
            if (enter()) {
                a();
            }
            this.n.onError(th);
            dispose();
        }

        public final void onComplete() {
            this.o = true;
            if (enter()) {
                a();
            }
            this.n.onComplete();
            dispose();
        }

        public final void request(long j) {
            requested(j);
        }

        public final void cancel() {
            this.cancelled = true;
        }

        public final void dispose() {
            DisposableHelper.dispose(this.g);
        }

        public final void run() {
            if (this.cancelled) {
                this.i = true;
                dispose();
            }
            this.queue.offer(h);
            if (enter()) {
                a();
            }
        }

        private void a() {
            i iVar = this.queue;
            org.b.c cVar = this.n;
            io.reactivex.h.c<T> cVar2 = this.f;
            int i2 = 1;
            while (true) {
                boolean z = this.i;
                boolean z2 = this.o;
                Object poll = iVar.poll();
                if (!z2 || !(poll == null || poll == h)) {
                    if (poll == null) {
                        i2 = leave(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    } else if (poll == h) {
                        cVar2.onComplete();
                        if (!z) {
                            cVar2 = io.reactivex.h.c.create(this.d);
                            this.f = cVar2;
                            long requested = requested();
                            if (requested != 0) {
                                cVar.onNext(cVar2);
                                if (requested != Long.MAX_VALUE) {
                                    produced(1);
                                }
                            } else {
                                this.f = null;
                                this.queue.clear();
                                this.e.cancel();
                                dispose();
                                cVar.onError(new io.reactivex.c.c("Could not deliver first window due to lack of requests."));
                                return;
                            }
                        } else {
                            this.e.cancel();
                        }
                    } else {
                        cVar2.onNext(NotificationLite.getValue(poll));
                    }
                }
            }
            this.f = null;
            iVar.clear();
            dispose();
            Throwable th = this.p;
            if (th != null) {
                cVar2.onError(th);
            } else {
                cVar2.onComplete();
            }
        }
    }

    static final class c<T> extends n<T, Object, j<T>> implements Runnable, d {

        /* renamed from: a  reason: collision with root package name */
        final long f8313a;

        /* renamed from: b  reason: collision with root package name */
        final long f8314b;
        final TimeUnit c;
        final ah.c d;
        final int e;
        final List<io.reactivex.h.c<T>> f = new LinkedList();
        d g;
        volatile boolean h;

        final class a implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            private final io.reactivex.h.c<T> f8316b;

            a(io.reactivex.h.c<T> cVar) {
                this.f8316b = cVar;
            }

            public final void run() {
                c.this.a(this.f8316b);
            }
        }

        static final class b<T> {

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.h.c<T> f8317a;

            /* renamed from: b  reason: collision with root package name */
            final boolean f8318b;

            b(io.reactivex.h.c<T> cVar, boolean z) {
                this.f8317a = cVar;
                this.f8318b = z;
            }
        }

        c(org.b.c<? super j<T>> cVar, long j, long j2, TimeUnit timeUnit, ah.c cVar2, int i) {
            super(cVar, new io.reactivex.internal.d.a());
            this.f8313a = j;
            this.f8314b = j2;
            this.c = timeUnit;
            this.d = cVar2;
            this.e = i;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.g, dVar)) {
                this.g = dVar;
                this.n.onSubscribe(this);
                if (!this.cancelled) {
                    long requested = requested();
                    if (requested != 0) {
                        io.reactivex.h.c create = io.reactivex.h.c.create(this.e);
                        this.f.add(create);
                        this.n.onNext(create);
                        if (requested != Long.MAX_VALUE) {
                            produced(1);
                        }
                        this.d.schedule(new a(create), this.f8313a, this.c);
                        ah.c cVar = this.d;
                        long j = this.f8314b;
                        cVar.schedulePeriodically(this, j, j, this.c);
                        dVar.request(Long.MAX_VALUE);
                        return;
                    }
                    dVar.cancel();
                    this.n.onError(new io.reactivex.c.c("Could not emit the first window due to lack of requests"));
                }
            }
        }

        public final void onNext(T t) {
            if (fastEnter()) {
                for (io.reactivex.h.c<T> onNext : this.f) {
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
            this.p = th;
            this.o = true;
            if (enter()) {
                a();
            }
            this.n.onError(th);
            dispose();
        }

        public final void onComplete() {
            this.o = true;
            if (enter()) {
                a();
            }
            this.n.onComplete();
            dispose();
        }

        public final void request(long j) {
            requested(j);
        }

        public final void cancel() {
            this.cancelled = true;
        }

        public final void dispose() {
            this.d.dispose();
        }

        /* access modifiers changed from: package-private */
        public final void a(io.reactivex.h.c<T> cVar) {
            this.queue.offer(new b(cVar, false));
            if (enter()) {
                a();
            }
        }

        private void a() {
            i iVar = this.queue;
            org.b.c cVar = this.n;
            List<io.reactivex.h.c<T>> list = this.f;
            int i = 1;
            while (!this.h) {
                boolean z = this.o;
                Object poll = iVar.poll();
                boolean z2 = poll == null;
                boolean z3 = poll instanceof b;
                if (z && (z2 || z3)) {
                    iVar.clear();
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
                    dispose();
                    return;
                } else if (z2) {
                    i = leave(-i);
                    if (i == 0) {
                        return;
                    }
                } else if (z3) {
                    b bVar = (b) poll;
                    if (!bVar.f8318b) {
                        list.remove(bVar.f8317a);
                        bVar.f8317a.onComplete();
                        if (list.isEmpty() && this.cancelled) {
                            this.h = true;
                        }
                    } else if (!this.cancelled) {
                        long requested = requested();
                        if (requested != 0) {
                            io.reactivex.h.c create = io.reactivex.h.c.create(this.e);
                            list.add(create);
                            cVar.onNext(create);
                            if (requested != Long.MAX_VALUE) {
                                produced(1);
                            }
                            this.d.schedule(new a(create), this.f8313a, this.c);
                        } else {
                            cVar.onError(new io.reactivex.c.c("Can't emit window due to lack of requests"));
                        }
                    }
                } else {
                    for (io.reactivex.h.c<T> onNext : list) {
                        onNext.onNext(poll);
                    }
                }
            }
            this.g.cancel();
            dispose();
            iVar.clear();
            list.clear();
        }

        public final void run() {
            b bVar = new b(io.reactivex.h.c.create(this.e), true);
            if (!this.cancelled) {
                this.queue.offer(bVar);
            }
            if (enter()) {
                a();
            }
        }
    }

    public ex(j<T> jVar, long j, long j2, TimeUnit timeUnit, ah ahVar, long j3, int i2, boolean z) {
        super(jVar);
        this.c = j;
        this.d = j2;
        this.e = timeUnit;
        this.f = ahVar;
        this.g = j3;
        this.h = i2;
        this.i = z;
    }

    public final void subscribeActual(org.b.c<? super j<T>> cVar) {
        io.reactivex.k.d dVar = new io.reactivex.k.d(cVar);
        if (this.c != this.d) {
            j jVar = this.f7923b;
            c cVar2 = new c(dVar, this.c, this.d, this.e, this.f.createWorker(), this.h);
            jVar.subscribe(cVar2);
        } else if (this.g == Long.MAX_VALUE) {
            j jVar2 = this.f7923b;
            b bVar = new b(dVar, this.c, this.e, this.f, this.h);
            jVar2.subscribe(bVar);
        } else {
            j jVar3 = this.f7923b;
            a aVar = new a(dVar, this.c, this.e, this.f, this.h, this.g, this.i);
            jVar3.subscribe(aVar);
        }
    }
}
