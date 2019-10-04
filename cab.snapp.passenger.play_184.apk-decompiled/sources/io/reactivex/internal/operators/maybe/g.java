package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.f;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.j;
import io.reactivex.t;
import io.reactivex.w;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class g<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends w<? extends T>> f8575b;

    static final class a<T> extends AtomicInteger implements t<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8576a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f8577b = new AtomicLong();
        final AtomicReference<Object> c = new AtomicReference<>(NotificationLite.COMPLETE);
        final f d = new f();
        final Iterator<? extends w<? extends T>> e;
        long f;

        a(c<? super T> cVar, Iterator<? extends w<? extends T>> it) {
            this.f8576a = cVar;
            this.e = it;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this.f8577b, j);
                a();
            }
        }

        public final void cancel() {
            this.d.dispose();
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            this.d.replace(cVar);
        }

        public final void onSuccess(T t) {
            this.c.lazySet(t);
            a();
        }

        public final void onError(Throwable th) {
            this.f8576a.onError(th);
        }

        public final void onComplete() {
            this.c.lazySet(NotificationLite.COMPLETE);
            a();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                AtomicReference<Object> atomicReference = this.c;
                c<? super T> cVar = this.f8576a;
                f fVar = this.d;
                while (!fVar.isDisposed()) {
                    Object obj = atomicReference.get();
                    if (obj != null) {
                        boolean z = true;
                        if (obj != NotificationLite.COMPLETE) {
                            long j = this.f;
                            if (j != this.f8577b.get()) {
                                this.f = j + 1;
                                atomicReference.lazySet(null);
                                cVar.onNext(obj);
                            } else {
                                z = false;
                            }
                        } else {
                            atomicReference.lazySet(null);
                        }
                        if (z && !fVar.isDisposed()) {
                            try {
                                if (this.e.hasNext()) {
                                    try {
                                        ((w) b.requireNonNull(this.e.next(), "The source Iterator returned a null MaybeSource")).subscribe(this);
                                    } catch (Throwable th) {
                                        io.reactivex.c.b.throwIfFatal(th);
                                        cVar.onError(th);
                                        return;
                                    }
                                } else {
                                    cVar.onComplete();
                                }
                            } catch (Throwable th2) {
                                io.reactivex.c.b.throwIfFatal(th2);
                                cVar.onError(th2);
                                return;
                            }
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                atomicReference.lazySet(null);
            }
        }
    }

    public g(Iterable<? extends w<? extends T>> iterable) {
        this.f8575b = iterable;
    }

    public final void subscribeActual(c<? super T> cVar) {
        try {
            a aVar = new a(cVar, (Iterator) b.requireNonNull(this.f8575b.iterator(), "The sources Iterable returned a null Iterator"));
            cVar.onSubscribe(aVar);
            aVar.a();
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
