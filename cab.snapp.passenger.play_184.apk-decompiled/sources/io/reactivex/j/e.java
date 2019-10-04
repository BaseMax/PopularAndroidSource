package io.reactivex.j;

import io.reactivex.ag;
import io.reactivex.internal.b.j;
import io.reactivex.internal.c.b;
import io.reactivex.internal.d.c;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class e<T> extends d<T> {

    /* renamed from: a  reason: collision with root package name */
    final c<T> f8659a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<ag<? super T>> f8660b;
    final AtomicReference<Runnable> c;
    final boolean d;
    volatile boolean e;
    volatile boolean f;
    Throwable g;
    final AtomicBoolean h;
    final b<T> i;
    boolean j;

    final class a extends b<T> {
        a() {
        }

        public final int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            e.this.j = true;
            return 2;
        }

        public final T poll() throws Exception {
            return e.this.f8659a.poll();
        }

        public final boolean isEmpty() {
            return e.this.f8659a.isEmpty();
        }

        public final void clear() {
            e.this.f8659a.clear();
        }

        public final void dispose() {
            if (!e.this.e) {
                e eVar = e.this;
                eVar.e = true;
                eVar.a();
                e.this.f8660b.lazySet(null);
                if (e.this.i.getAndIncrement() == 0) {
                    e.this.f8660b.lazySet(null);
                    e.this.f8659a.clear();
                }
            }
        }

        public final boolean isDisposed() {
            return e.this.e;
        }
    }

    public static <T> e<T> create() {
        return new e<>(bufferSize(), true);
    }

    public static <T> e<T> create(int i2) {
        return new e<>(i2, true);
    }

    public static <T> e<T> create(int i2, Runnable runnable) {
        return new e<>(i2, runnable, true);
    }

    public static <T> e<T> create(int i2, Runnable runnable, boolean z) {
        return new e<>(i2, runnable, z);
    }

    public static <T> e<T> create(boolean z) {
        return new e<>(bufferSize(), z);
    }

    private e(int i2, boolean z) {
        this.f8659a = new c<>(io.reactivex.internal.a.b.verifyPositive(i2, "capacityHint"));
        this.c = new AtomicReference<>();
        this.d = z;
        this.f8660b = new AtomicReference<>();
        this.h = new AtomicBoolean();
        this.i = new a();
    }

    private e(int i2, Runnable runnable, boolean z) {
        this.f8659a = new c<>(io.reactivex.internal.a.b.verifyPositive(i2, "capacityHint"));
        this.c = new AtomicReference<>(io.reactivex.internal.a.b.requireNonNull(runnable, "onTerminate"));
        this.d = z;
        this.f8660b = new AtomicReference<>();
        this.h = new AtomicBoolean();
        this.i = new a();
    }

    public final void subscribeActual(ag<? super T> agVar) {
        if (this.h.get() || !this.h.compareAndSet(false, true)) {
            EmptyDisposable.error((Throwable) new IllegalStateException("Only a single observer allowed."), (ag<?>) agVar);
            return;
        }
        agVar.onSubscribe(this.i);
        this.f8660b.lazySet(agVar);
        if (this.e) {
            this.f8660b.lazySet(null);
        } else {
            b();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        Runnable runnable = this.c.get();
        if (runnable != null && this.c.compareAndSet(runnable, null)) {
            runnable.run();
        }
    }

    public final void onSubscribe(io.reactivex.b.c cVar) {
        if (this.f || this.e) {
            cVar.dispose();
        }
    }

    public final void onNext(T t) {
        io.reactivex.internal.a.b.requireNonNull(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f && !this.e) {
            this.f8659a.offer(t);
            b();
        }
    }

    public final void onError(Throwable th) {
        io.reactivex.internal.a.b.requireNonNull(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f || this.e) {
            io.reactivex.g.a.onError(th);
            return;
        }
        this.g = th;
        this.f = true;
        a();
        b();
    }

    public final void onComplete() {
        if (!this.f && !this.e) {
            this.f = true;
            a();
            b();
        }
    }

    private void a(ag<? super T> agVar) {
        c<T> cVar = this.f8659a;
        boolean z = !this.d;
        boolean z2 = true;
        int i2 = 1;
        while (!this.e) {
            boolean z3 = this.f;
            T poll = this.f8659a.poll();
            boolean z4 = poll == null;
            if (z3) {
                if (z && z2) {
                    if (!a(cVar, agVar)) {
                        z2 = false;
                    } else {
                        return;
                    }
                }
                if (z4) {
                    c(agVar);
                    return;
                }
            }
            if (!z4) {
                agVar.onNext(poll);
            } else {
                i2 = this.i.addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
        }
        this.f8660b.lazySet(null);
        cVar.clear();
    }

    private void b(ag<? super T> agVar) {
        c<T> cVar = this.f8659a;
        int i2 = 1;
        boolean z = !this.d;
        while (!this.e) {
            boolean z2 = this.f;
            if (!z || !z2 || !a(cVar, agVar)) {
                agVar.onNext(null);
                if (z2) {
                    c(agVar);
                    return;
                }
                i2 = this.i.addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            } else {
                return;
            }
        }
        this.f8660b.lazySet(null);
        cVar.clear();
    }

    private void c(ag<? super T> agVar) {
        this.f8660b.lazySet(null);
        Throwable th = this.g;
        if (th != null) {
            agVar.onError(th);
        } else {
            agVar.onComplete();
        }
    }

    private boolean a(j<T> jVar, ag<? super T> agVar) {
        Throwable th = this.g;
        if (th == null) {
            return false;
        }
        this.f8660b.lazySet(null);
        jVar.clear();
        agVar.onError(th);
        return true;
    }

    private void b() {
        if (this.i.getAndIncrement() == 0) {
            ag agVar = this.f8660b.get();
            int i2 = 1;
            while (agVar == null) {
                i2 = this.i.addAndGet(-i2);
                if (i2 != 0) {
                    agVar = this.f8660b.get();
                } else {
                    return;
                }
            }
            if (this.j) {
                b(agVar);
            } else {
                a(agVar);
            }
        }
    }

    public final boolean hasObservers() {
        return this.f8660b.get() != null;
    }

    public final Throwable getThrowable() {
        if (this.f) {
            return this.g;
        }
        return null;
    }

    public final boolean hasThrowable() {
        return this.f && this.g != null;
    }

    public final boolean hasComplete() {
        return this.f && this.g == null;
    }
}
