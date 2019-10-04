package io.reactivex.internal.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.a;
import io.reactivex.e.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;

public final class m<T> implements ag<T>, c {

    /* renamed from: a  reason: collision with root package name */
    final ag<? super T> f6776a;

    /* renamed from: b  reason: collision with root package name */
    final g<? super c> f6777b;
    final a c;
    c d;

    public m(ag<? super T> agVar, g<? super c> gVar, a aVar) {
        this.f6776a = agVar;
        this.f6777b = gVar;
        this.c = aVar;
    }

    public final void onSubscribe(c cVar) {
        try {
            this.f6777b.accept(cVar);
            if (DisposableHelper.validate(this.d, cVar)) {
                this.d = cVar;
                this.f6776a.onSubscribe(this);
            }
        } catch (Throwable th) {
            b.throwIfFatal(th);
            cVar.dispose();
            this.d = DisposableHelper.DISPOSED;
            EmptyDisposable.error(th, (ag<?>) this.f6776a);
        }
    }

    public final void onNext(T t) {
        this.f6776a.onNext(t);
    }

    public final void onError(Throwable th) {
        if (this.d != DisposableHelper.DISPOSED) {
            this.d = DisposableHelper.DISPOSED;
            this.f6776a.onError(th);
            return;
        }
        io.reactivex.g.a.onError(th);
    }

    public final void onComplete() {
        if (this.d != DisposableHelper.DISPOSED) {
            this.d = DisposableHelper.DISPOSED;
            this.f6776a.onComplete();
        }
    }

    public final void dispose() {
        c cVar = this.d;
        if (cVar != DisposableHelper.DISPOSED) {
            this.d = DisposableHelper.DISPOSED;
            try {
                this.c.run();
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
            cVar.dispose();
        }
    }

    public final boolean isDisposed() {
        return this.d.isDisposed();
    }
}
