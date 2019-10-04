package io.reactivex.internal.operators.c;

import io.reactivex.ad;
import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.g.a;
import io.reactivex.internal.a.b;

public final class bv<R, T> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final ad<? extends R, ? super T> f7259b;

    public bv(ae<T> aeVar, ad<? extends R, ? super T> adVar) {
        super(aeVar);
        this.f7259b = adVar;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        try {
            ag<? super Object> apply = this.f7259b.apply(agVar);
            this.f7091a.subscribe((ag) b.requireNonNull(apply, "Operator " + this.f7259b + " returned a null Observer"));
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            a.onError(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}
