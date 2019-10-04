package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.b;
import io.reactivex.j;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class f<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final w<? extends T>[] f8572b;

    static final class a<T> extends AtomicInteger implements t<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8573a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f8574b = new AtomicLong();
        final AtomicReference<Object> c = new AtomicReference<>(NotificationLite.COMPLETE);
        final io.reactivex.internal.disposables.f d = new io.reactivex.internal.disposables.f();
        final w<? extends T>[] e;
        final b f = new b();
        int g;
        long h;

        a(c<? super T> cVar, w<? extends T>[] wVarArr) {
            this.f8573a = cVar;
            this.e = wVarArr;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this.f8574b, j);
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
            this.c.lazySet(NotificationLite.COMPLETE);
            if (this.f.addThrowable(th)) {
                a();
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onComplete() {
            this.c.lazySet(NotificationLite.COMPLETE);
            a();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                AtomicReference<Object> atomicReference = this.c;
                c<? super T> cVar = this.f8573a;
                io.reactivex.internal.disposables.f fVar = this.d;
                while (!fVar.isDisposed()) {
                    Object obj = atomicReference.get();
                    if (obj != null) {
                        boolean z = true;
                        if (obj != NotificationLite.COMPLETE) {
                            long j = this.h;
                            if (j != this.f8574b.get()) {
                                this.h = j + 1;
                                atomicReference.lazySet(null);
                                cVar.onNext(obj);
                            } else {
                                z = false;
                            }
                        } else {
                            atomicReference.lazySet(null);
                        }
                        if (z && !fVar.isDisposed()) {
                            int i = this.g;
                            w<? extends T>[] wVarArr = this.e;
                            if (i != wVarArr.length) {
                                this.g = i + 1;
                                wVarArr[i].subscribe(this);
                            } else if (((Throwable) this.f.get()) != null) {
                                cVar.onError(this.f.terminate());
                                return;
                            } else {
                                cVar.onComplete();
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

    public f(w<? extends T>[] wVarArr) {
        this.f8572b = wVarArr;
    }

    public final void subscribeActual(c<? super T> cVar) {
        a aVar = new a(cVar, this.f8572b);
        cVar.onSubscribe(aVar);
        aVar.a();
    }
}
