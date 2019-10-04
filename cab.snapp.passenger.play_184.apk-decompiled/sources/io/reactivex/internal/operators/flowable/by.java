package io.reactivex.internal.operators.flowable;

import io.reactivex.c.b;
import io.reactivex.g.a;
import io.reactivex.j;
import io.reactivex.n;
import org.b.c;

public final class by<R, T> extends a<T, R> {
    final n<? extends R, ? super T> c;

    public by(j<T> jVar, n<? extends R, ? super T> nVar) {
        super(jVar);
        this.c = nVar;
    }

    public final void subscribeActual(c<? super R> cVar) {
        try {
            c<? super Object> apply = this.c.apply(cVar);
            if (apply != null) {
                this.f7923b.subscribe(apply);
                return;
            }
            throw new NullPointerException("Operator " + this.c + " returned a null Subscriber");
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            b.throwIfFatal(th);
            a.onError(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}
