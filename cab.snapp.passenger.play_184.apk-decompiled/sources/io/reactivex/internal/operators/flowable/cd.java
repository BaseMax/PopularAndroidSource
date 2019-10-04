package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.f.t;
import io.reactivex.j;
import io.reactivex.y;
import org.b.c;

public final class cd<T> extends a<T, y<T>> {

    static final class a<T> extends t<T, y<T>> {
        public final /* synthetic */ void onDrop(Object obj) {
            y yVar = (y) obj;
            if (yVar.isOnError()) {
                io.reactivex.g.a.onError(yVar.getError());
            }
        }

        a(c<? super y<T>> cVar) {
            super(cVar);
        }

        public final void onNext(T t) {
            this.g++;
            this.d.onNext(y.createOnNext(t));
        }

        public final void onError(Throwable th) {
            a(y.createOnError(th));
        }

        public final void onComplete() {
            a(y.createOnComplete());
        }
    }

    public cd(j<T> jVar) {
        super(jVar);
    }

    public final void subscribeActual(c<? super y<T>> cVar) {
        this.f7923b.subscribe(new a(cVar));
    }
}
