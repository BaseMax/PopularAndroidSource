package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.b;
import io.reactivex.internal.util.i;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class bz<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final g f7266b;

    static final class a<T> extends AtomicInteger implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7267a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<c> f7268b = new AtomicReference<>();
        final C0162a c = new C0162a(this);
        final b d = new b();
        volatile boolean e;
        volatile boolean f;

        /* renamed from: io.reactivex.internal.operators.c.bz$a$a  reason: collision with other inner class name */
        static final class C0162a extends AtomicReference<c> implements d {

            /* renamed from: a  reason: collision with root package name */
            final a<?> f7269a;

            C0162a(a<?> aVar) {
                this.f7269a = aVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onError(Throwable th) {
                a<?> aVar = this.f7269a;
                DisposableHelper.dispose(aVar.f7268b);
                i.onError((ag<?>) aVar.f7267a, th, (AtomicInteger) aVar, aVar.d);
            }

            public final void onComplete() {
                a<?> aVar = this.f7269a;
                aVar.f = true;
                if (aVar.e) {
                    i.onComplete((ag<?>) aVar.f7267a, (AtomicInteger) aVar, aVar.d);
                }
            }
        }

        a(ag<? super T> agVar) {
            this.f7267a = agVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this.f7268b, cVar);
        }

        public final void onNext(T t) {
            i.onNext(this.f7267a, t, (AtomicInteger) this, this.d);
        }

        public final void onError(Throwable th) {
            DisposableHelper.dispose(this.f7268b);
            i.onError((ag<?>) this.f7267a, th, (AtomicInteger) this, this.d);
        }

        public final void onComplete() {
            this.e = true;
            if (this.f) {
                i.onComplete((ag<?>) this.f7267a, (AtomicInteger) this, this.d);
            }
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f7268b.get());
        }

        public final void dispose() {
            DisposableHelper.dispose(this.f7268b);
            DisposableHelper.dispose(this.c);
        }
    }

    public bz(z<T> zVar, g gVar) {
        super(zVar);
        this.f7266b = gVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        a aVar = new a(agVar);
        agVar.onSubscribe(aVar);
        this.f7091a.subscribe(aVar);
        this.f7266b.subscribe(aVar.c);
    }
}
