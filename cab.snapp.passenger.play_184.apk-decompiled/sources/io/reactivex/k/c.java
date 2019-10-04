package io.reactivex.k;

import io.reactivex.c.b;
import io.reactivex.g.a;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import org.b.d;

public final class c<T> implements o<T>, d {

    /* renamed from: a  reason: collision with root package name */
    final org.b.c<? super T> f8663a;

    /* renamed from: b  reason: collision with root package name */
    d f8664b;
    boolean c;

    public c(org.b.c<? super T> cVar) {
        this.f8663a = cVar;
    }

    public final void onSubscribe(d dVar) {
        if (SubscriptionHelper.validate(this.f8664b, dVar)) {
            this.f8664b = dVar;
            try {
                this.f8663a.onSubscribe(this);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                a.onError(new io.reactivex.c.a(th, th));
            }
        }
    }

    public final void onNext(T t) {
        if (!this.c) {
            if (this.f8664b == null) {
                this.c = true;
                NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
                try {
                    this.f8663a.onSubscribe(EmptySubscription.INSTANCE);
                    try {
                        this.f8663a.onError(nullPointerException);
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
                    this.f8664b.cancel();
                    onError(nullPointerException2);
                } catch (Throwable th3) {
                    b.throwIfFatal(th3);
                    onError(new io.reactivex.c.a(nullPointerException2, th3));
                }
            } else {
                try {
                    this.f8663a.onNext(t);
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
        if (this.f8664b == null) {
            NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
            try {
                this.f8663a.onSubscribe(EmptySubscription.INSTANCE);
                try {
                    this.f8663a.onError(new io.reactivex.c.a(th, nullPointerException));
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
                this.f8663a.onError(th);
            } catch (Throwable th4) {
                b.throwIfFatal(th4);
                a.onError(new io.reactivex.c.a(th, th4));
            }
        }
    }

    public final void onComplete() {
        if (!this.c) {
            this.c = true;
            if (this.f8664b == null) {
                NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
                try {
                    this.f8663a.onSubscribe(EmptySubscription.INSTANCE);
                    try {
                        this.f8663a.onError(nullPointerException);
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
                    this.f8663a.onComplete();
                } catch (Throwable th3) {
                    b.throwIfFatal(th3);
                    a.onError(th3);
                }
            }
        }
    }

    public final void request(long j) {
        try {
            this.f8664b.request(j);
        } catch (Throwable th) {
            b.throwIfFatal(th);
            a.onError(new io.reactivex.c.a(th, th));
        }
    }

    public final void cancel() {
        try {
            this.f8664b.cancel();
        } catch (Throwable th) {
            b.throwIfFatal(th);
            a.onError(th);
        }
    }
}
