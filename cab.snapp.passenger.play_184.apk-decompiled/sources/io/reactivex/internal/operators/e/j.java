package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.c.y;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class j<T, U> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7837a;

    /* renamed from: b  reason: collision with root package name */
    final ao<U> f7838b;

    static final class a<T, U> extends AtomicReference<c> implements al<U>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7839a;

        /* renamed from: b  reason: collision with root package name */
        final ao<T> f7840b;

        a(al<? super T> alVar, ao<T> aoVar) {
            this.f7839a = alVar;
            this.f7840b = aoVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f7839a.onSubscribe(this);
            }
        }

        public final void onSuccess(U u) {
            this.f7840b.subscribe(new y(this, this.f7839a));
        }

        public final void onError(Throwable th) {
            this.f7839a.onError(th);
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public j(ao<T> aoVar, ao<U> aoVar2) {
        this.f7837a = aoVar;
        this.f7838b = aoVar2;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7838b.subscribe(new a(alVar, this.f7837a));
    }
}
