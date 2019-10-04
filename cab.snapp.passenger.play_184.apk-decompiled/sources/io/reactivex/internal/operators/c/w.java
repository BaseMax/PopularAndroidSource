package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.b.e;
import io.reactivex.internal.b.j;
import io.reactivex.internal.c.r;
import io.reactivex.internal.c.s;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.b;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;

public final class w<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends ae<? extends R>> f7631b;
    final ErrorMode c;
    final int d;
    final int e;

    static final class a<T, R> extends AtomicInteger implements ag<T>, c, s<R> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7632a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ae<? extends R>> f7633b;
        final int c;
        final int d;
        final ErrorMode e;
        final b f = new b();
        final ArrayDeque<r<R>> g = new ArrayDeque<>();
        j<T> h;
        c i;
        volatile boolean j;
        int k;
        volatile boolean l;
        r<R> m;
        int n;

        a(ag<? super R> agVar, h<? super T, ? extends ae<? extends R>> hVar, int i2, int i3, ErrorMode errorMode) {
            this.f7632a = agVar;
            this.f7633b = hVar;
            this.c = i2;
            this.d = i3;
            this.e = errorMode;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.i, cVar)) {
                this.i = cVar;
                if (cVar instanceof e) {
                    e eVar = (e) cVar;
                    int requestFusion = eVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.k = requestFusion;
                        this.h = eVar;
                        this.j = true;
                        this.f7632a.onSubscribe(this);
                        drain();
                        return;
                    } else if (requestFusion == 2) {
                        this.k = requestFusion;
                        this.h = eVar;
                        this.f7632a.onSubscribe(this);
                        return;
                    }
                }
                this.h = new io.reactivex.internal.d.c(this.d);
                this.f7632a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (this.k == 0) {
                this.h.offer(t);
            }
            drain();
        }

        public final void onError(Throwable th) {
            if (this.f.addThrowable(th)) {
                this.j = true;
                drain();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.j = true;
            drain();
        }

        public final void dispose() {
            if (!this.l) {
                this.l = true;
                this.i.dispose();
                if (getAndIncrement() == 0) {
                    do {
                        this.h.clear();
                        a();
                    } while (decrementAndGet() != 0);
                }
            }
        }

        public final boolean isDisposed() {
            return this.l;
        }

        private void a() {
            r<R> rVar = this.m;
            if (rVar != null) {
                rVar.dispose();
            }
            while (true) {
                r poll = this.g.poll();
                if (poll != null) {
                    poll.dispose();
                } else {
                    return;
                }
            }
        }

        public final void innerNext(r<R> rVar, R r) {
            rVar.queue().offer(r);
            drain();
        }

        public final void innerError(r<R> rVar, Throwable th) {
            if (this.f.addThrowable(th)) {
                if (this.e == ErrorMode.IMMEDIATE) {
                    this.i.dispose();
                }
                rVar.setDone();
                drain();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void innerComplete(r<R> rVar) {
            rVar.setDone();
            drain();
        }

        public final void drain() {
            if (getAndIncrement() == 0) {
                j<T> jVar = this.h;
                ArrayDeque<r<R>> arrayDeque = this.g;
                ag<? super R> agVar = this.f7632a;
                ErrorMode errorMode = this.e;
                int i2 = 1;
                while (true) {
                    int i3 = this.n;
                    while (true) {
                        if (i3 == this.c) {
                            break;
                        } else if (this.l) {
                            jVar.clear();
                            a();
                            return;
                        } else if (errorMode != ErrorMode.IMMEDIATE || ((Throwable) this.f.get()) == null) {
                            try {
                                T poll = jVar.poll();
                                if (poll == null) {
                                    break;
                                }
                                ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f7633b.apply(poll), "The mapper returned a null ObservableSource");
                                r rVar = new r(this, this.d);
                                arrayDeque.offer(rVar);
                                aeVar.subscribe(rVar);
                                i3++;
                            } catch (Throwable th) {
                                io.reactivex.c.b.throwIfFatal(th);
                                this.i.dispose();
                                jVar.clear();
                                a();
                                this.f.addThrowable(th);
                                agVar.onError(this.f.terminate());
                                return;
                            }
                        } else {
                            jVar.clear();
                            a();
                            agVar.onError(this.f.terminate());
                            return;
                        }
                    }
                    this.n = i3;
                    if (this.l) {
                        jVar.clear();
                        a();
                        return;
                    } else if (errorMode != ErrorMode.IMMEDIATE || ((Throwable) this.f.get()) == null) {
                        r<R> rVar2 = this.m;
                        if (rVar2 == null) {
                            if (errorMode != ErrorMode.BOUNDARY || ((Throwable) this.f.get()) == null) {
                                boolean z = this.j;
                                r<R> poll2 = arrayDeque.poll();
                                boolean z2 = poll2 == null;
                                if (!z || !z2) {
                                    if (!z2) {
                                        this.m = poll2;
                                    }
                                    rVar2 = poll2;
                                } else if (((Throwable) this.f.get()) != null) {
                                    jVar.clear();
                                    a();
                                    agVar.onError(this.f.terminate());
                                    return;
                                } else {
                                    agVar.onComplete();
                                    return;
                                }
                            } else {
                                jVar.clear();
                                a();
                                agVar.onError(this.f.terminate());
                                return;
                            }
                        }
                        if (rVar2 != null) {
                            j<R> queue = rVar2.queue();
                            while (!this.l) {
                                boolean isDone = rVar2.isDone();
                                if (errorMode != ErrorMode.IMMEDIATE || ((Throwable) this.f.get()) == null) {
                                    try {
                                        R poll3 = queue.poll();
                                        boolean z3 = poll3 == null;
                                        if (isDone && z3) {
                                            this.m = null;
                                            this.n--;
                                        } else if (!z3) {
                                            agVar.onNext(poll3);
                                        }
                                    } catch (Throwable th2) {
                                        io.reactivex.c.b.throwIfFatal(th2);
                                        this.f.addThrowable(th2);
                                        this.m = null;
                                        this.n--;
                                    }
                                } else {
                                    jVar.clear();
                                    a();
                                    agVar.onError(this.f.terminate());
                                    return;
                                }
                            }
                            jVar.clear();
                            a();
                            return;
                        }
                        i2 = addAndGet(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    } else {
                        jVar.clear();
                        a();
                        agVar.onError(this.f.terminate());
                        return;
                    }
                }
            }
        }
    }

    public w(ae<T> aeVar, h<? super T, ? extends ae<? extends R>> hVar, ErrorMode errorMode, int i, int i2) {
        super(aeVar);
        this.f7631b = hVar;
        this.c = errorMode;
        this.d = i;
        this.e = i2;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        ae aeVar = this.f7091a;
        a aVar = new a(agVar, this.f7631b, this.d, this.e, this.c);
        aeVar.subscribe(aVar);
    }
}
