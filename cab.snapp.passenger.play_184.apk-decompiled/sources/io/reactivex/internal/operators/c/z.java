package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class z<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final ao<? extends T> f7640b;

    static final class a<T> extends AtomicReference<c> implements ag<T>, al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7641a;

        /* renamed from: b  reason: collision with root package name */
        ao<? extends T> f7642b;
        boolean c;

        a(ag<? super T> agVar, ao<? extends T> aoVar) {
            this.f7641a = agVar;
            this.f7642b = aoVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar) && !this.c) {
                this.f7641a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.f7641a.onNext(t);
        }

        public final void onSuccess(T t) {
            this.f7641a.onNext(t);
            this.f7641a.onComplete();
        }

        public final void onError(Throwable th) {
            this.f7641a.onError(th);
        }

        public final void onComplete() {
            this.c = true;
            DisposableHelper.replace(this, null);
            ao<? extends T> aoVar = this.f7642b;
            this.f7642b = null;
            aoVar.subscribe(this);
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public z(io.reactivex.z<T> zVar, ao<? extends T> aoVar) {
        super(zVar);
        this.f7640b = aoVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7640b));
    }
}
