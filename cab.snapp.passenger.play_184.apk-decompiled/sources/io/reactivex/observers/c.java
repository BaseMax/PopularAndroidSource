package io.reactivex.observers;

import io.reactivex.ag;
import io.reactivex.c.b;
import io.reactivex.g.a;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;

public final class c<T> implements ag<T>, io.reactivex.b.c {

    /* renamed from: a  reason: collision with root package name */
    final ag<? super T> f8671a;

    /* renamed from: b  reason: collision with root package name */
    io.reactivex.b.c f8672b;
    boolean c;

    public c(ag<? super T> agVar) {
        this.f8671a = agVar;
    }

    public final void onSubscribe(io.reactivex.b.c cVar) {
        if (DisposableHelper.validate(this.f8672b, cVar)) {
            this.f8672b = cVar;
            try {
                this.f8671a.onSubscribe(this);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                a.onError(new io.reactivex.c.a(th, th));
            }
        }
    }

    public final void dispose() {
        this.f8672b.dispose();
    }

    public final boolean isDisposed() {
        return this.f8672b.isDisposed();
    }

    public final void onNext(T t) {
        if (!this.c) {
            if (this.f8672b == null) {
                this.c = true;
                NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
                try {
                    this.f8671a.onSubscribe(EmptyDisposable.INSTANCE);
                    try {
                        this.f8671a.onError(nullPointerException);
                    } catch (Throwable th) {
                        b.throwIfFatal(th);
                        a.onError(new io.reactivex.c.a(nullPointerException, th));
                    }
                } catch (Throwable th2) {
                    b.throwIfFatal(th2);
                    a.onError(new io.reactivex.c.a(nullPointerException, th2));
                }
            } else if (t == null) {
                NullPointerException nullPointerException2 = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
                try {
                    this.f8672b.dispose();
                    onError(nullPointerException2);
                } catch (Throwable th3) {
                    b.throwIfFatal(th3);
                    onError(new io.reactivex.c.a(nullPointerException2, th3));
                }
            } else {
                try {
                    this.f8671a.onNext(t);
                } catch (Throwable th4) {
                    b.throwIfFatal(th4);
                    onError(new io.reactivex.c.a(th, th4));
                }
            }
        }
    }

    public final void onError(Throwable th) {
        if (this.c) {
            a.onError(th);
            return;
        }
        this.c = true;
        if (this.f8672b == null) {
            NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
            try {
                this.f8671a.onSubscribe(EmptyDisposable.INSTANCE);
                try {
                    this.f8671a.onError(new io.reactivex.c.a(th, nullPointerException));
                } catch (Throwable th2) {
                    b.throwIfFatal(th2);
                    a.onError(new io.reactivex.c.a(th, nullPointerException, th2));
                }
            } catch (Throwable th3) {
                b.throwIfFatal(th3);
                a.onError(new io.reactivex.c.a(th, nullPointerException, th3));
            }
        } else {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            try {
                this.f8671a.onError(th);
            } catch (Throwable th4) {
                b.throwIfFatal(th4);
                a.onError(new io.reactivex.c.a(th, th4));
            }
        }
    }

    public final void onComplete() {
        if (!this.c) {
            this.c = true;
            if (this.f8672b == null) {
                NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
                try {
                    this.f8671a.onSubscribe(EmptyDisposable.INSTANCE);
                    try {
                        this.f8671a.onError(nullPointerException);
                    } catch (Throwable th) {
                        b.throwIfFatal(th);
                        a.onError(new io.reactivex.c.a(nullPointerException, th));
                    }
                } catch (Throwable th2) {
                    b.throwIfFatal(th2);
                    a.onError(new io.reactivex.c.a(nullPointerException, th2));
                }
            } else {
                try {
                    this.f8671a.onComplete();
                } catch (Throwable th3) {
                    b.throwIfFatal(th3);
                    a.onError(th3);
                }
            }
        }
    }
}
