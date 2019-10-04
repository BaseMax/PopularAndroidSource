package io.reactivex.internal.c;

import io.reactivex.ag;
import io.reactivex.g.a;

public class l<T> extends b<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final ag<? super T> f6774a;

    /* renamed from: b  reason: collision with root package name */
    protected T f6775b;

    public l(ag<? super T> agVar) {
        this.f6774a = agVar;
    }

    public final int requestFusion(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    public final void complete(T t) {
        int i = get();
        if ((i & 54) == 0) {
            ag<? super T> agVar = this.f6774a;
            if (i == 8) {
                this.f6775b = t;
                lazySet(16);
                agVar.onNext(null);
            } else {
                lazySet(2);
                agVar.onNext(t);
            }
            if (get() != 4) {
                agVar.onComplete();
            }
        }
    }

    public final void error(Throwable th) {
        if ((get() & 54) != 0) {
            a.onError(th);
            return;
        }
        lazySet(2);
        this.f6774a.onError(th);
    }

    public final void complete() {
        if ((get() & 54) == 0) {
            lazySet(2);
            this.f6774a.onComplete();
        }
    }

    public final T poll() throws Exception {
        if (get() != 16) {
            return null;
        }
        T t = this.f6775b;
        this.f6775b = null;
        lazySet(32);
        return t;
    }

    public final boolean isEmpty() {
        return get() != 16;
    }

    public final void clear() {
        lazySet(32);
        this.f6775b = null;
    }

    public void dispose() {
        set(4);
        this.f6775b = null;
    }

    public final boolean tryDispose() {
        return getAndSet(4) != 4;
    }

    public final boolean isDisposed() {
        return get() == 4;
    }
}
