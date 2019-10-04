package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.g;
import io.reactivex.internal.b.j;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.b.b;

public final class d extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final b<? extends g> f6959a;

    /* renamed from: b  reason: collision with root package name */
    final int f6960b;

    static final class a extends AtomicInteger implements c, o<g> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f6961a;

        /* renamed from: b  reason: collision with root package name */
        final int f6962b;
        final int c;
        final C0141a d = new C0141a(this);
        final AtomicBoolean e = new AtomicBoolean();
        int f;
        int g;
        j<g> h;
        org.b.d i;
        volatile boolean j;
        volatile boolean k;

        /* renamed from: io.reactivex.internal.operators.a.d$a$a  reason: collision with other inner class name */
        static final class C0141a extends AtomicReference<c> implements io.reactivex.d {

            /* renamed from: a  reason: collision with root package name */
            final a f6963a;

            C0141a(a aVar) {
                this.f6963a = aVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.replace(this, cVar);
            }

            public final void onError(Throwable th) {
                this.f6963a.a(th);
            }

            public final void onComplete() {
                a aVar = this.f6963a;
                aVar.k = false;
                aVar.a();
            }
        }

        a(io.reactivex.d dVar, int i2) {
            this.f6961a = dVar;
            this.f6962b = i2;
            this.c = i2 - (i2 >> 2);
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.i, dVar)) {
                this.i = dVar;
                int i2 = this.f6962b;
                long j2 = i2 == Integer.MAX_VALUE ? Long.MAX_VALUE : (long) i2;
                if (dVar instanceof io.reactivex.internal.b.g) {
                    io.reactivex.internal.b.g gVar = (io.reactivex.internal.b.g) dVar;
                    int requestFusion = gVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f = requestFusion;
                        this.h = gVar;
                        this.j = true;
                        this.f6961a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f = requestFusion;
                        this.h = gVar;
                        this.f6961a.onSubscribe(this);
                        dVar.request(j2);
                        return;
                    }
                }
                int i3 = this.f6962b;
                if (i3 == Integer.MAX_VALUE) {
                    this.h = new io.reactivex.internal.d.c(io.reactivex.j.bufferSize());
                } else {
                    this.h = new io.reactivex.internal.d.b(i3);
                }
                this.f6961a.onSubscribe(this);
                dVar.request(j2);
            }
        }

        public final void onNext(g gVar) {
            if (this.f != 0 || this.h.offer(gVar)) {
                a();
            } else {
                onError(new io.reactivex.c.c());
            }
        }

        public final void onError(Throwable th) {
            if (this.e.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.d);
                this.f6961a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.j = true;
            a();
        }

        public final void dispose() {
            this.i.cancel();
            DisposableHelper.dispose(this.d);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) this.d.get());
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.k) {
                        boolean z = this.j;
                        try {
                            g poll = this.h.poll();
                            boolean z2 = poll == null;
                            if (z && z2) {
                                if (this.e.compareAndSet(false, true)) {
                                    this.f6961a.onComplete();
                                }
                                return;
                            } else if (!z2) {
                                this.k = true;
                                poll.subscribe(this.d);
                                b();
                            }
                        } catch (Throwable th) {
                            io.reactivex.c.b.throwIfFatal(th);
                            a(th);
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        private void b() {
            if (this.f != 1) {
                int i2 = this.g + 1;
                if (i2 == this.c) {
                    this.g = 0;
                    this.i.request((long) i2);
                    return;
                }
                this.g = i2;
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(Throwable th) {
            if (this.e.compareAndSet(false, true)) {
                this.i.cancel();
                this.f6961a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }
    }

    public d(b<? extends g> bVar, int i) {
        this.f6959a = bVar;
        this.f6960b = i;
    }

    public final void subscribeActual(io.reactivex.d dVar) {
        this.f6959a.subscribe(new a(dVar, this.f6960b));
    }
}
