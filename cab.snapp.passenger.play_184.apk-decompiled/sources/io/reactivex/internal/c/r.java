package io.reactivex.internal.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.b.e;
import io.reactivex.internal.b.j;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.o;
import java.util.concurrent.atomic.AtomicReference;

public final class r<T> extends AtomicReference<c> implements ag<T>, c {

    /* renamed from: a  reason: collision with root package name */
    final s<T> f6784a;

    /* renamed from: b  reason: collision with root package name */
    final int f6785b;
    j<T> c;
    volatile boolean d;
    int e;

    public r(s<T> sVar, int i) {
        this.f6784a = sVar;
        this.f6785b = i;
    }

    public final void onSubscribe(c cVar) {
        if (DisposableHelper.setOnce(this, cVar)) {
            if (cVar instanceof e) {
                e eVar = (e) cVar;
                int requestFusion = eVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.e = requestFusion;
                    this.c = eVar;
                    this.d = true;
                    this.f6784a.innerComplete(this);
                    return;
                } else if (requestFusion == 2) {
                    this.e = requestFusion;
                    this.c = eVar;
                    return;
                }
            }
            this.c = o.createQueue(-this.f6785b);
        }
    }

    public final void onNext(T t) {
        if (this.e == 0) {
            this.f6784a.innerNext(this, t);
        } else {
            this.f6784a.drain();
        }
    }

    public final void onError(Throwable th) {
        this.f6784a.innerError(this, th);
    }

    public final void onComplete() {
        this.f6784a.innerComplete(this);
    }

    public final void dispose() {
        DisposableHelper.dispose(this);
    }

    public final boolean isDisposed() {
        return DisposableHelper.isDisposed((c) get());
    }

    public final boolean isDone() {
        return this.d;
    }

    public final void setDone() {
        this.d = true;
    }

    public final j<T> queue() {
        return this.c;
    }

    public final int fusionMode() {
        return this.e;
    }
}
