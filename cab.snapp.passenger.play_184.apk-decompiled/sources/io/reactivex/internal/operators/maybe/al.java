package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.b.d;
import io.reactivex.c.b;
import io.reactivex.q;
import io.reactivex.t;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public final class al<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Future<? extends T> f8451a;

    /* renamed from: b  reason: collision with root package name */
    final long f8452b;
    final TimeUnit c;

    public al(Future<? extends T> future, long j, TimeUnit timeUnit) {
        this.f8451a = future;
        this.f8452b = j;
        this.c = timeUnit;
    }

    public final void subscribeActual(t<? super T> tVar) {
        Object obj;
        c empty = d.empty();
        tVar.onSubscribe(empty);
        if (!empty.isDisposed()) {
            try {
                if (this.f8452b <= 0) {
                    obj = this.f8451a.get();
                } else {
                    obj = this.f8451a.get(this.f8452b, this.c);
                }
                if (!empty.isDisposed()) {
                    if (obj == null) {
                        tVar.onComplete();
                        return;
                    }
                    tVar.onSuccess(obj);
                }
            } catch (Throwable th) {
                th = th;
                if (th instanceof ExecutionException) {
                    th = th.getCause();
                }
                b.throwIfFatal(th);
                if (!empty.isDisposed()) {
                    tVar.onError(th);
                }
            }
        }
    }
}
