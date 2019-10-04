package io.reactivex.internal.operators.flowable;

import io.reactivex.e.c;
import io.reactivex.e.h;
import io.reactivex.internal.operators.flowable.bo;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.b;
import org.b.d;

public final class bu<TLeft, TRight, TLeftEnd, TRightEnd, R> extends a<TLeft, R> {
    final b<? extends TRight> c;
    final h<? super TLeft, ? extends b<TLeftEnd>> d;
    final h<? super TRight, ? extends b<TRightEnd>> e;
    final c<? super TLeft, ? super TRight, ? extends R> f;

    static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements bo.b, d {
        static final Integer o = 1;
        static final Integer p = 2;
        static final Integer q = 3;
        static final Integer r = 4;

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super R> f8061a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f8062b = new AtomicLong();
        final io.reactivex.internal.d.c<Object> c = new io.reactivex.internal.d.c<>(j.bufferSize());
        final io.reactivex.b.b d = new io.reactivex.b.b();
        final Map<Integer, TLeft> e = new LinkedHashMap();
        final Map<Integer, TRight> f = new LinkedHashMap();
        final AtomicReference<Throwable> g = new AtomicReference<>();
        final h<? super TLeft, ? extends b<TLeftEnd>> h;
        final h<? super TRight, ? extends b<TRightEnd>> i;
        final c<? super TLeft, ? super TRight, ? extends R> j;
        final AtomicInteger k;
        int l;
        int m;
        volatile boolean n;

        a(org.b.c<? super R> cVar, h<? super TLeft, ? extends b<TLeftEnd>> hVar, h<? super TRight, ? extends b<TRightEnd>> hVar2, c<? super TLeft, ? super TRight, ? extends R> cVar2) {
            this.f8061a = cVar;
            this.h = hVar;
            this.i = hVar2;
            this.j = cVar2;
            this.k = new AtomicInteger(2);
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.f8062b, j2);
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
                org.b.c<? super R> cVar2 = this.f8061a;
                boolean z = true;
                int i2 = 1;
                while (!this.n) {
                    if (this.g.get() != null) {
                        cVar.clear();
                        this.d.dispose();
                        a(cVar2);
                        return;
                    }
                    boolean z2 = this.k.get() == 0;
                    Integer num = (Integer) cVar.poll();
                    boolean z3 = num == null;
                    if (!z2 || !z3) {
                        if (!z3) {
                            Object poll = cVar.poll();
                            if (num == o) {
                                int i3 = this.l;
                                this.l = i3 + 1;
                                this.e.put(Integer.valueOf(i3), poll);
                                try {
                                    b bVar = (b) io.reactivex.internal.a.b.requireNonNull(this.h.apply(poll), "The leftEnd returned a null Publisher");
                                    bo.c cVar3 = new bo.c(this, z, i3);
                                    this.d.add(cVar3);
                                    bVar.subscribe(cVar3);
                                    if (this.g.get() != null) {
                                        cVar.clear();
                                        this.d.dispose();
                                        a(cVar2);
                                        return;
                                    }
                                    long j2 = this.f8062b.get();
                                    long j3 = 0;
                                    for (TRight apply : this.f.values()) {
                                        try {
                                            Object requireNonNull = io.reactivex.internal.a.b.requireNonNull(this.j.apply(poll, apply), "The resultSelector returned a null value");
                                            if (j3 != j2) {
                                                cVar2.onNext(requireNonNull);
                                                j3++;
                                            } else {
                                                io.reactivex.internal.util.h.addThrowable(this.g, new io.reactivex.c.c("Could not emit value due to lack of requests"));
                                                cVar.clear();
                                                this.d.dispose();
                                                a(cVar2);
                                                return;
                                            }
                                        } catch (Throwable th) {
                                            a(th, cVar2, cVar);
                                            return;
                                        }
                                    }
                                    if (j3 != 0) {
                                        io.reactivex.internal.util.c.produced(this.f8062b, j3);
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
                                    b bVar2 = (b) io.reactivex.internal.a.b.requireNonNull(this.i.apply(poll), "The rightEnd returned a null Publisher");
                                    bo.c cVar4 = new bo.c(this, false, i4);
                                    this.d.add(cVar4);
                                    bVar2.subscribe(cVar4);
                                    if (this.g.get() != null) {
                                        cVar.clear();
                                        this.d.dispose();
                                        a(cVar2);
                                        return;
                                    }
                                    long j4 = this.f8062b.get();
                                    long j5 = 0;
                                    for (TLeft apply2 : this.e.values()) {
                                        try {
                                            Object requireNonNull2 = io.reactivex.internal.a.b.requireNonNull(this.j.apply(apply2, poll), "The resultSelector returned a null value");
                                            if (j5 != j4) {
                                                cVar2.onNext(requireNonNull2);
                                                j5++;
                                            } else {
                                                io.reactivex.internal.util.h.addThrowable(this.g, new io.reactivex.c.c("Could not emit value due to lack of requests"));
                                                cVar.clear();
                                                this.d.dispose();
                                                a(cVar2);
                                                return;
                                            }
                                        } catch (Throwable th3) {
                                            a(th3, cVar2, cVar);
                                            return;
                                        }
                                    }
                                    if (j5 != 0) {
                                        io.reactivex.internal.util.c.produced(this.f8062b, j5);
                                    }
                                } catch (Throwable th4) {
                                    a(th4, cVar2, cVar);
                                    return;
                                }
                            } else if (num == q) {
                                bo.c cVar5 = (bo.c) poll;
                                this.e.remove(Integer.valueOf(cVar5.c));
                                this.d.remove(cVar5);
                            } else if (num == r) {
                                bo.c cVar6 = (bo.c) poll;
                                this.f.remove(Integer.valueOf(cVar6.c));
                                this.d.remove(cVar6);
                            }
                        } else {
                            i2 = addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        }
                        z = true;
                    } else {
                        this.e.clear();
                        this.f.clear();
                        this.d.dispose();
                        cVar2.onComplete();
                        return;
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

        public final void innerComplete(bo.d dVar) {
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

        public final void innerClose(boolean z, bo.c cVar) {
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

    public bu(j<TLeft> jVar, b<? extends TRight> bVar, h<? super TLeft, ? extends b<TLeftEnd>> hVar, h<? super TRight, ? extends b<TRightEnd>> hVar2, c<? super TLeft, ? super TRight, ? extends R> cVar) {
        super(jVar);
        this.c = bVar;
        this.d = hVar;
        this.e = hVar2;
        this.f = cVar;
    }

    public final void subscribeActual(org.b.c<? super R> cVar) {
        a aVar = new a(cVar, this.d, this.e, this.f);
        cVar.onSubscribe(aVar);
        bo.d dVar = new bo.d(aVar, true);
        aVar.d.add(dVar);
        bo.d dVar2 = new bo.d(aVar, false);
        aVar.d.add(dVar2);
        this.f7923b.subscribe(dVar);
        this.c.subscribe(dVar2);
    }
}
