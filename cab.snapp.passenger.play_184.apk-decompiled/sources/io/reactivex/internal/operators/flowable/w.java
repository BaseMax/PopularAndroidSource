package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.b.g;
import io.reactivex.internal.b.j;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.o;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

public final class w<T, R> extends a<T, R> {
    final h<? super T, ? extends org.b.b<? extends R>> c;
    final int d;
    final ErrorMode e;

    /* renamed from: io.reactivex.internal.operators.flowable.w$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8398a = new int[ErrorMode.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            /*
                io.reactivex.internal.util.ErrorMode[] r0 = io.reactivex.internal.util.ErrorMode.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f8398a = r0
                int[] r0 = f8398a     // Catch:{ NoSuchFieldError -> 0x0014 }
                io.reactivex.internal.util.ErrorMode r1 = io.reactivex.internal.util.ErrorMode.BOUNDARY     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f8398a     // Catch:{ NoSuchFieldError -> 0x001f }
                io.reactivex.internal.util.ErrorMode r1 = io.reactivex.internal.util.ErrorMode.END     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.w.AnonymousClass1.<clinit>():void");
        }
    }

    static abstract class a<T, R> extends AtomicInteger implements e<R>, o<T>, org.b.d {

        /* renamed from: a  reason: collision with root package name */
        final d<R> f8399a = new d<>(this);

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends org.b.b<? extends R>> f8400b;
        final int c;
        final int d;
        org.b.d e;
        int f;
        j<T> g;
        volatile boolean h;
        volatile boolean i;
        final io.reactivex.internal.util.b j = new io.reactivex.internal.util.b();
        volatile boolean k;
        int l;

        /* access modifiers changed from: package-private */
        public abstract void a();

        /* access modifiers changed from: package-private */
        public abstract void b();

        a(h<? super T, ? extends org.b.b<? extends R>> hVar, int i2) {
            this.f8400b = hVar;
            this.c = i2;
            this.d = i2 - (i2 >> 2);
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.e, dVar)) {
                this.e = dVar;
                if (dVar instanceof g) {
                    g gVar = (g) dVar;
                    int requestFusion = gVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.l = requestFusion;
                        this.g = gVar;
                        this.h = true;
                        b();
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.l = requestFusion;
                        this.g = gVar;
                        b();
                        dVar.request((long) this.c);
                        return;
                    }
                }
                this.g = new io.reactivex.internal.d.b(this.c);
                b();
                dVar.request((long) this.c);
            }
        }

        public final void onNext(T t) {
            if (this.l == 2 || this.g.offer(t)) {
                a();
                return;
            }
            this.e.cancel();
            onError(new IllegalStateException("Queue full?!"));
        }

        public final void onComplete() {
            this.h = true;
            a();
        }

        public final void innerComplete() {
            this.k = false;
            a();
        }
    }

    static final class b<T, R> extends a<T, R> {
        final org.b.c<? super R> m;
        final boolean n;

        b(org.b.c<? super R> cVar, h<? super T, ? extends org.b.b<? extends R>> hVar, int i, boolean z) {
            super(hVar, i);
            this.m = cVar;
            this.n = z;
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            this.m.onSubscribe(this);
        }

        public final void onError(Throwable th) {
            if (this.j.addThrowable(th)) {
                this.h = true;
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void innerNext(R r) {
            this.m.onNext(r);
        }

        public final void innerError(Throwable th) {
            if (this.j.addThrowable(th)) {
                if (!this.n) {
                    this.e.cancel();
                    this.h = true;
                }
                this.k = false;
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void request(long j) {
            this.f8399a.request(j);
        }

        public final void cancel() {
            if (!this.i) {
                this.i = true;
                this.f8399a.cancel();
                this.e.cancel();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            Object obj;
            if (getAndIncrement() == 0) {
                while (!this.i) {
                    if (!this.k) {
                        boolean z = this.h;
                        if (!z || this.n || ((Throwable) this.j.get()) == null) {
                            try {
                                Object poll = this.g.poll();
                                boolean z2 = poll == null;
                                if (z && z2) {
                                    Throwable terminate = this.j.terminate();
                                    if (terminate != null) {
                                        this.m.onError(terminate);
                                        return;
                                    } else {
                                        this.m.onComplete();
                                        return;
                                    }
                                } else if (!z2) {
                                    try {
                                        org.b.b bVar = (org.b.b) io.reactivex.internal.a.b.requireNonNull(this.f8400b.apply(poll), "The mapper returned a null Publisher");
                                        if (this.l != 1) {
                                            int i = this.f + 1;
                                            if (i == this.d) {
                                                this.f = 0;
                                                this.e.request((long) i);
                                            } else {
                                                this.f = i;
                                            }
                                        }
                                        if (bVar instanceof Callable) {
                                            try {
                                                obj = ((Callable) bVar).call();
                                            } catch (Throwable th) {
                                                io.reactivex.c.b.throwIfFatal(th);
                                                this.j.addThrowable(th);
                                                if (!this.n) {
                                                    this.e.cancel();
                                                    this.m.onError(this.j.terminate());
                                                    return;
                                                }
                                                obj = null;
                                            }
                                            if (obj == null) {
                                                continue;
                                            } else if (this.f8399a.isUnbounded()) {
                                                this.m.onNext(obj);
                                            } else {
                                                this.k = true;
                                                this.f8399a.setSubscription(new f(obj, this.f8399a));
                                            }
                                        } else {
                                            this.k = true;
                                            bVar.subscribe(this.f8399a);
                                        }
                                    } catch (Throwable th2) {
                                        io.reactivex.c.b.throwIfFatal(th2);
                                        this.e.cancel();
                                        this.j.addThrowable(th2);
                                        this.m.onError(this.j.terminate());
                                        return;
                                    }
                                }
                            } catch (Throwable th3) {
                                io.reactivex.c.b.throwIfFatal(th3);
                                this.e.cancel();
                                this.j.addThrowable(th3);
                                this.m.onError(this.j.terminate());
                                return;
                            }
                        } else {
                            this.m.onError(this.j.terminate());
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                    }
                }
            }
        }
    }

    static final class c<T, R> extends a<T, R> {
        final org.b.c<? super R> m;
        final AtomicInteger n = new AtomicInteger();

        c(org.b.c<? super R> cVar, h<? super T, ? extends org.b.b<? extends R>> hVar, int i) {
            super(hVar, i);
            this.m = cVar;
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            this.m.onSubscribe(this);
        }

        public final void onError(Throwable th) {
            if (this.j.addThrowable(th)) {
                this.f8399a.cancel();
                if (getAndIncrement() == 0) {
                    this.m.onError(this.j.terminate());
                }
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void innerNext(R r) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.m.onNext(r);
                if (!compareAndSet(1, 0)) {
                    this.m.onError(this.j.terminate());
                }
            }
        }

        public final void innerError(Throwable th) {
            if (this.j.addThrowable(th)) {
                this.e.cancel();
                if (getAndIncrement() == 0) {
                    this.m.onError(this.j.terminate());
                }
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void request(long j) {
            this.f8399a.request(j);
        }

        public final void cancel() {
            if (!this.i) {
                this.i = true;
                this.f8399a.cancel();
                this.e.cancel();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (this.n.getAndIncrement() == 0) {
                while (!this.i) {
                    if (!this.k) {
                        boolean z = this.h;
                        try {
                            Object poll = this.g.poll();
                            boolean z2 = poll == null;
                            if (z && z2) {
                                this.m.onComplete();
                                return;
                            } else if (!z2) {
                                try {
                                    org.b.b bVar = (org.b.b) io.reactivex.internal.a.b.requireNonNull(this.f8400b.apply(poll), "The mapper returned a null Publisher");
                                    if (this.l != 1) {
                                        int i = this.f + 1;
                                        if (i == this.d) {
                                            this.f = 0;
                                            this.e.request((long) i);
                                        } else {
                                            this.f = i;
                                        }
                                    }
                                    if (bVar instanceof Callable) {
                                        try {
                                            Object call = ((Callable) bVar).call();
                                            if (call == null) {
                                                continue;
                                            } else if (!this.f8399a.isUnbounded()) {
                                                this.k = true;
                                                this.f8399a.setSubscription(new f(call, this.f8399a));
                                            } else if (get() == 0 && compareAndSet(0, 1)) {
                                                this.m.onNext(call);
                                                if (!compareAndSet(1, 0)) {
                                                    this.m.onError(this.j.terminate());
                                                    return;
                                                }
                                            }
                                        } catch (Throwable th) {
                                            io.reactivex.c.b.throwIfFatal(th);
                                            this.e.cancel();
                                            this.j.addThrowable(th);
                                            this.m.onError(this.j.terminate());
                                            return;
                                        }
                                    } else {
                                        this.k = true;
                                        bVar.subscribe(this.f8399a);
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.c.b.throwIfFatal(th2);
                                    this.e.cancel();
                                    this.j.addThrowable(th2);
                                    this.m.onError(this.j.terminate());
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            io.reactivex.c.b.throwIfFatal(th3);
                            this.e.cancel();
                            this.j.addThrowable(th3);
                            this.m.onError(this.j.terminate());
                            return;
                        }
                    }
                    if (this.n.decrementAndGet() == 0) {
                    }
                }
            }
        }
    }

    static final class d<R> extends io.reactivex.internal.subscriptions.e implements o<R> {

        /* renamed from: a  reason: collision with root package name */
        final e<R> f8401a;

        /* renamed from: b  reason: collision with root package name */
        long f8402b;

        d(e<R> eVar) {
            super(false);
            this.f8401a = eVar;
        }

        public final void onSubscribe(org.b.d dVar) {
            setSubscription(dVar);
        }

        public final void onNext(R r) {
            this.f8402b++;
            this.f8401a.innerNext(r);
        }

        public final void onError(Throwable th) {
            long j = this.f8402b;
            if (j != 0) {
                this.f8402b = 0;
                produced(j);
            }
            this.f8401a.innerError(th);
        }

        public final void onComplete() {
            long j = this.f8402b;
            if (j != 0) {
                this.f8402b = 0;
                produced(j);
            }
            this.f8401a.innerComplete();
        }
    }

    interface e<T> {
        void innerComplete();

        void innerError(Throwable th);

        void innerNext(T t);
    }

    static final class f<T> implements org.b.d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f8403a;

        /* renamed from: b  reason: collision with root package name */
        final T f8404b;
        boolean c;

        public final void cancel() {
        }

        f(T t, org.b.c<? super T> cVar) {
            this.f8404b = t;
            this.f8403a = cVar;
        }

        public final void request(long j) {
            if (j > 0 && !this.c) {
                this.c = true;
                org.b.c<? super T> cVar = this.f8403a;
                cVar.onNext(this.f8404b);
                cVar.onComplete();
            }
        }
    }

    public w(io.reactivex.j<T> jVar, h<? super T, ? extends org.b.b<? extends R>> hVar, int i, ErrorMode errorMode) {
        super(jVar);
        this.c = hVar;
        this.d = i;
        this.e = errorMode;
    }

    public static <T, R> org.b.c<T> subscribe(org.b.c<? super R> cVar, h<? super T, ? extends org.b.b<? extends R>> hVar, int i, ErrorMode errorMode) {
        int i2 = AnonymousClass1.f8398a[errorMode.ordinal()];
        if (i2 == 1) {
            return new b(cVar, hVar, i, false);
        }
        if (i2 != 2) {
            return new c(cVar, hVar, i);
        }
        return new b(cVar, hVar, i, true);
    }

    public final void subscribeActual(org.b.c<? super R> cVar) {
        if (!dk.tryScalarXMapSubscribe(this.f7923b, cVar, this.c)) {
            this.f7923b.subscribe(subscribe(cVar, this.c, this.d, this.e));
        }
    }
}
