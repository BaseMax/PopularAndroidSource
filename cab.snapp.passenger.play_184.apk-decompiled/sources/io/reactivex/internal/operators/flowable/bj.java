package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import java.util.Iterator;

public final class bj<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends T> f8027b;

    static abstract class a<T> extends io.reactivex.internal.subscriptions.b<T> {

        /* renamed from: a  reason: collision with root package name */
        Iterator<? extends T> f8028a;

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f8029b;
        boolean c;

        /* access modifiers changed from: package-private */
        public abstract void a();

        /* access modifiers changed from: package-private */
        public abstract void a(long j);

        public final int requestFusion(int i) {
            return i & 1;
        }

        a(Iterator<? extends T> it) {
            this.f8028a = it;
        }

        public final T poll() {
            Iterator<? extends T> it = this.f8028a;
            if (it == null) {
                return null;
            }
            if (!this.c) {
                this.c = true;
            } else if (!it.hasNext()) {
                return null;
            }
            return io.reactivex.internal.a.b.requireNonNull(this.f8028a.next(), "Iterator.next() returned a null value");
        }

        public final boolean isEmpty() {
            Iterator<? extends T> it = this.f8028a;
            return it == null || !it.hasNext();
        }

        public final void clear() {
            this.f8028a = null;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j) && io.reactivex.internal.util.c.add(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    a();
                    return;
                }
                a(j);
            }
        }

        public final void cancel() {
            this.f8029b = true;
        }
    }

    static final class b<T> extends a<T> {
        final io.reactivex.internal.b.a<? super T> d;

        b(io.reactivex.internal.b.a<? super T> aVar, Iterator<? extends T> it) {
            super(it);
            this.d = aVar;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            Iterator it = this.f8028a;
            io.reactivex.internal.b.a<? super T> aVar = this.d;
            while (!this.f8029b) {
                try {
                    Object next = it.next();
                    if (!this.f8029b) {
                        if (next == null) {
                            aVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                            return;
                        }
                        aVar.tryOnNext(next);
                        if (!this.f8029b) {
                            try {
                                if (!it.hasNext()) {
                                    if (!this.f8029b) {
                                        aVar.onComplete();
                                    }
                                    return;
                                }
                            } catch (Throwable th) {
                                io.reactivex.c.b.throwIfFatal(th);
                                aVar.onError(th);
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.c.b.throwIfFatal(th2);
                    aVar.onError(th2);
                    return;
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(long j) {
            Iterator it = this.f8028a;
            io.reactivex.internal.b.a<? super T> aVar = this.d;
            long j2 = j;
            do {
                long j3 = 0;
                while (true) {
                    if (j3 == j2) {
                        j2 = get();
                        if (j3 == j2) {
                            j2 = addAndGet(-j3);
                        }
                    } else if (!this.f8029b) {
                        try {
                            Object next = it.next();
                            if (!this.f8029b) {
                                if (next == null) {
                                    aVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                                    return;
                                }
                                boolean tryOnNext = aVar.tryOnNext(next);
                                if (!this.f8029b) {
                                    try {
                                        if (!it.hasNext()) {
                                            if (!this.f8029b) {
                                                aVar.onComplete();
                                            }
                                            return;
                                        } else if (tryOnNext) {
                                            j3++;
                                        }
                                    } catch (Throwable th) {
                                        io.reactivex.c.b.throwIfFatal(th);
                                        aVar.onError(th);
                                        return;
                                    }
                                } else {
                                    return;
                                }
                            } else {
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.c.b.throwIfFatal(th2);
                            aVar.onError(th2);
                            return;
                        }
                    } else {
                        return;
                    }
                }
            } while (j2 != 0);
        }
    }

    static final class c<T> extends a<T> {
        final org.b.c<? super T> d;

        c(org.b.c<? super T> cVar, Iterator<? extends T> it) {
            super(it);
            this.d = cVar;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            Iterator it = this.f8028a;
            org.b.c<? super T> cVar = this.d;
            while (!this.f8029b) {
                try {
                    Object next = it.next();
                    if (!this.f8029b) {
                        if (next == null) {
                            cVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                            return;
                        }
                        cVar.onNext(next);
                        if (!this.f8029b) {
                            try {
                                if (!it.hasNext()) {
                                    if (!this.f8029b) {
                                        cVar.onComplete();
                                    }
                                    return;
                                }
                            } catch (Throwable th) {
                                io.reactivex.c.b.throwIfFatal(th);
                                cVar.onError(th);
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.c.b.throwIfFatal(th2);
                    cVar.onError(th2);
                    return;
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(long j) {
            Iterator it = this.f8028a;
            org.b.c<? super T> cVar = this.d;
            long j2 = j;
            do {
                long j3 = 0;
                while (true) {
                    if (j3 == j2) {
                        j2 = get();
                        if (j3 == j2) {
                            j2 = addAndGet(-j3);
                        }
                    } else if (!this.f8029b) {
                        try {
                            Object next = it.next();
                            if (!this.f8029b) {
                                if (next == null) {
                                    cVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                                    return;
                                }
                                cVar.onNext(next);
                                if (!this.f8029b) {
                                    try {
                                        if (!it.hasNext()) {
                                            if (!this.f8029b) {
                                                cVar.onComplete();
                                            }
                                            return;
                                        }
                                        j3++;
                                    } catch (Throwable th) {
                                        io.reactivex.c.b.throwIfFatal(th);
                                        cVar.onError(th);
                                        return;
                                    }
                                } else {
                                    return;
                                }
                            } else {
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.c.b.throwIfFatal(th2);
                            cVar.onError(th2);
                            return;
                        }
                    } else {
                        return;
                    }
                }
            } while (j2 != 0);
        }
    }

    public bj(Iterable<? extends T> iterable) {
        this.f8027b = iterable;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        try {
            subscribe(cVar, this.f8027b.iterator());
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptySubscription.error(th, cVar);
        }
    }

    public static <T> void subscribe(org.b.c<? super T> cVar, Iterator<? extends T> it) {
        try {
            if (!it.hasNext()) {
                EmptySubscription.complete(cVar);
            } else if (cVar instanceof io.reactivex.internal.b.a) {
                cVar.onSubscribe(new b((io.reactivex.internal.b.a) cVar, it));
            } else {
                cVar.onSubscribe(new c(cVar, it));
            }
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
