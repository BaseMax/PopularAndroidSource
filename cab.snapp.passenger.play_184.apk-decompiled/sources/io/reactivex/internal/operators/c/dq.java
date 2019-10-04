package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;

public final class dq<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final int f7444b;

    static final class a<T> extends ArrayDeque<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7445a;

        /* renamed from: b  reason: collision with root package name */
        final int f7446b;
        c c;
        volatile boolean d;

        a(ag<? super T> agVar, int i) {
            this.f7445a = agVar;
            this.f7446b = i;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7445a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (this.f7446b == size()) {
                poll();
            }
            offer(t);
        }

        public final void onError(Throwable th) {
            this.f7445a.onError(th);
        }

        public final void onComplete() {
            ag<? super T> agVar = this.f7445a;
            while (!this.d) {
                Object poll = poll();
                if (poll == null) {
                    if (!this.d) {
                        agVar.onComplete();
                    }
                    return;
                }
                agVar.onNext(poll);
            }
        }

        public final void dispose() {
            if (!this.d) {
                this.d = true;
                this.c.dispose();
            }
        }

        public final boolean isDisposed() {
            return this.d;
        }
    }

    public dq(ae<T> aeVar, int i) {
        super(aeVar);
        this.f7444b = i;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7444b));
    }
}
