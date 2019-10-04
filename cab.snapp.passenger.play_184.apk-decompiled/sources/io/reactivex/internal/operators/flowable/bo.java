package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class bo<TLeft, TRight, TLeftEnd, TRightEnd, R> extends a<TLeft, R> {
    final org.b.b<? extends TRight> c;
    final h<? super TLeft, ? extends org.b.b<TLeftEnd>> d;
    final h<? super TRight, ? extends org.b.b<TRightEnd>> e;
    final io.reactivex.e.c<? super TLeft, ? super j<TRight>, ? extends R> f;

    static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements b, org.b.d {
        static final Integer o = 1;
        static final Integer p = 2;
        static final Integer q = 3;
        static final Integer r = 4;

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super R> f8042a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f8043b = new AtomicLong();
        final io.reactivex.internal.d.c<Object> c = new io.reactivex.internal.d.c<>(j.bufferSize());
        final io.reactivex.b.b d = new io.reactivex.b.b();
        final Map<Integer, io.reactivex.h.c<TRight>> e = new LinkedHashMap();
        final Map<Integer, TRight> f = new LinkedHashMap();
        final AtomicReference<Throwable> g = new AtomicReference<>();
        final h<? super TLeft, ? extends org.b.b<TLeftEnd>> h;
        final h<? super TRight, ? extends org.b.b<TRightEnd>> i;
        final io.reactivex.e.c<? super TLeft, ? super j<TRight>, ? extends R> j;
        final AtomicInteger k;
        int l;
        int m;
        volatile boolean n;

        a(org.b.c<? super R> cVar, h<? super TLeft, ? extends org.b.b<TLeftEnd>> hVar, h<? super TRight, ? extends org.b.b<TRightEnd>> hVar2, io.reactivex.e.c<? super TLeft, ? super j<TRight>, ? extends R> cVar2) {
            this.f8042a = cVar;
            this.h = hVar;
            this.i = hVar2;
            this.j = cVar2;
            this.k = new AtomicInteger(2);
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.f8043b, j2);
            }
        }

        public final void cancel() {
            if (!this.n) {
                this.n = true;
                this.d.dispose();
                if (getAndIncrement() == 0) {
                    this.c.clear();
                }
            }
        }

        private void a(org.b.c<?> cVar) {
            Throwable terminate = io.reactivex.internal.util.h.terminate(this.g);
            for (io.reactivex.h.c<TRight> onError : this.e.values()) {
                onError.onError(terminate);
            }
            this.e.clear();
            this.f.clear();
            cVar.onError(terminate);
        }

        private void a(Throwable th, org.b.c<?> cVar, io.reactivex.internal.b.j<?> jVar) {
            io.reactivex.c.b.throwIfFatal(th);
            io.reactivex.internal.util.h.addThrowable(this.g, th);
            jVar.clear();
            this.d.dispose();
            a(cVar);
        }

        private void a() {
            if (getAndIncrement() == 0) {
                io.reactivex.internal.d.c<Object> cVar = this.c;
                org.b.c<? super R> cVar2 = this.f8042a;
                int i2 = 1;
                while (!this.n) {
                    if (this.g.get() != null) {
                        cVar.clear();
                        this.d.dispose();
                        a(cVar2);
                        return;
                    }
                    boolean z = this.k.get() == 0;
                    Integer num = (Integer) cVar.poll();
                    boolean z2 = num == null;
                    if (z && z2) {
                        for (io.reactivex.h.c<TRight> onComplete : this.e.values()) {
                            onComplete.onComplete();
                        }
                        this.e.clear();
                        this.f.clear();
                        this.d.dispose();
                        cVar2.onComplete();
                        return;
                    } else if (!z2) {
                        Object poll = cVar.poll();
                        if (num == o) {
                            io.reactivex.h.c create = io.reactivex.h.c.create();
                            int i3 = this.l;
                            this.l = i3 + 1;
                            this.e.put(Integer.valueOf(i3), create);
                            try {
                                org.b.b bVar = (org.b.b) io.reactivex.internal.a.b.requireNonNull(this.h.apply(poll), "The leftEnd returned a null Publisher");
                                c cVar3 = new c(this, true, i3);
                                this.d.add(cVar3);
                                bVar.subscribe(cVar3);
                                if (this.g.get() != null) {
                                    cVar.clear();
                                    this.d.dispose();
                                    a(cVar2);
                                    return;
                                }
                                try {
                                    Object requireNonNull = io.reactivex.internal.a.b.requireNonNull(this.j.apply(poll, create), "The resultSelector returned a null value");
                                    if (this.f8043b.get() != 0) {
                                        cVar2.onNext(requireNonNull);
                                        io.reactivex.internal.util.c.produced(this.f8043b, 1);
                                        for (TRight onNext : this.f.values()) {
                                            create.onNext(onNext);
                                        }
                                    } else {
                                        a(new io.reactivex.c.c("Could not emit value due to lack of requests"), cVar2, cVar);
                                        return;
                                    }
                                } catch (Throwable th) {
                                    a(th, cVar2, cVar);
                                    return;
                                }
                            } catch (Throwable th2) {
                                a(th2, cVar2, cVar);
                                return;
                            }
                        } else if (num == p) {
                            int i4 = this.m;
                            this.m = i4 + 1;
                            this.f.put(Integer.valueOf(i4), poll);
                            try {
                                org.b.b bVar2 = (org.b.b) io.reactivex.internal.a.b.requireNonNull(this.i.apply(poll), "The rightEnd returned a null Publisher");
                                c cVar4 = new c(this, false, i4);
                                this.d.add(cVar4);
                                bVar2.subscribe(cVar4);
                                if (this.g.get() != null) {
                                    cVar.clear();
                                    this.d.dispose();
                                    a(cVar2);
                                    return;
                                }
                                for (io.reactivex.h.c<TRight> onNext2 : this.e.values()) {
                                    onNext2.onNext(poll);
                                }
                            } catch (Throwable th3) {
                                a(th3, cVar2, cVar);
                                return;
                            }
                        } else if (num == q) {
                            c cVar5 = (c) poll;
                            io.reactivex.h.c remove = this.e.remove(Integer.valueOf(cVar5.c));
                            this.d.remove(cVar5);
                            if (remove != null) {
                                remove.onComplete();
                            }
                        } else if (num == r) {
                            c cVar6 = (c) poll;
                            this.f.remove(Integer.valueOf(cVar6.c));
                            this.d.remove(cVar6);
                        }
                    } else {
                        i2 = addAndGet(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    }
                }
                cVar.clear();
            }
        }

        public final void innerError(Throwable th) {
            if (io.reactivex.internal.util.h.addThrowable(this.g, th)) {
                this.k.decrementAndGet();
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void innerComplete(d dVar) {
            this.d.delete(dVar);
            this.k.decrementAndGet();
            a();
        }

        public final void innerValue(boolean z, Object obj) {
            synchronized (this) {
                this.c.offer(z ? o : p, obj);
            }
            a();
        }

        public final void innerClose(boolean z, c cVar) {
            synchronized (this) {
                this.c.offer(z ? q : r, cVar);
            }
            a();
        }

        public final void innerCloseError(Throwable th) {
            if (io.reactivex.internal.util.h.addThrowable(this.g, th)) {
                a();
            } else {
                io.reactivex.g.a.onError(th);
            }
        }
    }

    interface b {
        void innerClose(boolean z, c cVar);

        void innerCloseError(Throwable th);

        void innerComplete(d dVar);

        void innerError(Throwable th);

        void innerValue(boolean z, Object obj);
    }

    static final class c extends AtomicReference<org.b.d> implements io.reactivex.b.c, o<Object> {

        /* renamed from: a  reason: collision with root package name */
        final b f8044a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f8045b;
        final int c;

        c(b bVar, boolean z, int i) {
            this.f8044a = bVar;
            this.f8045b = z;
            this.c = i;
        }

        public final void dispose() {
            SubscriptionHelper.cancel(this);
        }

        public final boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        public final void onSubscribe(org.b.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }

        public final void onNext(Object obj) {
            if (SubscriptionHelper.cancel(this)) {
                this.f8044a.innerClose(this.f8045b, this);
            }
        }

        public final void onError(Throwable th) {
            this.f8044a.innerCloseError(th);
        }

        public final void onComplete() {
            this.f8044a.innerClose(this.f8045b, this);
        }
    }

    static final class d extends AtomicReference<org.b.d> implements io.reactivex.b.c, o<Object> {

        /* renamed from: a  reason: collision with root package name */
        final b f8046a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f8047b;

        d(b bVar, boolean z) {
            this.f8046a = bVar;
            this.f8047b = z;
        }

        public final void dispose() {
            SubscriptionHelper.cancel(this);
        }

        public final boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        public final void onSubscribe(org.b.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }

        public final void onNext(Object obj) {
            this.f8046a.innerValue(this.f8047b, obj);
        }

        public final void onError(Throwable th) {
            this.f8046a.innerError(th);
        }

        public final void onComplete() {
            this.f8046a.innerComplete(this);
        }
    }

    public bo(j<TLeft> jVar, org.b.b<? extends TRight> bVar, h<? super TLeft, ? extends org.b.b<TLeftEnd>> hVar, h<? super TRight, ? extends org.b.b<TRightEnd>> hVar2, io.reactivex.e.c<? super TLeft, ? super j<TRight>, ? extends R> cVar) {
        super(jVar);
        this.c = bVar;
        this.d = hVar;
        this.e = hVar2;
        this.f = cVar;
    }

    public final void subscribeActual(org.b.c<? super R> cVar) {
        a aVar = new a(cVar, this.d, this.e, this.f);
        cVar.onSubscribe(aVar);
        d dVar = new d(aVar, true);
        aVar.d.add(dVar);
        d dVar2 = new d(aVar, false);
        aVar.d.add(dVar2);
        this.f7923b.subscribe(dVar);
        this.c.subscribe(dVar2);
    }
}
