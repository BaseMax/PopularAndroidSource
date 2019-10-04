package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.d;

public final class dk<T, U> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final ae<U> f7420b;

    final class a implements ag<U> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.internal.disposables.a f7421a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f7422b;
        final d<T> c;
        c d;

        a(io.reactivex.internal.disposables.a aVar, b<T> bVar, d<T> dVar) {
            this.f7421a = aVar;
            this.f7422b = bVar;
            this.c = dVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.d, cVar)) {
                this.d = cVar;
                this.f7421a.setResource(1, cVar);
            }
        }

        public final void onNext(U u) {
            this.d.dispose();
            this.f7422b.d = true;
        }

        public final void onError(Throwable th) {
            this.f7421a.dispose();
            this.c.onError(th);
        }

        public final void onComplete() {
            this.f7422b.d = true;
        }
    }

    static final class b<T> implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7423a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.disposables.a f7424b;
        c c;
        volatile boolean d;
        boolean e;

        b(ag<? super T> agVar, io.reactivex.internal.disposables.a aVar) {
            this.f7423a = agVar;
            this.f7424b = aVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7424b.setResource(0, cVar);
            }
        }

        public final void onNext(T t) {
            if (this.e) {
                this.f7423a.onNext(t);
                return;
            }
            if (this.d) {
                this.e = true;
                this.f7423a.onNext(t);
            }
        }

        public final void onError(Throwable th) {
            this.f7424b.dispose();
            this.f7423a.onError(th);
        }

        public final void onComplete() {
            this.f7424b.dispose();
            this.f7423a.onComplete();
        }
    }

    public dk(ae<T> aeVar, ae<U> aeVar2) {
        super(aeVar);
        this.f7420b = aeVar2;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        d dVar = new d(agVar);
        io.reactivex.internal.disposables.a aVar = new io.reactivex.internal.disposables.a(2);
        dVar.onSubscribe(aVar);
        b bVar = new b(dVar, aVar);
        this.f7420b.subscribe(new a(aVar, bVar, dVar));
        this.f7091a.subscribe(bVar);
    }
}
