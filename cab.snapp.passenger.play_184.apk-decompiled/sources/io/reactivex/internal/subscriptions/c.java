package io.reactivex.internal.subscriptions;

public class c<T> extends a<T> {
    protected final org.b.c<? super T> h;
    protected T i;

    public c(org.b.c<? super T> cVar) {
        this.h = cVar;
    }

    public final void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            do {
                int i2 = get();
                if ((i2 & -2) == 0) {
                    if (i2 == 1) {
                        if (compareAndSet(1, 3)) {
                            T t = this.i;
                            if (t != null) {
                                this.i = null;
                                org.b.c<? super T> cVar = this.h;
                                cVar.onNext(t);
                                if (get() != 4) {
                                    cVar.onComplete();
                                }
                            }
                        }
                        return;
                    }
                } else {
                    return;
                }
            } while (!compareAndSet(0, 2));
        }
    }

    public final void complete(T t) {
        int i2 = get();
        while (i2 != 8) {
            if ((i2 & -3) == 0) {
                if (i2 == 2) {
                    lazySet(3);
                    org.b.c<? super T> cVar = this.h;
                    cVar.onNext(t);
                    if (get() != 4) {
                        cVar.onComplete();
                    }
                    return;
                }
                this.i = t;
                if (!compareAndSet(0, 1)) {
                    i2 = get();
                    if (i2 == 4) {
                        this.i = null;
                        return;
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        this.i = t;
        lazySet(16);
        org.b.c<? super T> cVar2 = this.h;
        cVar2.onNext(t);
        if (get() != 4) {
            cVar2.onComplete();
        }
    }

    public final int requestFusion(int i2) {
        if ((i2 & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    public final T poll() {
        if (get() != 16) {
            return null;
        }
        lazySet(32);
        T t = this.i;
        this.i = null;
        return t;
    }

    public final boolean isEmpty() {
        return get() != 16;
    }

    public final void clear() {
        lazySet(32);
        this.i = null;
    }

    public void cancel() {
        set(4);
        this.i = null;
    }

    public final boolean isCancelled() {
        return get() == 4;
    }

    public final boolean tryCancel() {
        return getAndSet(4) != 4;
    }
}
