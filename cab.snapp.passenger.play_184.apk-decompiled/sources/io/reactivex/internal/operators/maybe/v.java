package io.reactivex.internal.operators.maybe;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.e.d;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class v<T> extends ai<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final w<? extends T> f8621a;

    /* renamed from: b  reason: collision with root package name */
    final w<? extends T> f8622b;
    final d<? super T, ? super T> c;

    static final class a<T> extends AtomicInteger implements c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super Boolean> f8623a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f8624b = new b<>(this);
        final b<T> c = new b<>(this);
        final d<? super T, ? super T> d;

        a(al<? super Boolean> alVar, d<? super T, ? super T> dVar) {
            super(2);
            this.f8623a = alVar;
            this.d = dVar;
        }

        public final void dispose() {
            this.f8624b.dispose();
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) this.f8624b.get());
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            al<? super Boolean> alVar;
            boolean z;
            if (decrementAndGet() == 0) {
                Object obj = this.f8624b.f8626b;
                Object obj2 = this.c.f8626b;
                if (obj == null || obj2 == null) {
                    alVar = this.f8623a;
                    z = obj == null && obj2 == null;
                } else {
                    try {
                        z = this.d.test(obj, obj2);
                        alVar = this.f8623a;
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        this.f8623a.onError(th);
                        return;
                    }
                }
                alVar.onSuccess(Boolean.valueOf(z));
            }
        }
    }

    static final class b<T> extends AtomicReference<c> implements t<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T> f8625a;

        /* renamed from: b  reason: collision with root package name */
        Object f8626b;

        b(a<T> aVar) {
            this.f8625a = aVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(T t) {
            this.f8626b = t;
            this.f8625a.a();
        }

        public final void onError(Throwable th) {
            a<T> aVar = this.f8625a;
            if (aVar.getAndSet(0) > 0) {
                if (this == aVar.f8624b) {
                    aVar.c.dispose();
                } else {
                    aVar.f8624b.dispose();
                }
                aVar.f8623a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.f8625a.a();
        }
    }

    public v(w<? extends T> wVar, w<? extends T> wVar2, d<? super T, ? super T> dVar) {
        this.f8621a = wVar;
        this.f8622b = wVar2;
        this.c = dVar;
    }

    public final void subscribeActual(al<? super Boolean> alVar) {
        a aVar = new a(alVar, this.c);
        alVar.onSubscribe(aVar);
        w<? extends T> wVar = this.f8621a;
        w<? extends T> wVar2 = this.f8622b;
        wVar.subscribe(aVar.f8624b);
        wVar2.subscribe(aVar.c);
    }
}
