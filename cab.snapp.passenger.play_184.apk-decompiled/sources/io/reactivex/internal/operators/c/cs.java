package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.b;
import io.reactivex.internal.util.i;
import io.reactivex.j.d;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class cs<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super z<Object>, ? extends ae<?>> f7336b;

    static final class a<T> extends AtomicInteger implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7337a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f7338b = new AtomicInteger();
        final b c = new b();
        final d<Object> d;
        final a<T>.a e = new C0165a();
        final AtomicReference<c> f = new AtomicReference<>();
        final ae<T> g;
        volatile boolean h;

        /* renamed from: io.reactivex.internal.operators.c.cs$a$a  reason: collision with other inner class name */
        final class C0165a extends AtomicReference<c> implements ag<Object> {
            C0165a() {
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onNext(Object obj) {
                a.this.a();
            }

            public final void onError(Throwable th) {
                a aVar = a.this;
                DisposableHelper.dispose(aVar.f);
                i.onError((ag<?>) aVar.f7337a, th, (AtomicInteger) aVar, aVar.c);
            }

            public final void onComplete() {
                a aVar = a.this;
                DisposableHelper.dispose(aVar.f);
                i.onComplete((ag<?>) aVar.f7337a, (AtomicInteger) aVar, aVar.c);
            }
        }

        a(ag<? super T> agVar, d<Object> dVar, ae<T> aeVar) {
            this.f7337a = agVar;
            this.d = dVar;
            this.g = aeVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this.f, cVar);
        }

        public final void onNext(T t) {
            i.onNext(this.f7337a, t, (AtomicInteger) this, this.c);
        }

        public final void onError(Throwable th) {
            DisposableHelper.dispose(this.e);
            i.onError((ag<?>) this.f7337a, th, (AtomicInteger) this, this.c);
        }

        public final void onComplete() {
            DisposableHelper.replace(this.f, null);
            this.h = false;
            this.d.onNext(0);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f.get());
        }

        public final void dispose() {
            DisposableHelper.dispose(this.f);
            DisposableHelper.dispose(this.e);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (this.f7338b.getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.h) {
                        this.h = true;
                        this.g.subscribe(this);
                    }
                    if (this.f7338b.decrementAndGet() == 0) {
                    }
                }
            }
        }
    }

    public cs(ae<T> aeVar, h<? super z<Object>, ? extends ae<?>> hVar) {
        super(aeVar);
        this.f7336b = hVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        d serialized = io.reactivex.j.b.create().toSerialized();
        try {
            ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f7336b.apply(serialized), "The handler returned a null ObservableSource");
            a aVar = new a(agVar, serialized, this.f7091a);
            agVar.onSubscribe(aVar);
            aeVar.subscribe(aVar.e);
            aVar.a();
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (ag<?>) agVar);
        }
    }
}
