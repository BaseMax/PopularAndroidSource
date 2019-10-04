package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;

public final class ai extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g f6910a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e.g<? super c> f6911b;
    final io.reactivex.e.g<? super Throwable> c;
    final io.reactivex.e.a d;
    final io.reactivex.e.a e;
    final io.reactivex.e.a f;
    final io.reactivex.e.a g;

    final class a implements c, d {

        /* renamed from: a  reason: collision with root package name */
        final d f6912a;

        /* renamed from: b  reason: collision with root package name */
        c f6913b;

        a(d dVar) {
            this.f6912a = dVar;
        }

        public final void onSubscribe(c cVar) {
            try {
                ai.this.f6911b.accept(cVar);
                if (DisposableHelper.validate(this.f6913b, cVar)) {
                    this.f6913b = cVar;
                    this.f6912a.onSubscribe(this);
                }
            } catch (Throwable th) {
                b.throwIfFatal(th);
                cVar.dispose();
                this.f6913b = DisposableHelper.DISPOSED;
                EmptyDisposable.error(th, this.f6912a);
            }
        }

        public final void onError(Throwable th) {
            if (this.f6913b == DisposableHelper.DISPOSED) {
                io.reactivex.g.a.onError(th);
                return;
            }
            try {
                ai.this.c.accept(th);
                ai.this.e.run();
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                th = new io.reactivex.c.a(th, th2);
            }
            this.f6912a.onError(th);
            a();
        }

        public final void onComplete() {
            if (this.f6913b != DisposableHelper.DISPOSED) {
                try {
                    ai.this.d.run();
                    ai.this.e.run();
                    this.f6912a.onComplete();
                    a();
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    this.f6912a.onError(th);
                }
            }
        }

        private void a() {
            try {
                ai.this.f.run();
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
        }

        public final void dispose() {
            try {
                ai.this.g.run();
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
            this.f6913b.dispose();
        }

        public final boolean isDisposed() {
            return this.f6913b.isDisposed();
        }
    }

    public ai(g gVar, io.reactivex.e.g<? super c> gVar2, io.reactivex.e.g<? super Throwable> gVar3, io.reactivex.e.a aVar, io.reactivex.e.a aVar2, io.reactivex.e.a aVar3, io.reactivex.e.a aVar4) {
        this.f6910a = gVar;
        this.f6911b = gVar2;
        this.c = gVar3;
        this.d = aVar;
        this.e = aVar2;
        this.f = aVar3;
        this.g = aVar4;
    }

    public final void subscribeActual(d dVar) {
        this.f6910a.subscribe(new a(dVar));
    }
}
