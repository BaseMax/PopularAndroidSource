package io.reactivex.internal.operators.b;

import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.e.h;
import io.reactivex.internal.b.i;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.b;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class e<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final j<T> f7027b;
    final h<? super T, ? extends ao<? extends R>> c;
    final ErrorMode d;
    final int e;

    static final class a<T, R> extends AtomicInteger implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f7028a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ao<? extends R>> f7029b;
        final int c;
        final AtomicLong d = new AtomicLong();
        final b e = new b();
        final C0145a<R> f = new C0145a<>(this);
        final i<T> g;
        final ErrorMode h;
        d i;
        volatile boolean j;
        volatile boolean k;
        long l;
        int m;
        R n;
        volatile int o;

        /* renamed from: io.reactivex.internal.operators.b.e$a$a  reason: collision with other inner class name */
        static final class C0145a<R> extends AtomicReference<io.reactivex.b.c> implements al<R> {

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f7030a;

            C0145a(a<?, R> aVar) {
                this.f7030a = aVar;
            }

            public final void onSubscribe(io.reactivex.b.c cVar) {
                DisposableHelper.replace(this, cVar);
            }

            public final void onSuccess(R r) {
                a<?, R> aVar = this.f7030a;
                aVar.n = r;
                aVar.o = 2;
                aVar.a();
            }

            public final void onError(Throwable th) {
                a<?, R> aVar = this.f7030a;
                if (aVar.e.addThrowable(th)) {
                    if (aVar.h != ErrorMode.END) {
                        aVar.i.cancel();
                    }
                    aVar.o = 0;
                    aVar.a();
                    return;
                }
                io.reactivex.g.a.onError(th);
            }
        }

        a(c<? super R> cVar, h<? super T, ? extends ao<? extends R>> hVar, int i2, ErrorMode errorMode) {
            this.f7028a = cVar;
            this.f7029b = hVar;
            this.c = i2;
            this.h = errorMode;
            this.g = new io.reactivex.internal.d.b(i2);
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.i, dVar)) {
                this.i = dVar;
                this.f7028a.onSubscribe(this);
                dVar.request((long) this.c);
            }
        }

        public final void onNext(T t) {
            if (!this.g.offer(t)) {
                this.i.cancel();
                onError(new io.reactivex.c.c("queue full?!"));
                return;
            }
            a();
        }

        public final void onError(Throwable th) {
            if (this.e.addThrowable(th)) {
                if (this.h == ErrorMode.IMMEDIATE) {
                    DisposableHelper.dispose(this.f);
                }
                this.j = true;
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.j = true;
            a();
        }

        public final void request(long j2) {
            io.reactivex.internal.util.c.add(this.d, j2);
            a();
        }

        public final void cancel() {
            this.k = true;
            this.i.cancel();
            DisposableHelper.dispose(this.f);
            if (getAndIncrement() == 0) {
                this.g.clear();
                this.n = null;
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                c<? super R> cVar = this.f7028a;
                ErrorMode errorMode = this.h;
                i<T> iVar = this.g;
                b bVar = this.e;
                AtomicLong atomicLong = this.d;
                int i2 = this.c;
                int i3 = i2 - (i2 >> 1);
                int i4 = 1;
                while (true) {
                    if (this.k) {
                        iVar.clear();
                        this.n = null;
                    } else {
                        int i5 = this.o;
                        if (bVar.get() == null || !(errorMode == ErrorMode.IMMEDIATE || (errorMode == ErrorMode.BOUNDARY && i5 == 0))) {
                            if (i5 == 0) {
                                boolean z = this.j;
                                T poll = iVar.poll();
                                boolean z2 = poll == null;
                                if (z && z2) {
                                    Throwable terminate = bVar.terminate();
                                    if (terminate == null) {
                                        cVar.onComplete();
                                        return;
                                    } else {
                                        cVar.onError(terminate);
                                        return;
                                    }
                                } else if (!z2) {
                                    int i6 = this.m + 1;
                                    if (i6 == i3) {
                                        this.m = 0;
                                        this.i.request((long) i3);
                                    } else {
                                        this.m = i6;
                                    }
                                    try {
                                        ao aoVar = (ao) io.reactivex.internal.a.b.requireNonNull(this.f7029b.apply(poll), "The mapper returned a null SingleSource");
                                        this.o = 1;
                                        aoVar.subscribe(this.f);
                                    } catch (Throwable th) {
                                        io.reactivex.c.b.throwIfFatal(th);
                                        this.i.cancel();
                                        iVar.clear();
                                        bVar.addThrowable(th);
                                        cVar.onError(bVar.terminate());
                                        return;
                                    }
                                }
                            } else if (i5 == 2) {
                                long j2 = this.l;
                                if (j2 != atomicLong.get()) {
                                    R r = this.n;
                                    this.n = null;
                                    cVar.onNext(r);
                                    this.l = j2 + 1;
                                    this.o = 0;
                                }
                            }
                        }
                    }
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
                iVar.clear();
                this.n = null;
                cVar.onError(bVar.terminate());
            }
        }
    }

    public e(j<T> jVar, h<? super T, ? extends ao<? extends R>> hVar, ErrorMode errorMode, int i) {
        this.f7027b = jVar;
        this.c = hVar;
        this.d = errorMode;
        this.e = i;
    }

    public final void subscribeActual(c<? super R> cVar) {
        this.f7027b.subscribe(new a(cVar, this.c, this.e, this.d));
    }
}
