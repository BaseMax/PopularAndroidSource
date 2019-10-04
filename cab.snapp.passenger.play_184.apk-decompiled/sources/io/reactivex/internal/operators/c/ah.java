package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.f;
import io.reactivex.z;

public final class ah<T, U> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<? extends T> f7120a;

    /* renamed from: b  reason: collision with root package name */
    final ae<U> f7121b;

    final class a implements ag<U> {

        /* renamed from: a  reason: collision with root package name */
        final f f7122a;

        /* renamed from: b  reason: collision with root package name */
        final ag<? super T> f7123b;
        boolean c;

        /* renamed from: io.reactivex.internal.operators.c.ah$a$a  reason: collision with other inner class name */
        final class C0157a implements ag<T> {
            C0157a() {
            }

            public final void onSubscribe(c cVar) {
                a.this.f7122a.update(cVar);
            }

            public final void onNext(T t) {
                a.this.f7123b.onNext(t);
            }

            public final void onError(Throwable th) {
                a.this.f7123b.onError(th);
            }

            public final void onComplete() {
                a.this.f7123b.onComplete();
            }
        }

        a(f fVar, ag<? super T> agVar) {
            this.f7122a = fVar;
            this.f7123b = agVar;
        }

        public final void onSubscribe(c cVar) {
            this.f7122a.update(cVar);
        }

        public final void onNext(U u) {
            onComplete();
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = true;
            this.f7123b.onError(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                ah.this.f7120a.subscribe(new C0157a());
            }
        }
    }

    public ah(ae<? extends T> aeVar, ae<U> aeVar2) {
        this.f7120a = aeVar;
        this.f7121b = aeVar2;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        f fVar = new f();
        agVar.onSubscribe(fVar);
        this.f7121b.subscribe(new a(fVar, agVar));
    }
}
