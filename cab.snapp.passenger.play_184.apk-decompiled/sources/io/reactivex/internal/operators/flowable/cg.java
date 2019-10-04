package io.reactivex.internal.operators.flowable;

import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.internal.b.i;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.b;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class cg<T> extends a<T, T> {
    final ao<? extends T> c;

    static final class a<T> extends AtomicInteger implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8087a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<d> f8088b = new AtomicReference<>();
        final C0188a<T> c = new C0188a<>(this);
        final b d = new b();
        final AtomicLong e = new AtomicLong();
        final int f = j.bufferSize();
        final int g;
        volatile i<T> h;
        T i;
        volatile boolean j;
        volatile boolean k;
        volatile int l;
        long m;
        int n;

        /* renamed from: io.reactivex.internal.operators.flowable.cg$a$a  reason: collision with other inner class name */
        static final class C0188a<T> extends AtomicReference<io.reactivex.b.c> implements al<T> {

            /* renamed from: a  reason: collision with root package name */
            final a<T> f8089a;

            C0188a(a<T> aVar) {
                this.f8089a = aVar;
            }

            public final void onSubscribe(io.reactivex.b.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onSuccess(T t) {
                a<T> aVar = this.f8089a;
                if (aVar.compareAndSet(0, 1)) {
                    long j = aVar.m;
                    if (aVar.e.get() != j) {
                        aVar.m = j + 1;
                        aVar.f8087a.onNext(t);
                        aVar.l = 2;
                    } else {
                        aVar.i = t;
                        aVar.l = 1;
                        if (aVar.decrementAndGet() == 0) {
                            return;
                        }
                    }
                } else {
                    aVar.i = t;
                    aVar.l = 1;
                    if (aVar.getAndIncrement() != 0) {
                        return;
                    }
                }
                aVar.b();
            }

            public final void onError(Throwable th) {
                a<T> aVar = this.f8089a;
                if (aVar.d.addThrowable(th)) {
                    SubscriptionHelper.cancel(aVar.f8088b);
                    aVar.a();
                    return;
                }
                io.reactivex.g.a.onError(th);
            }
        }

        a(c<? super T> cVar) {
            this.f8087a = cVar;
            int i2 = this.f;
            this.g = i2 - (i2 >> 2);
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.setOnce(this.f8088b, dVar, (long) this.f);
        }

        public final void onNext(T t) {
            if (compareAndSet(0, 1)) {
                long j2 = this.m;
                if (this.e.get() != j2) {
                    i<T> iVar = this.h;
                    if (iVar == null || iVar.isEmpty()) {
                        this.m = j2 + 1;
                        this.f8087a.onNext(t);
                        int i2 = this.n + 1;
                        if (i2 == this.g) {
                            this.n = 0;
                            this.f8088b.get().request((long) i2);
                        } else {
                            this.n = i2;
                        }
                    } else {
                        iVar.offer(t);
                    }
                } else {
                    c().offer(t);
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                c().offer(t);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        public final void onError(Throwable th) {
            if (this.d.addThrowable(th)) {
                SubscriptionHelper.cancel(this.f8088b);
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.k = true;
            a();
        }

        public final void request(long j2) {
            io.reactivex.internal.util.c.add(this.e, j2);
            a();
        }

        public final void cancel() {
            this.j = true;
            SubscriptionHelper.cancel(this.f8088b);
            DisposableHelper.dispose(this.c);
            if (getAndIncrement() == 0) {
                this.h = null;
                this.i = null;
            }
        }

        private i<T> c() {
            i<T> iVar = this.h;
            if (iVar != null) {
                return iVar;
            }
            io.reactivex.internal.d.b bVar = new io.reactivex.internal.d.b(j.bufferSize());
            this.h = bVar;
            return bVar;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            c<? super T> cVar = this.f8087a;
            long j2 = this.m;
            int i2 = this.n;
            int i3 = this.g;
            int i4 = 1;
            int i5 = 1;
            while (true) {
                long j3 = this.e.get();
                while (j2 != j3) {
                    if (this.j) {
                        this.i = null;
                        this.h = null;
                        return;
                    } else if (this.d.get() != null) {
                        this.i = null;
                        this.h = null;
                        cVar.onError(this.d.terminate());
                        return;
                    } else {
                        int i6 = this.l;
                        if (i6 == i4) {
                            T t = this.i;
                            this.i = null;
                            this.l = 2;
                            cVar.onNext(t);
                            j2++;
                        } else {
                            boolean z = this.k;
                            i<T> iVar = this.h;
                            T poll = iVar != null ? iVar.poll() : null;
                            boolean z2 = poll == null;
                            if (!z || !z2 || i6 != 2) {
                                if (z2) {
                                    break;
                                }
                                cVar.onNext(poll);
                                j2++;
                                i2++;
                                if (i2 == i3) {
                                    this.f8088b.get().request((long) i3);
                                    i2 = 0;
                                }
                                i4 = 1;
                            } else {
                                this.h = null;
                                cVar.onComplete();
                                return;
                            }
                        }
                    }
                }
                if (j2 == j3) {
                    if (this.j) {
                        this.i = null;
                        this.h = null;
                        return;
                    } else if (this.d.get() != null) {
                        this.i = null;
                        this.h = null;
                        cVar.onError(this.d.terminate());
                        return;
                    } else {
                        boolean z3 = this.k;
                        i<T> iVar2 = this.h;
                        boolean z4 = iVar2 == null || iVar2.isEmpty();
                        if (z3 && z4 && this.l == 2) {
                            this.h = null;
                            cVar.onComplete();
                            return;
                        }
                    }
                }
                this.m = j2;
                this.n = i2;
                i5 = addAndGet(-i5);
                if (i5 != 0) {
                    i4 = 1;
                } else {
                    return;
                }
            }
        }
    }

    public cg(j<T> jVar, ao<? extends T> aoVar) {
        super(jVar);
        this.c = aoVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        a aVar = new a(cVar);
        cVar.onSubscribe(aVar);
        this.f7923b.subscribe(aVar);
        this.c.subscribe(aVar.c);
    }
}
