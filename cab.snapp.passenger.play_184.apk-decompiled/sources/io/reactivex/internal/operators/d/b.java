package io.reactivex.internal.operators.d;

import io.reactivex.e.h;
import io.reactivex.internal.operators.flowable.w;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.parallel.a;
import org.b.c;

public final class b<T, R> extends a<R> {

    /* renamed from: a  reason: collision with root package name */
    final a<T> f7647a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends org.b.b<? extends R>> f7648b;
    final int c;
    final ErrorMode d;

    public b(a<T> aVar, h<? super T, ? extends org.b.b<? extends R>> hVar, int i, ErrorMode errorMode) {
        this.f7647a = aVar;
        this.f7648b = (h) io.reactivex.internal.a.b.requireNonNull(hVar, "mapper");
        this.c = i;
        this.d = (ErrorMode) io.reactivex.internal.a.b.requireNonNull(errorMode, "errorMode");
    }

    public final int parallelism() {
        return this.f7647a.parallelism();
    }

    public final void subscribe(c<? super R>[] cVarArr) {
        if (a(cVarArr)) {
            int length = cVarArr.length;
            c[] cVarArr2 = new c[length];
            for (int i = 0; i < length; i++) {
                cVarArr2[i] = w.subscribe(cVarArr[i], this.f7648b, this.c, this.d);
            }
            this.f7647a.subscribe(cVarArr2);
        }
    }
}
