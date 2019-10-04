package io.reactivex.internal.operators.maybe;

import io.reactivex.c.b;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.t;
import io.reactivex.w;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import org.b.c;

public final class ac<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final w<T> f8419b;
    final h<? super T, ? extends Iterable<? extends R>> c;

    static final class a<T, R> extends io.reactivex.internal.subscriptions.a<R> implements t<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f8420a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends Iterable<? extends R>> f8421b;
        final AtomicLong c = new AtomicLong();
        io.reactivex.b.c d;
        volatile Iterator<? extends R> e;
        volatile boolean f;
        boolean g;

        a(c<? super R> cVar, h<? super T, ? extends Iterable<? extends R>> hVar) {
            this.f8420a = cVar;
            this.f8421b = hVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.d, cVar)) {
                this.d = cVar;
                this.f8420a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            try {
                Iterator<? extends R> it = ((Iterable) this.f8421b.apply(t)).iterator();
                if (!it.hasNext()) {
                    this.f8420a.onComplete();
                    return;
                }
                this.e = it;
                a();
            } catch (Throwable th) {
                b.throwIfFatal(th);
                this.f8420a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.d = DisposableHelper.DISPOSED;
            this.f8420a.onError(th);
        }

        public final void onComplete() {
            this.f8420a.onComplete();
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this.c, j);
                a();
            }
        }

        public final void cancel() {
            this.f = true;
            this.d.dispose();
            this.d = DisposableHelper.DISPOSED;
        }

        private void a(c<? super R> cVar, Iterator<? extends R> it) {
            while (!this.f) {
                try {
                    cVar.onNext(it.next());
                    if (!this.f) {
                        try {
                            if (!it.hasNext()) {
                                cVar.onComplete();
                                return;
                            }
                        } catch (Throwable th) {
                            b.throwIfFatal(th);
                            cVar.onError(th);
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    b.throwIfFatal(th2);
                    cVar.onError(th2);
                    return;
                }
            }
        }

        private void a() {
            if (getAndIncrement() == 0) {
                c<? super R> cVar = this.f8420a;
                Iterator<? extends R> it = this.e;
                if (!this.g || it == null) {
                    int i = 1;
                    while (true) {
                        if (it != null) {
                            long j = this.c.get();
                            if (j == Long.MAX_VALUE) {
                                a(cVar, it);
                                return;
                            }
                            long j2 = 0;
                            while (j2 != j) {
                                if (!this.f) {
                                    try {
                                        cVar.onNext(io.reactivex.internal.a.b.requireNonNull(it.next(), "The iterator returned a null value"));
                                        if (!this.f) {
                                            j2++;
                                            try {
                                                if (!it.hasNext()) {
                                                    cVar.onComplete();
                                                    return;
                                                }
                                            } catch (Throwable th) {
                                                b.throwIfFatal(th);
                                                cVar.onError(th);
                                                return;
                                            }
                                        } else {
                                            return;
                                        }
                                    } catch (Throwable th2) {
                                        b.throwIfFatal(th2);
                                        cVar.onError(th2);
                                        return;
                                    }
                                } else {
                                    return;
                                }
                            }
                            if (j2 != 0) {
                                io.reactivex.internal.util.c.produced(this.c, j2);
                            }
                        }
                        i = addAndGet(-i);
                        if (i == 0) {
                            return;
                        }
                        if (it == null) {
                            it = this.e;
                        }
                    }
                } else {
                    cVar.onNext(null);
                    cVar.onComplete();
                }
            }
        }

        public final int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.g = true;
            return 2;
        }

        public final void clear() {
            this.e = null;
        }

        public final boolean isEmpty() {
            return this.e == null;
        }

        public final R poll() throws Exception {
            Iterator<? extends R> it = this.e;
            if (it == null) {
                return null;
            }
            R requireNonNull = io.reactivex.internal.a.b.requireNonNull(it.next(), "The iterator returned a null value");
            if (!it.hasNext()) {
                this.e = null;
            }
            return requireNonNull;
        }
    }

    public ac(w<T> wVar, h<? super T, ? extends Iterable<? extends R>> hVar) {
        this.f8419b = wVar;
        this.c = hVar;
    }

    public final void subscribeActual(c<? super R> cVar) {
        this.f8419b.subscribe(new a(cVar, this.c));
    }
}
