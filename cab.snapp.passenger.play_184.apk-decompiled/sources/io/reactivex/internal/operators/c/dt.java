package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.b;
import io.reactivex.internal.util.i;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class dt<T, U> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final ae<? extends U> f7452b;

    static final class a<T, U> extends AtomicInteger implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7453a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<c> f7454b = new AtomicReference<>();
        final a<T, U>.a c = new C0168a();
        final b d = new b();

        /* renamed from: io.reactivex.internal.operators.c.dt$a$a  reason: collision with other inner class name */
        final class C0168a extends AtomicReference<c> implements ag<U> {
            C0168a() {
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onNext(U u) {
                DisposableHelper.dispose(this);
                a.this.a();
            }

            public final void onError(Throwable th) {
                a aVar = a.this;
                DisposableHelper.dispose(aVar.f7454b);
                i.onError((ag<?>) aVar.f7453a, th, (AtomicInteger) aVar, aVar.d);
            }

            public final void onComplete() {
                a.this.a();
            }
        }

        a(ag<? super T> agVar) {
            this.f7453a = agVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this.f7454b);
            DisposableHelper.dispose(this.c);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f7454b.get());
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this.f7454b, cVar);
        }

        public final void onNext(T t) {
            i.onNext(this.f7453a, t, (AtomicInteger) this, this.d);
        }

        public final void onError(Throwable th) {
            DisposableHelper.dispose(this.c);
            i.onError((ag<?>) this.f7453a, th, (AtomicInteger) this, this.d);
        }

        public final void onComplete() {
            DisposableHelper.dispose(this.c);
            i.onComplete((ag<?>) this.f7453a, (AtomicInteger) this, this.d);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            DisposableHelper.dispose(this.f7454b);
            i.onComplete((ag<?>) this.f7453a, (AtomicInteger) this, this.d);
        }
    }

    public dt(ae<T> aeVar, ae<? extends U> aeVar2) {
        super(aeVar);
        this.f7452b = aeVar2;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        a aVar = new a(agVar);
        agVar.onSubscribe(aVar);
        this.f7452b.subscribe(aVar.c);
        this.f7091a.subscribe(aVar);
    }
}
