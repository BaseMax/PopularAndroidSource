package io.reactivex.internal.operators.d;

import io.reactivex.e.h;
import io.reactivex.internal.operators.flowable.az;
import io.reactivex.parallel.a;
import org.b.b;
import org.b.c;

public final class f<T, R> extends a<R> {

    /* renamed from: a  reason: collision with root package name */
    final a<T> f7665a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends b<? extends R>> f7666b;
    final boolean c;
    final int d;
    final int e;

    public f(a<T> aVar, h<? super T, ? extends b<? extends R>> hVar, boolean z, int i, int i2) {
        this.f7665a = aVar;
        this.f7666b = hVar;
        this.c = z;
        this.d = i;
        this.e = i2;
    }

    public final int parallelism() {
        return this.f7665a.parallelism();
    }

    public final void subscribe(c<? super R>[] cVarArr) {
        if (a(cVarArr)) {
            int length = cVarArr.length;
            c[] cVarArr2 = new c[length];
            for (int i = 0; i < length; i++) {
                cVarArr2[i] = az.subscribe(cVarArr[i], this.f7666b, this.c, this.d, this.e);
            }
            this.f7665a.subscribe(cVarArr2);
        }
    }
}
