package io.reactivex.internal.operators.b;

import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.b;
import io.reactivex.j;
import io.reactivex.o;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class g<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final j<T> f7036b;
    final h<? super T, ? extends w<? extends R>> c;
    final boolean d;

    static final class a<T, R> extends AtomicInteger implements o<T>, d {
        static final C0147a<Object> g = new C0147a<>(null);

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f7037a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends w<? extends R>> f7038b;
        final boolean c;
        final b d = new b();
        final AtomicLong e = new AtomicLong();
        final AtomicReference<C0147a<R>> f = new AtomicReference<>();
        d h;
        volatile boolean i;
        volatile boolean j;
        long k;

        /* renamed from: io.reactivex.internal.operators.b.g$a$a  reason: collision with other inner class name */
        static final class C0147a<R> extends AtomicReference<io.reactivex.b.c> implements t<R> {

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f7039a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f7040b;

            C0147a(a<?, R> aVar) {
                this.f7039a = aVar;
            }

            public final void onSubscribe(io.reactivex.b.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onSuccess(R r) {
                this.f7040b = r;
                this.f7039a.b();
            }

            public final void onError(Throwable th) {
                a<?, R> aVar = this.f7039a;
                if (!aVar.f.compareAndSet(this, null) || !aVar.d.addThrowable(th)) {
                    io.reactivex.g.a.onError(th);
                    return;
                }
                if (!aVar.c) {
                    aVar.h.cancel();
                    aVar.a();
                }
                aVar.b();
            }

            public final void onComplete() {
                a<?, R> aVar = this.f7039a;
                if (aVar.f.compareAndSet(this, null)) {
                    aVar.b();
                }
            }
        }

        a(c<? super R> cVar, h<? super T, ? extends w<? extends R>> hVar, boolean z) {
            this.f7037a = cVar;
            this.f7038b = hVar;
            this.c = z;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.h, dVar)) {
                this.h = dVar;
                this.f7037a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            C0147a aVar = this.f.get();
            if (aVar != null) {
                DisposableHelper.dispose(aVar);
            }
            try {
                w wVar = (w) io.reactivex.internal.a.b.requireNonNull(this.f7038b.apply(t), "The mapper returned a null MaybeSource");
                C0147a aVar2 = new C0147a(this);
                while (true) {
                    C0147a<Object> aVar3 = this.f.get();
                    if (aVar3 != g) {
                        if (this.f.compareAndSet(aVar3, aVar2)) {
                            wVar.subscribe(aVar2);
                            break;
                        }
                    } else {
                        break;
                    }
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.h.cancel();
                this.f.getAndSet(g);
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            if (this.d.addThrowable(th)) {
                if (!this.c) {
                    a();
                }
                this.i = true;
                b();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.i = true;
            b();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            C0147a<Object> andSet = this.f.getAndSet(g);
            if (andSet != null && andSet != g) {
                DisposableHelper.dispose(andSet);
            }
        }

        public final void request(long j2) {
            io.reactivex.internal.util.c.add(this.e, j2);
            b();
        }

        public final void cancel() {
            this.j = true;
            this.h.cancel();
            a();
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            if (getAndIncrement() == 0) {
                c<? super R> cVar = this.f7037a;
                b bVar = this.d;
                AtomicReference<C0147a<R>> atomicReference = this.f;
                AtomicLong atomicLong = this.e;
                long j2 = this.k;
                int i2 = 1;
                while (!this.j) {
                    if (bVar.get() == null || this.c) {
                        boolean z = this.i;
                        C0147a aVar = atomicReference.get();
                        boolean z2 = aVar == null;
                        if (z && z2) {
                            Throwable terminate = bVar.terminate();
                            if (terminate != null) {
                                cVar.onError(terminate);
                                return;
                            } else {
                                cVar.onComplete();
                                return;
                            }
                        } else if (z2 || aVar.f7040b == null || j2 == atomicLong.get()) {
                            this.k = j2;
                            i2 = addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        } else {
                            atomicReference.compareAndSet(aVar, null);
                            cVar.onNext(aVar.f7040b);
                            j2++;
                        }
                    } else {
                        cVar.onError(bVar.terminate());
                        return;
                    }
                }
            }
        }
    }

    public g(j<T> jVar, h<? super T, ? extends w<? extends R>> hVar, boolean z) {
        this.f7036b = jVar;
        this.c = hVar;
        this.d = z;
    }

    public final void subscribeActual(c<? super R> cVar) {
        this.f7036b.subscribe(new a(cVar, this.c, this.d));
    }
}
