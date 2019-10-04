package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class ar<T, U> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7772a;

    /* renamed from: b  reason: collision with root package name */
    final org.b.b<U> f7773b;

    static final class a<T> extends AtomicReference<c> implements al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7774a;

        /* renamed from: b  reason: collision with root package name */
        final b f7775b = new b(this);

        a(al<? super T> alVar) {
            this.f7774a = alVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
            this.f7775b.dispose();
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(T t) {
            this.f7775b.dispose();
            if (((c) getAndSet(DisposableHelper.DISPOSED)) != DisposableHelper.DISPOSED) {
                this.f7774a.onSuccess(t);
            }
        }

        public final void onError(Throwable th) {
            this.f7775b.dispose();
            if (((c) get()) == DisposableHelper.DISPOSED || ((c) getAndSet(DisposableHelper.DISPOSED)) == DisposableHelper.DISPOSED) {
                io.reactivex.g.a.onError(th);
            } else {
                this.f7774a.onError(th);
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(Throwable th) {
            if (((c) get()) != DisposableHelper.DISPOSED) {
                c cVar = (c) getAndSet(DisposableHelper.DISPOSED);
                if (cVar != DisposableHelper.DISPOSED) {
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    this.f7774a.onError(th);
                    return;
                }
            }
            io.reactivex.g.a.onError(th);
        }
    }

    static final class b extends AtomicReference<d> implements o<Object> {

        /* renamed from: a  reason: collision with root package name */
        final a<?> f7776a;

        b(a<?> aVar) {
            this.f7776a = aVar;
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }

        public final void onNext(Object obj) {
            if (SubscriptionHelper.cancel(this)) {
                this.f7776a.a(new CancellationException());
            }
        }

        public final void onError(Throwable th) {
            this.f7776a.a(th);
        }

        public final void onComplete() {
            if (get() != SubscriptionHelper.CANCELLED) {
                lazySet(SubscriptionHelper.CANCELLED);
                this.f7776a.a(new CancellationException());
            }
        }

        public final void dispose() {
            SubscriptionHelper.cancel(this);
        }
    }

    public ar(ao<T> aoVar, org.b.b<U> bVar) {
        this.f7772a = aoVar;
        this.f7773b = bVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        a aVar = new a(alVar);
        alVar.onSubscribe(aVar);
        this.f7773b.subscribe(aVar.f7775b);
        this.f7772a.subscribe(aVar);
    }
}
