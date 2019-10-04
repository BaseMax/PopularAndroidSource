package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;

public final class di<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final int f7414b;

    static final class a<T> extends ArrayDeque<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7415a;

        /* renamed from: b  reason: collision with root package name */
        final int f7416b;
        c c;

        a(ag<? super T> agVar, int i) {
            super(i);
            this.f7415a = agVar;
            this.f7416b = i;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7415a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void onNext(T t) {
            if (this.f7416b == size()) {
                this.f7415a.onNext(poll());
            }
            offer(t);
        }

        public final void onError(Throwable th) {
            this.f7415a.onError(th);
        }

        public final void onComplete() {
            this.f7415a.onComplete();
        }
    }

    public di(ae<T> aeVar, int i) {
        super(aeVar);
        this.f7414b = i;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7414b));
    }
}
