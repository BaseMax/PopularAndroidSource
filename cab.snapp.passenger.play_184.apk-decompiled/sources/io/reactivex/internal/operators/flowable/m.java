package io.reactivex.internal.operators.flowable;

import io.reactivex.e.e;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.b.d;

public final class m<T, C extends Collection<? super T>> extends a<T, C> {
    final int c;
    final int d;
    final Callable<C> e;

    static final class a<T, C extends Collection<? super T>> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super C> f8353a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f8354b;
        final int c;
        C d;
        d e;
        boolean f;
        int g;

        a(org.b.c<? super C> cVar, int i, Callable<C> callable) {
            this.f8353a = cVar;
            this.c = i;
            this.f8354b = callable;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                this.e.request(io.reactivex.internal.util.c.multiplyCap(j, (long) this.c));
            }
        }

        public final void cancel() {
            this.e.cancel();
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.e, dVar)) {
                this.e = dVar;
                this.f8353a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.f) {
                C c2 = this.d;
                if (c2 == null) {
                    try {
                        c2 = (Collection) io.reactivex.internal.a.b.requireNonNull(this.f8354b.call(), "The bufferSupplier returned a null buffer");
                        this.d = c2;
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        cancel();
                        onError(th);
                        return;
                    }
                }
                c2.add(t);
                int i = this.g + 1;
                if (i == this.c) {
                    this.g = 0;
                    this.d = null;
                    this.f8353a.onNext(c2);
                    return;
                }
                this.g = i;
            }
        }

        public final void onError(Throwable th) {
            if (this.f) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.f = true;
            this.f8353a.onError(th);
        }

        public final void onComplete() {
            if (!this.f) {
                this.f = true;
                C c2 = this.d;
                if (c2 != null && !c2.isEmpty()) {
                    this.f8353a.onNext(c2);
                }
                this.f8353a.onComplete();
            }
        }
    }

    static final class b<T, C extends Collection<? super T>> extends AtomicLong implements e, o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super C> f8355a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f8356b;
        final int c;
        final int d;
        final ArrayDeque<C> e = new ArrayDeque<>();
        final AtomicBoolean f = new AtomicBoolean();
        d g;
        boolean h;
        int i;
        volatile boolean j;
        long k;

        b(org.b.c<? super C> cVar, int i2, int i3, Callable<C> callable) {
            this.f8355a = cVar;
            this.c = i2;
            this.d = i3;
            this.f8356b = callable;
        }

        public final boolean getAsBoolean() {
            return this.j;
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                if (!io.reactivex.internal.util.o.postCompleteRequest(j2, this.f8355a, this.e, this, this)) {
                    if (this.f.get() || !this.f.compareAndSet(false, true)) {
                        this.g.request(io.reactivex.internal.util.c.multiplyCap((long) this.d, j2));
                    } else {
                        this.g.request(io.reactivex.internal.util.c.addCap((long) this.c, io.reactivex.internal.util.c.multiplyCap((long) this.d, j2 - 1)));
                    }
                }
            }
        }

        public final void cancel() {
            this.j = true;
            this.g.cancel();
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.g, dVar)) {
                this.g = dVar;
                this.f8355a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.h) {
                ArrayDeque<C> arrayDeque = this.e;
                int i2 = this.i;
                int i3 = i2 + 1;
                if (i2 == 0) {
                    try {
                        arrayDeque.offer((Collection) io.reactivex.internal.a.b.requireNonNull(this.f8356b.call(), "The bufferSupplier returned a null buffer"));
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        cancel();
                        onError(th);
                        return;
                    }
                }
                Collection collection = (Collection) arrayDeque.peek();
                if (collection != null && collection.size() + 1 == this.c) {
                    arrayDeque.poll();
                    collection.add(t);
                    this.k++;
                    this.f8355a.onNext(collection);
                }
                Iterator<C> it = arrayDeque.iterator();
                while (it.hasNext()) {
                    ((Collection) it.next()).add(t);
                }
                if (i3 == this.d) {
                    i3 = 0;
                }
                this.i = i3;
            }
        }

        public final void onError(Throwable th) {
            if (this.h) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.h = true;
            this.e.clear();
            this.f8355a.onError(th);
        }

        public final void onComplete() {
            if (!this.h) {
                this.h = true;
                long j2 = this.k;
                if (j2 != 0) {
                    io.reactivex.internal.util.c.produced(this, j2);
                }
                io.reactivex.internal.util.o.postComplete(this.f8355a, this.e, this, this);
            }
        }
    }

    static final class c<T, C extends Collection<? super T>> extends AtomicInteger implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super C> f8357a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f8358b;
        final int c;
        final int d;
        C e;
        d f;
        boolean g;
        int h;

        c(org.b.c<? super C> cVar, int i, int i2, Callable<C> callable) {
            this.f8357a = cVar;
            this.c = i;
            this.d = i2;
            this.f8358b = callable;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                if (get() != 0 || !compareAndSet(0, 1)) {
                    this.f.request(io.reactivex.internal.util.c.multiplyCap((long) this.d, j));
                } else {
                    this.f.request(io.reactivex.internal.util.c.addCap(io.reactivex.internal.util.c.multiplyCap(j, (long) this.c), io.reactivex.internal.util.c.multiplyCap((long) (this.d - this.c), j - 1)));
                }
            }
        }

        public final void cancel() {
            this.f.cancel();
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f, dVar)) {
                this.f = dVar;
                this.f8357a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.g) {
                C c2 = this.e;
                int i = this.h;
                int i2 = i + 1;
                if (i == 0) {
                    try {
                        c2 = (Collection) io.reactivex.internal.a.b.requireNonNull(this.f8358b.call(), "The bufferSupplier returned a null buffer");
                        this.e = c2;
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        cancel();
                        onError(th);
                        return;
                    }
                }
                if (c2 != null) {
                    c2.add(t);
                    if (c2.size() == this.c) {
                        this.e = null;
                        this.f8357a.onNext(c2);
                    }
                }
                if (i2 == this.d) {
                    i2 = 0;
                }
                this.h = i2;
            }
        }

        public final void onError(Throwable th) {
            if (this.g) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.g = true;
            this.e = null;
            this.f8357a.onError(th);
        }

        public final void onComplete() {
            if (!this.g) {
                this.g = true;
                C c2 = this.e;
                this.e = null;
                if (c2 != null) {
                    this.f8357a.onNext(c2);
                }
                this.f8357a.onComplete();
            }
        }
    }

    public m(j<T> jVar, int i, int i2, Callable<C> callable) {
        super(jVar);
        this.c = i;
        this.d = i2;
        this.e = callable;
    }

    public final void subscribeActual(org.b.c<? super C> cVar) {
        int i = this.c;
        int i2 = this.d;
        if (i == i2) {
            this.f7923b.subscribe(new a(cVar, this.c, this.e));
        } else if (i2 > i) {
            this.f7923b.subscribe(new c(cVar, this.c, this.d, this.e));
        } else {
            this.f7923b.subscribe(new b(cVar, this.c, this.d, this.e));
        }
    }
}
