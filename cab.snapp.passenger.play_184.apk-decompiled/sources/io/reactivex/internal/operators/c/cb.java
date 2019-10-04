package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.b.i;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.b;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class cb<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final ao<? extends T> f7277b;

    static final class a<T> extends AtomicInteger implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7278a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<c> f7279b = new AtomicReference<>();
        final C0164a<T> c = new C0164a<>(this);
        final b d = new b();
        volatile i<T> e;
        T f;
        volatile boolean g;
        volatile boolean h;
        volatile int i;

        /* renamed from: io.reactivex.internal.operators.c.cb$a$a  reason: collision with other inner class name */
        static final class C0164a<T> extends AtomicReference<c> implements al<T> {

            /* renamed from: a  reason: collision with root package name */
            final a<T> f7280a;

            C0164a(a<T> aVar) {
                this.f7280a = aVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onSuccess(T t) {
                a<T> aVar = this.f7280a;
                if (aVar.compareAndSet(0, 1)) {
                    aVar.f7278a.onNext(t);
                    aVar.i = 2;
                } else {
                    aVar.f = t;
                    aVar.i = 1;
                    if (aVar.getAndIncrement() != 0) {
                        return;
                    }
                }
                aVar.b();
            }

            public final void onError(Throwable th) {
                a<T> aVar = this.f7280a;
                if (aVar.d.addThrowable(th)) {
                    DisposableHelper.dispose(aVar.f7279b);
                    aVar.a();
                    return;
                }
                io.reactivex.g.a.onError(th);
            }
        }

        a(ag<? super T> agVar) {
            this.f7278a = agVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this.f7279b, cVar);
        }

        public final void onNext(T t) {
            if (compareAndSet(0, 1)) {
                this.f7278a.onNext(t);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                i iVar = this.e;
                if (iVar == null) {
                    iVar = new io.reactivex.internal.d.c(z.bufferSize());
                    this.e = iVar;
                }
                iVar.offer(t);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        public final void onError(Throwable th) {
            if (this.d.addThrowable(th)) {
                DisposableHelper.dispose(this.f7279b);
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.h = true;
            a();
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f7279b.get());
        }

        public final void dispose() {
            this.g = true;
            DisposableHelper.dispose(this.f7279b);
            DisposableHelper.dispose(this.c);
            if (getAndIncrement() == 0) {
                this.e = null;
                this.f = null;
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            ag<? super T> agVar = this.f7278a;
            int i2 = 1;
            while (!this.g) {
                if (this.d.get() != null) {
                    this.f = null;
                    this.e = null;
                    agVar.onError(this.d.terminate());
                    return;
                }
                int i3 = this.i;
                if (i3 == 1) {
                    T t = this.f;
                    this.f = null;
                    this.i = 2;
                    agVar.onNext(t);
                    i3 = 2;
                }
                boolean z = this.h;
                i<T> iVar = this.e;
                T poll = iVar != null ? iVar.poll() : null;
                boolean z2 = poll == null;
                if (z && z2 && i3 == 2) {
                    this.e = null;
                    agVar.onComplete();
                    return;
                } else if (!z2) {
                    agVar.onNext(poll);
                } else {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
            this.f = null;
            this.e = null;
        }
    }

    public cb(z<T> zVar, ao<? extends T> aoVar) {
        super(zVar);
        this.f7277b = aoVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        a aVar = new a(agVar);
        agVar.onSubscribe(aVar);
        this.f7091a.subscribe(aVar);
        this.f7277b.subscribe(aVar.c);
    }
}
