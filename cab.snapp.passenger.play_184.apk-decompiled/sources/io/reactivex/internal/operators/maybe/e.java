package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.f;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.j;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class e<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final w<? extends T>[] f8569b;

    static final class a<T> extends AtomicInteger implements t<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8570a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f8571b = new AtomicLong();
        final AtomicReference<Object> c = new AtomicReference<>(NotificationLite.COMPLETE);
        final f d = new f();
        final w<? extends T>[] e;
        int f;
        long g;

        a(c<? super T> cVar, w<? extends T>[] wVarArr) {
            this.f8570a = cVar;
            this.e = wVarArr;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this.f8571b, j);
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
            this.f8570a.onError(th);
        }

        public final void onComplete() {
            this.c.lazySet(NotificationLite.COMPLETE);
            a();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                AtomicReference<Object> atomicReference = this.c;
                c<? super T> cVar = this.f8570a;
                f fVar = this.d;
                while (!fVar.isDisposed()) {
                    Object obj = atomicReference.get();
                    if (obj != null) {
                        boolean z = true;
                        if (obj != NotificationLite.COMPLETE) {
                            long j = this.g;
                            if (j != this.f8571b.get()) {
                                this.g = j + 1;
                                atomicReference.lazySet(null);
                                cVar.onNext(obj);
                            } else {
                                z = false;
                            }
                        } else {
                            atomicReference.lazySet(null);
                        }
                        if (z && !fVar.isDisposed()) {
                            int i = this.f;
                            w<? extends T>[] wVarArr = this.e;
                            if (i == wVarArr.length) {
                                cVar.onComplete();
                                return;
                            } else {
                                this.f = i + 1;
                                wVarArr[i].subscribe(this);
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

    public e(w<? extends T>[] wVarArr) {
        this.f8569b = wVarArr;
    }

    public final void subscribeActual(c<? super T> cVar) {
        a aVar = new a(cVar, this.f8569b);
        cVar.onSubscribe(aVar);
        aVar.a();
    }
}
