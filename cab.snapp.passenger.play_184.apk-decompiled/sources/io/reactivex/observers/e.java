package io.reactivex.observers;

import io.reactivex.ag;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.e.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.h;
import io.reactivex.t;
import java.util.concurrent.atomic.AtomicReference;

public final class e<T> extends BaseTestConsumer<T, e<T>> implements ag<T>, al<T>, c, d, t<T> {
    private final ag<? super T> k;
    private final AtomicReference<c> l;
    private io.reactivex.internal.b.e<T> m;

    enum a implements ag<Object> {
        ;

        public final void onComplete() {
        }

        public final void onError(Throwable th) {
        }

        public final void onNext(Object obj) {
        }

        public final void onSubscribe(c cVar) {
        }

        private a(String str) {
        }
    }

    public static <T> e<T> create() {
        return new e<>();
    }

    public static <T> e<T> create(ag<? super T> agVar) {
        return new e<>(agVar);
    }

    public e() {
        this(a.INSTANCE);
    }

    public e(ag<? super T> agVar) {
        this.l = new AtomicReference<>();
        this.k = agVar;
    }

    public final void onSubscribe(c cVar) {
        this.e = Thread.currentThread();
        if (cVar == null) {
            this.c.add(new NullPointerException("onSubscribe received a null Subscription"));
        } else if (!this.l.compareAndSet(null, cVar)) {
            cVar.dispose();
            if (this.l.get() != DisposableHelper.DISPOSED) {
                this.c.add(new IllegalStateException("onSubscribe received multiple subscriptions: ".concat(String.valueOf(cVar))));
            }
        } else {
            if (this.g != 0 && (cVar instanceof io.reactivex.internal.b.e)) {
                this.m = (io.reactivex.internal.b.e) cVar;
                int requestFusion = this.m.requestFusion(this.g);
                this.h = requestFusion;
                if (requestFusion == 1) {
                    this.f = true;
                    this.e = Thread.currentThread();
                    while (true) {
                        try {
                            T poll = this.m.poll();
                            if (poll != null) {
                                this.f8669b.add(poll);
                            } else {
                                this.d++;
                                this.l.lazySet(DisposableHelper.DISPOSED);
                                return;
                            }
                        } catch (Throwable th) {
                            this.c.add(th);
                            return;
                        }
                    }
                }
            }
            this.k.onSubscribe(cVar);
        }
    }

    public final void onNext(T t) {
        if (!this.f) {
            this.f = true;
            if (this.l.get() == null) {
                this.c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.e = Thread.currentThread();
        if (this.h == 2) {
            while (true) {
                try {
                    T poll = this.m.poll();
                    if (poll != null) {
                        this.f8669b.add(poll);
                    } else {
                        return;
                    }
                } catch (Throwable th) {
                    this.c.add(th);
                    this.m.dispose();
                    return;
                }
            }
        } else {
            this.f8669b.add(t);
            if (t == null) {
                this.c.add(new NullPointerException("onNext received a null value"));
            }
            this.k.onNext(t);
        }
    }

    public final void onError(Throwable th) {
        if (!this.f) {
            this.f = true;
            if (this.l.get() == null) {
                this.c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.e = Thread.currentThread();
            if (th == null) {
                this.c.add(new NullPointerException("onError received a null Throwable"));
            } else {
                this.c.add(th);
            }
            this.k.onError(th);
        } finally {
            this.f8668a.countDown();
        }
    }

    public final void onComplete() {
        if (!this.f) {
            this.f = true;
            if (this.l.get() == null) {
                this.c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.e = Thread.currentThread();
            this.d++;
            this.k.onComplete();
        } finally {
            this.f8668a.countDown();
        }
    }

    public final boolean isCancelled() {
        return isDisposed();
    }

    public final void cancel() {
        dispose();
    }

    public final void dispose() {
        DisposableHelper.dispose(this.l);
    }

    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.l.get());
    }

    public final boolean hasSubscription() {
        return this.l.get() != null;
    }

    public final e<T> assertSubscribed() {
        if (this.l.get() != null) {
            return this;
        }
        throw a("Not subscribed!");
    }

    public final e<T> assertNotSubscribed() {
        if (this.l.get() != null) {
            throw a("Subscribed!");
        } else if (this.c.isEmpty()) {
            return this;
        } else {
            throw a("Not subscribed but errors found");
        }
    }

    public final e<T> assertOf(g<? super e<T>> gVar) {
        try {
            gVar.accept(this);
            return this;
        } catch (Throwable th) {
            throw h.wrapOrThrow(th);
        }
    }

    public final void onSuccess(T t) {
        onNext(t);
        onComplete();
    }
}
