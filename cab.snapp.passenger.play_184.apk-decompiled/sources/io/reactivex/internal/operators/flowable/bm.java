package io.reactivex.internal.operators.flowable;

import io.reactivex.c.b;
import io.reactivex.e.c;
import io.reactivex.e.g;
import io.reactivex.i;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
import org.b.d;

public final class bm<T, S> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<S> f8034b;
    final c<S, i<T>, S> c;
    final g<? super S> d;

    static final class a<T, S> extends AtomicLong implements i<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f8035a;

        /* renamed from: b  reason: collision with root package name */
        final c<S, ? super i<T>, S> f8036b;
        final g<? super S> c;
        S d;
        volatile boolean e;
        boolean f;
        boolean g;

        a(org.b.c<? super T> cVar, c<S, ? super i<T>, S> cVar2, g<? super S> gVar, S s) {
            this.f8035a = cVar;
            this.f8036b = cVar2;
            this.c = gVar;
            this.d = s;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j) && io.reactivex.internal.util.c.add(this, j) == 0) {
                S s = this.d;
                c<S, ? super i<T>, S> cVar = this.f8036b;
                long j2 = j;
                do {
                    long j3 = 0;
                    while (true) {
                        if (j3 == j2) {
                            j2 = get();
                            if (j3 == j2) {
                                this.d = s;
                                j2 = addAndGet(-j3);
                            }
                        } else if (this.e) {
                            this.d = null;
                            a(s);
                            return;
                        } else {
                            this.g = false;
                            try {
                                s = cVar.apply(s, this);
                                if (this.f) {
                                    this.e = true;
                                    this.d = null;
                                    a(s);
                                    return;
                                }
                                j3++;
                            } catch (Throwable th) {
                                b.throwIfFatal(th);
                                this.e = true;
                                this.d = null;
                                onError(th);
                                a(s);
                                return;
                            }
                        }
                    }
                } while (j2 != 0);
            }
        }

        private void a(S s) {
            try {
                this.c.accept(s);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
        }

        public final void cancel() {
            if (!this.e) {
                this.e = true;
                if (io.reactivex.internal.util.c.add(this, 1) == 0) {
                    S s = this.d;
                    this.d = null;
                    a(s);
                }
            }
        }

        public final void onNext(T t) {
            if (!this.f) {
                if (this.g) {
                    onError(new IllegalStateException("onNext already called in this generate turn"));
                } else if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.g = true;
                    this.f8035a.onNext(t);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.f) {
                io.reactivex.g.a.onError(th);
                return;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f = true;
            this.f8035a.onError(th);
        }

        public final void onComplete() {
            if (!this.f) {
                this.f = true;
                this.f8035a.onComplete();
            }
        }
    }

    public bm(Callable<S> callable, c<S, i<T>, S> cVar, g<? super S> gVar) {
        this.f8034b = callable;
        this.c = cVar;
        this.d = gVar;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        try {
            cVar.onSubscribe(new a(cVar, this.c, this.d, this.f8034b.call()));
        } catch (Throwable th) {
            b.throwIfFatal(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
