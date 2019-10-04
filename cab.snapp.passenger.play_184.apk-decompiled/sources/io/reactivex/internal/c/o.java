package io.reactivex.internal.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.a;
import io.reactivex.e.g;
import io.reactivex.e.q;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class o<T> extends AtomicReference<c> implements ag<T>, c {

    /* renamed from: a  reason: collision with root package name */
    final q<? super T> f6778a;

    /* renamed from: b  reason: collision with root package name */
    final g<? super Throwable> f6779b;
    final a c;
    boolean d;

    public o(q<? super T> qVar, g<? super Throwable> gVar, a aVar) {
        this.f6778a = qVar;
        this.f6779b = gVar;
        this.c = aVar;
    }

    public final void onSubscribe(c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    public final void onNext(T t) {
        if (!this.d) {
            try {
                if (!this.f6778a.test(t)) {
                    dispose();
                    onComplete();
                }
            } catch (Throwable th) {
                b.throwIfFatal(th);
                dispose();
                onError(th);
            }
        }
    }

    public final void onError(Throwable th) {
        if (this.d) {
            io.reactivex.g.a.onError(th);
            return;
        }
        this.d = true;
        try {
            this.f6779b.accept(th);
        } catch (Throwable th2) {
            b.throwIfFatal(th2);
            io.reactivex.g.a.onError(new io.reactivex.c.a(th, th2));
        }
    }

    public final void onComplete() {
        if (!this.d) {
            this.d = true;
            try {
                this.c.run();
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
        }
    }

    public final void dispose() {
        DisposableHelper.dispose(this);
    }

    public final boolean isDisposed() {
        return DisposableHelper.isDisposed((c) get());
    }
}
