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

public final class cw<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super z<Throwable>, ? extends ae<?>> f7366b;

    static final class a<T> extends AtomicInteger implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7367a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f7368b = new AtomicInteger();
        final b c = new b();
        final d<Throwable> d;
        final a<T>.a e = new C0166a();
        final AtomicReference<c> f = new AtomicReference<>();
        final ae<T> g;
        volatile boolean h;

        /* renamed from: io.reactivex.internal.operators.c.cw$a$a  reason: collision with other inner class name */
        final class C0166a extends AtomicReference<c> implements ag<Object> {
            C0166a() {
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
                i.onError((ag<?>) aVar.f7367a, th, (AtomicInteger) aVar, aVar.c);
            }

            public final void onComplete() {
                a aVar = a.this;
                DisposableHelper.dispose(aVar.f);
                i.onComplete((ag<?>) aVar.f7367a, (AtomicInteger) aVar, aVar.c);
            }
        }

        a(ag<? super T> agVar, d<Throwable> dVar, ae<T> aeVar) {
            this.f7367a = agVar;
            this.d = dVar;
            this.g = aeVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.replace(this.f, cVar);
        }

        public final void onNext(T t) {
            i.onNext(this.f7367a, t, (AtomicInteger) this, this.c);
        }

        public final void onError(Throwable th) {
            DisposableHelper.replace(this.f, null);
            this.h = false;
            this.d.onNext(th);
        }

        public final void onComplete() {
            DisposableHelper.dispose(this.e);
            i.onComplete((ag<?>) this.f7367a, (AtomicInteger) this, this.c);
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
            if (this.f7368b.getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.h) {
                        this.h = true;
                        this.g.subscribe(this);
                    }
                    if (this.f7368b.decrementAndGet() == 0) {
                    }
                }
            }
        }
    }

    public cw(ae<T> aeVar, h<? super z<Throwable>, ? extends ae<?>> hVar) {
        super(aeVar);
        this.f7366b = hVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        d serialized = io.reactivex.j.b.create().toSerialized();
        try {
            ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f7366b.apply(serialized), "The handler returned a null ObservableSource");
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
