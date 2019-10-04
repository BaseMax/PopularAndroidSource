package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.b;
import io.reactivex.e.c;
import io.reactivex.e.h;
import io.reactivex.internal.operators.c.bk;
import io.reactivex.z;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class br<TLeft, TRight, TLeftEnd, TRightEnd, R> extends a<TLeft, R> {

    /* renamed from: b  reason: collision with root package name */
    final ae<? extends TRight> f7248b;
    final h<? super TLeft, ? extends ae<TLeftEnd>> c;
    final h<? super TRight, ? extends ae<TRightEnd>> d;
    final c<? super TLeft, ? super TRight, ? extends R> e;

    static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements io.reactivex.b.c, bk.b {
        static final Integer n = 1;
        static final Integer o = 2;
        static final Integer p = 3;
        static final Integer q = 4;

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7249a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.d.c<Object> f7250b = new io.reactivex.internal.d.c<>(z.bufferSize());
        final b c = new b();
        final Map<Integer, TLeft> d = new LinkedHashMap();
        final Map<Integer, TRight> e = new LinkedHashMap();
        final AtomicReference<Throwable> f = new AtomicReference<>();
        final h<? super TLeft, ? extends ae<TLeftEnd>> g;
        final h<? super TRight, ? extends ae<TRightEnd>> h;
        final c<? super TLeft, ? super TRight, ? extends R> i;
        final AtomicInteger j;
        int k;
        int l;
        volatile boolean m;

        a(ag<? super R> agVar, h<? super TLeft, ? extends ae<TLeftEnd>> hVar, h<? super TRight, ? extends ae<TRightEnd>> hVar2, c<? super TLeft, ? super TRight, ? extends R> cVar) {
            this.f7249a = agVar;
            this.g = hVar;
            this.h = hVar2;
            this.i = cVar;
            this.j = new AtomicInteger(2);
        }

        public final void dispose() {
            if (!this.m) {
                this.m = true;
                this.c.dispose();
                if (getAndIncrement() == 0) {
                    this.f7250b.clear();
                }
            }
        }

        public final boolean isDisposed() {
            return this.m;
        }

        private void a(ag<?> agVar) {
            Throwable terminate = io.reactivex.internal.util.h.terminate(this.f);
            this.d.clear();
            this.e.clear();
            agVar.onError(terminate);
        }

        private void a(Throwable th, ag<?> agVar, io.reactivex.internal.d.c<?> cVar) {
            io.reactivex.c.b.throwIfFatal(th);
            io.reactivex.internal.util.h.addThrowable(this.f, th);
            cVar.clear();
            this.c.dispose();
            a(agVar);
        }

        private void a() {
            if (getAndIncrement() == 0) {
                io.reactivex.internal.d.c<Object> cVar = this.f7250b;
                ag<? super R> agVar = this.f7249a;
                int i2 = 1;
                while (!this.m) {
                    if (this.f.get() != null) {
                        cVar.clear();
                        this.c.dispose();
                        a(agVar);
                        return;
                    }
                    boolean z = this.j.get() == 0;
                    Integer num = (Integer) cVar.poll();
                    boolean z2 = num == null;
                    if (z && z2) {
                        this.d.clear();
                        this.e.clear();
                        this.c.dispose();
                        agVar.onComplete();
                        return;
                    } else if (!z2) {
                        Object poll = cVar.poll();
                        if (num == n) {
                            int i3 = this.k;
                            this.k = i3 + 1;
                            this.d.put(Integer.valueOf(i3), poll);
                            try {
                                ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.g.apply(poll), "The leftEnd returned a null ObservableSource");
                                bk.c cVar2 = new bk.c(this, true, i3);
                                this.c.add(cVar2);
                                aeVar.subscribe(cVar2);
                                if (this.f.get() != null) {
                                    cVar.clear();
                                    this.c.dispose();
                                    a(agVar);
                                    return;
                                }
                                for (TRight apply : this.e.values()) {
                                    try {
                                        agVar.onNext(io.reactivex.internal.a.b.requireNonNull(this.i.apply(poll, apply), "The resultSelector returned a null value"));
                                    } catch (Throwable th) {
                                        a(th, agVar, cVar);
                                        return;
                                    }
                                }
                            } catch (Throwable th2) {
                                a(th2, agVar, cVar);
                                return;
                            }
                        } else if (num == o) {
                            int i4 = this.l;
                            this.l = i4 + 1;
                            this.e.put(Integer.valueOf(i4), poll);
                            try {
                                ae aeVar2 = (ae) io.reactivex.internal.a.b.requireNonNull(this.h.apply(poll), "The rightEnd returned a null ObservableSource");
                                bk.c cVar3 = new bk.c(this, false, i4);
                                this.c.add(cVar3);
                                aeVar2.subscribe(cVar3);
                                if (this.f.get() != null) {
                                    cVar.clear();
                                    this.c.dispose();
                                    a(agVar);
                                    return;
                                }
                                for (TLeft apply2 : this.d.values()) {
                                    try {
                                        agVar.onNext(io.reactivex.internal.a.b.requireNonNull(this.i.apply(apply2, poll), "The resultSelector returned a null value"));
                                    } catch (Throwable th3) {
                                        a(th3, agVar, cVar);
                                        return;
                                    }
                                }
                            } catch (Throwable th4) {
                                a(th4, agVar, cVar);
                                return;
                            }
                        } else if (num == p) {
                            bk.c cVar4 = (bk.c) poll;
                            this.d.remove(Integer.valueOf(cVar4.c));
                            this.c.remove(cVar4);
                        } else {
                            bk.c cVar5 = (bk.c) poll;
                            this.e.remove(Integer.valueOf(cVar5.c));
                            this.c.remove(cVar5);
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
            if (io.reactivex.internal.util.h.addThrowable(this.f, th)) {
                this.j.decrementAndGet();
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void innerComplete(bk.d dVar) {
            this.c.delete(dVar);
            this.j.decrementAndGet();
            a();
        }

        public final void innerValue(boolean z, Object obj) {
            synchronized (this) {
                this.f7250b.offer(z ? n : o, obj);
            }
            a();
        }

        public final void innerClose(boolean z, bk.c cVar) {
            synchronized (this) {
                this.f7250b.offer(z ? p : q, cVar);
            }
            a();
        }

        public final void innerCloseError(Throwable th) {
            if (io.reactivex.internal.util.h.addThrowable(this.f, th)) {
                a();
            } else {
                io.reactivex.g.a.onError(th);
            }
        }
    }

    public br(ae<TLeft> aeVar, ae<? extends TRight> aeVar2, h<? super TLeft, ? extends ae<TLeftEnd>> hVar, h<? super TRight, ? extends ae<TRightEnd>> hVar2, c<? super TLeft, ? super TRight, ? extends R> cVar) {
        super(aeVar);
        this.f7248b = aeVar2;
        this.c = hVar;
        this.d = hVar2;
        this.e = cVar;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        a aVar = new a(agVar, this.c, this.d, this.e);
        agVar.onSubscribe(aVar);
        bk.d dVar = new bk.d(aVar, true);
        aVar.c.add(dVar);
        bk.d dVar2 = new bk.d(aVar, false);
        aVar.c.add(dVar2);
        this.f7091a.subscribe(dVar);
        this.f7248b.subscribe(dVar2);
    }
}
