package io.reactivex.internal.c;

import io.reactivex.d;
import io.reactivex.internal.disposables.DisposableHelper;
import org.b.c;

public final class z<T> implements d, org.b.d {

    /* renamed from: a  reason: collision with root package name */
    final c<? super T> f6792a;

    /* renamed from: b  reason: collision with root package name */
    io.reactivex.b.c f6793b;

    public final void request(long j) {
    }

    public z(c<? super T> cVar) {
        this.f6792a = cVar;
    }

    public final void onComplete() {
        this.f6792a.onComplete();
    }

    public final void onError(Throwable th) {
        this.f6792a.onError(th);
    }

    public final void onSubscribe(io.reactivex.b.c cVar) {
        if (DisposableHelper.validate(this.f6793b, cVar)) {
            this.f6793b = cVar;
            this.f6792a.onSubscribe(this);
        }
    }

    public final void cancel() {
        this.f6793b.dispose();
    }
}
