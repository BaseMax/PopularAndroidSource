package io.reactivex.internal.operators.b;

import io.reactivex.e.h;
import io.reactivex.internal.b.i;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.b;
import io.reactivex.j;
import io.reactivex.o;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;

public final class d<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final j<T> f7023b;
    final h<? super T, ? extends w<? extends R>> c;
    final ErrorMode d;
    final int e;

    static final class a<T, R> extends AtomicInteger implements o<T>, org.b.d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f7024a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends w<? extends R>> f7025b;
        final int c;
        final AtomicLong d = new AtomicLong();
        final b e = new b();
        final C0144a<R> f = new C0144a<>(this);
        final i<T> g;
        final ErrorMode h;
        org.b.d i;
        volatile boolean j;
        volatile boolean k;
        long l;
        int m;
        R n;
        volatile int o;

        /* renamed from: io.reactivex.internal.operators.b.d$a$a  reason: collision with other inner class name */
        static final class C0144a<R> extends AtomicReference<io.reactivex.b.c> implements t<R> {

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f7026a;

            C0144a(a<?, R> aVar) {
                this.f7026a = aVar;
            }

            public final void onSubscribe(io.reactivex.b.c cVar) {
                DisposableHelper.replace(this, cVar);
            }

            public final void onSuccess(R r) {
                a<?, R> aVar = this.f7026a;
                aVar.n = r;
                aVar.o = 2;
                aVar.a();
            }

            public final void onError(Throwable th) {
                a<?, R> aVar = this.f7026a;
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

            public final void onComplete() {
                a<?, R> aVar = this.f7026a;
                aVar.o = 0;
                aVar.a();
            }
        }

        a(c<? super R> cVar, h<? super T, ? extends w<? extends R>> hVar, int i2, ErrorMode errorMode) {
            this.f7024a = cVar;
            this.f7025b = hVar;
            this.c = i2;
            this.h = errorMode;
            this.g = new io.reactivex.internal.d.b(i2);
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.i, dVar)) {
                this.i = dVar;
                this.f7024a.onSubscribe(this);
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
                c<? super R> cVar = this.f7024a;
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
                                        w wVar = (w) io.reactivex.internal.a.b.requireNonNull(this.f7025b.apply(poll), "The mapper returned a null MaybeSource");
                                        this.o = 1;
                                        wVar.subscribe(this.f);
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

    public d(j<T> jVar, h<? super T, ? extends w<? extends R>> hVar, ErrorMode errorMode, int i) {
        this.f7023b = jVar;
        this.c = hVar;
        this.d = errorMode;
        this.e = i;
    }

    public final void subscribeActual(c<? super R> cVar) {
        this.f7023b.subscribe(new a(cVar, this.c, this.e, this.d));
    }
}
