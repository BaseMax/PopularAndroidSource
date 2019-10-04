package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.f;

public final class dn<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final ae<? extends T> f7433b;

    static final class a<T> implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7434a;

        /* renamed from: b  reason: collision with root package name */
        final ae<? extends T> f7435b;
        final f c = new f();
        boolean d = true;

        a(ag<? super T> agVar, ae<? extends T> aeVar) {
            this.f7434a = agVar;
            this.f7435b = aeVar;
        }

        public final void onSubscribe(c cVar) {
            this.c.update(cVar);
        }

        public final void onNext(T t) {
            if (this.d) {
                this.d = false;
            }
            this.f7434a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f7434a.onError(th);
        }

        public final void onComplete() {
            if (this.d) {
                this.d = false;
                this.f7435b.subscribe(this);
                return;
            }
            this.f7434a.onComplete();
        }
    }

    public dn(ae<T> aeVar, ae<? extends T> aeVar2) {
        super(aeVar);
        this.f7433b = aeVar2;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        a aVar = new a(agVar, this.f7433b);
        agVar.onSubscribe(aVar.c);
        this.f7091a.subscribe(aVar);
    }
}
