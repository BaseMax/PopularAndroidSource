package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.b;
import io.reactivex.observers.d;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class ad<T, U> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends ae<U>> f7101b;

    static final class a<T, U> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7102a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ae<U>> f7103b;
        c c;
        final AtomicReference<c> d = new AtomicReference<>();
        volatile long e;
        boolean f;

        /* renamed from: io.reactivex.internal.operators.c.ad$a$a  reason: collision with other inner class name */
        static final class C0155a<T, U> extends b<U> {

            /* renamed from: a  reason: collision with root package name */
            final a<T, U> f7104a;

            /* renamed from: b  reason: collision with root package name */
            final long f7105b;
            final T c;
            boolean d;
            final AtomicBoolean e = new AtomicBoolean();

            C0155a(a<T, U> aVar, long j, T t) {
                this.f7104a = aVar;
                this.f7105b = j;
                this.c = t;
            }

            public final void onNext(U u) {
                if (!this.d) {
                    this.d = true;
                    dispose();
                    a();
                }
            }

            /* access modifiers changed from: package-private */
            public final void a() {
                if (this.e.compareAndSet(false, true)) {
                    this.f7104a.a(this.f7105b, this.c);
                }
            }

            public final void onError(Throwable th) {
                if (this.d) {
                    io.reactivex.g.a.onError(th);
                    return;
                }
                this.d = true;
                this.f7104a.onError(th);
            }

            public final void onComplete() {
                if (!this.d) {
                    this.d = true;
                    a();
                }
            }
        }

        a(ag<? super T> agVar, h<? super T, ? extends ae<U>> hVar) {
            this.f7102a = agVar;
            this.f7103b = hVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7102a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.f) {
                long j = this.e + 1;
                this.e = j;
                c cVar = this.d.get();
                if (cVar != null) {
                    cVar.dispose();
                }
                try {
                    ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f7103b.apply(t), "The ObservableSource supplied is null");
                    C0155a aVar = new C0155a(this, j, t);
                    if (this.d.compareAndSet(cVar, aVar)) {
                        aeVar.subscribe(aVar);
                    }
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    dispose();
                    this.f7102a.onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            DisposableHelper.dispose(this.d);
            this.f7102a.onError(th);
        }

        public final void onComplete() {
            if (!this.f) {
                this.f = true;
                c cVar = this.d.get();
                if (cVar != DisposableHelper.DISPOSED) {
                    ((C0155a) cVar).a();
                    DisposableHelper.dispose(this.d);
                    this.f7102a.onComplete();
                }
            }
        }

        public final void dispose() {
            this.c.dispose();
            DisposableHelper.dispose(this.d);
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        /* access modifiers changed from: package-private */
        public final void a(long j, T t) {
            if (j == this.e) {
                this.f7102a.onNext(t);
            }
        }
    }

    public ad(ae<T> aeVar, h<? super T, ? extends ae<U>> hVar) {
        super(aeVar);
        this.f7101b = hVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(new d(agVar), this.f7101b));
    }
}
