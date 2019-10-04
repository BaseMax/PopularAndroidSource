package io.reactivex.internal.operators.d;

import io.reactivex.parallel.a;
import org.b.b;
import org.b.c;

public final class g<T> extends a<T> {

    /* renamed from: a  reason: collision with root package name */
    final b<T>[] f7667a;

    public g(b<T>[] bVarArr) {
        this.f7667a = bVarArr;
    }

    public final int parallelism() {
        return this.f7667a.length;
    }

    public final void subscribe(c<? super T>[] cVarArr) {
        if (a(cVarArr)) {
            int length = cVarArr.length;
            for (int i = 0; i < length; i++) {
                this.f7667a[i].subscribe(cVarArr[i]);
            }
        }
    }
}
