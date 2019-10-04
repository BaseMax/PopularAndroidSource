package io.reactivex.internal.operators.flowable;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.e.d;
import io.reactivex.internal.b.b;
import io.reactivex.internal.b.j;
import io.reactivex.internal.operators.flowable.dn;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: io.reactivex.internal.operators.flowable.do  reason: invalid class name */
public final class Cdo<T> extends ai<Boolean> implements b<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final org.b.b<? extends T> f8198a;

    /* renamed from: b  reason: collision with root package name */
    final org.b.b<? extends T> f8199b;
    final d<? super T, ? super T> c;
    final int d;

    /* renamed from: io.reactivex.internal.operators.flowable.do$a */
    static final class a<T> extends AtomicInteger implements c, dn.b {

        /* renamed from: a  reason: collision with root package name */
        final al<? super Boolean> f8200a;

        /* renamed from: b  reason: collision with root package name */
        final d<? super T, ? super T> f8201b;
        final dn.c<T> c;
        final dn.c<T> d;
        final io.reactivex.internal.util.b e = new io.reactivex.internal.util.b();
        T f;
        T g;

        a(al<? super Boolean> alVar, int i, d<? super T, ? super T> dVar) {
            this.f8200a = alVar;
            this.f8201b = dVar;
            this.c = new dn.c<>(this, i);
            this.d = new dn.c<>(this, i);
        }

        public final void dispose() {
            this.c.cancel();
            this.d.cancel();
            if (getAndIncrement() == 0) {
                this.c.a();
                this.d.a();
            }
        }

        public final boolean isDisposed() {
            return this.c.get() == SubscriptionHelper.CANCELLED;
        }

        private void a() {
            this.c.cancel();
            this.c.a();
            this.d.cancel();
            this.d.a();
        }

        public final void drain() {
            if (getAndIncrement() == 0) {
                int i = 1;
                do {
                    j<T> jVar = this.c.e;
                    j<T> jVar2 = this.d.e;
                    if (jVar != null && jVar2 != null) {
                        while (!isDisposed()) {
                            if (((Throwable) this.e.get()) != null) {
                                a();
                                this.f8200a.onError(this.e.terminate());
                                return;
                            }
                            boolean z = this.c.f;
                            T t = this.f;
                            if (t == null) {
                                try {
                                    t = jVar.poll();
                                    this.f = t;
                                } catch (Throwable th) {
                                    io.reactivex.c.b.throwIfFatal(th);
                                    a();
                                    this.e.addThrowable(th);
                                    this.f8200a.onError(this.e.terminate());
                                    return;
                                }
                            }
                            boolean z2 = false;
                            boolean z3 = t == null;
                            boolean z4 = this.d.f;
                            T t2 = this.g;
                            if (t2 == null) {
                                try {
                                    t2 = jVar2.poll();
                                    this.g = t2;
                                } catch (Throwable th2) {
                                    io.reactivex.c.b.throwIfFatal(th2);
                                    a();
                                    this.e.addThrowable(th2);
                                    this.f8200a.onError(this.e.terminate());
                                    return;
                                }
                            }
                            if (t2 == null) {
                                z2 = true;
                            }
                            if (z && z4 && z3 && z2) {
                                this.f8200a.onSuccess(Boolean.TRUE);
                                return;
                            } else if (z && z4 && z3 != z2) {
                                a();
                                this.f8200a.onSuccess(Boolean.FALSE);
                                return;
                            } else if (!z3 && !z2) {
                                try {
                                    if (!this.f8201b.test(t, t2)) {
                                        a();
                                        this.f8200a.onSuccess(Boolean.FALSE);
                                        return;
                                    }
                                    this.f = null;
                                    this.g = null;
                                    this.c.request();
                                    this.d.request();
                                } catch (Throwable th3) {
                                    io.reactivex.c.b.throwIfFatal(th3);
                                    a();
                                    this.e.addThrowable(th3);
                                    this.f8200a.onError(this.e.terminate());
                                    return;
                                }
                            }
                        }
                        this.c.a();
                        this.d.a();
                        return;
                    } else if (isDisposed()) {
                        this.c.a();
                        this.d.a();
                        return;
                    } else if (((Throwable) this.e.get()) != null) {
                        a();
                        this.f8200a.onError(this.e.terminate());
                        return;
                    }
                    i = addAndGet(-i);
                } while (i != 0);
            }
        }

        public final void innerError(Throwable th) {
            if (this.e.addThrowable(th)) {
                drain();
            } else {
                io.reactivex.g.a.onError(th);
            }
        }
    }

    public Cdo(org.b.b<? extends T> bVar, org.b.b<? extends T> bVar2, d<? super T, ? super T> dVar, int i) {
        this.f8198a = bVar;
        this.f8199b = bVar2;
        this.c = dVar;
        this.d = i;
    }

    public final void subscribeActual(al<? super Boolean> alVar) {
        a aVar = new a(alVar, this.d, this.c);
        alVar.onSubscribe(aVar);
        org.b.b<? extends T> bVar = this.f8198a;
        org.b.b<? extends T> bVar2 = this.f8199b;
        bVar.subscribe(aVar.c);
        bVar2.subscribe(aVar.d);
    }

    public final io.reactivex.j<Boolean> fuseToFlowable() {
        return io.reactivex.g.a.onAssembly(new dn(this.f8198a, this.f8199b, this.c, this.d));
    }
}
