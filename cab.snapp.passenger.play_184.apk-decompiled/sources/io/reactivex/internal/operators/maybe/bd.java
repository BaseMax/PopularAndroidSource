package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.t;
import io.reactivex.w;

public final class bd<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final g<? super c> f8500b;
    final g<? super T> c;
    final g<? super Throwable> d;
    final io.reactivex.e.a e;
    final io.reactivex.e.a f;
    final io.reactivex.e.a g;

    static final class a<T> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8501a;

        /* renamed from: b  reason: collision with root package name */
        final bd<T> f8502b;
        c c;

        a(t<? super T> tVar, bd<T> bdVar) {
            this.f8501a = tVar;
            this.f8502b = bdVar;
        }

        public final void dispose() {
            try {
                this.f8502b.g.run();
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
            this.c.dispose();
            this.c = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                try {
                    this.f8502b.f8500b.accept(cVar);
                    this.c = cVar;
                    this.f8501a.onSubscribe(this);
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    cVar.dispose();
                    this.c = DisposableHelper.DISPOSED;
                    EmptyDisposable.error(th, (t<?>) this.f8501a);
                }
            }
        }

        public final void onSuccess(T t) {
            if (this.c != DisposableHelper.DISPOSED) {
                try {
                    this.f8502b.c.accept(t);
                    this.c = DisposableHelper.DISPOSED;
                    this.f8501a.onSuccess(t);
                    a();
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    a(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.c == DisposableHelper.DISPOSED) {
                io.reactivex.g.a.onError(th);
            } else {
                a(th);
            }
        }

        private void a(Throwable th) {
            try {
                this.f8502b.d.accept(th);
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                th = new io.reactivex.c.a(th, th2);
            }
            this.c = DisposableHelper.DISPOSED;
            this.f8501a.onError(th);
            a();
        }

        public final void onComplete() {
            if (this.c != DisposableHelper.DISPOSED) {
                try {
                    this.f8502b.e.run();
                    this.c = DisposableHelper.DISPOSED;
                    this.f8501a.onComplete();
                    a();
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    a(th);
                }
            }
        }

        private void a() {
            try {
                this.f8502b.f.run();
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
        }
    }

    public bd(w<T> wVar, g<? super c> gVar, g<? super T> gVar2, g<? super Throwable> gVar3, io.reactivex.e.a aVar, io.reactivex.e.a aVar2, io.reactivex.e.a aVar3) {
        super(wVar);
        this.f8500b = gVar;
        this.c = gVar2;
        this.d = gVar3;
        this.e = aVar;
        this.f = aVar2;
        this.g = aVar3;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar, this));
    }
}
