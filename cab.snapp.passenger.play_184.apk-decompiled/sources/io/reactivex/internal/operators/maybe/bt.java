package io.reactivex.internal.operators.maybe;

import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.maybe.av;
import io.reactivex.internal.operators.maybe.bs;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.w;
import java.util.Arrays;

public final class bt<T, R> extends q<R> {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends w<? extends T>> f8561a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super Object[], ? extends R> f8562b;

    final class a implements h<T, R> {
        a() {
        }

        public final R apply(T t) throws Exception {
            return b.requireNonNull(bt.this.f8562b.apply(new Object[]{t}), "The zipper returned a null value");
        }
    }

    public bt(Iterable<? extends w<? extends T>> iterable, h<? super Object[], ? extends R> hVar) {
        this.f8561a = iterable;
        this.f8562b = hVar;
    }

    public final void subscribeActual(t<? super R> tVar) {
        w[] wVarArr = new w[8];
        try {
            w[] wVarArr2 = wVarArr;
            int i = 0;
            for (w wVar : this.f8561a) {
                if (wVar == null) {
                    EmptyDisposable.error((Throwable) new NullPointerException("One of the sources is null"), (t<?>) tVar);
                    return;
                }
                if (i == wVarArr2.length) {
                    wVarArr2 = (w[]) Arrays.copyOf(wVarArr2, (i >> 2) + i);
                }
                int i2 = i + 1;
                wVarArr2[i] = wVar;
                i = i2;
            }
            if (i == 0) {
                EmptyDisposable.complete((t<?>) tVar);
            } else if (i == 1) {
                wVarArr2[0].subscribe(new av.a(tVar, new a()));
            } else {
                bs.b bVar = new bs.b(tVar, i, this.f8562b);
                tVar.onSubscribe(bVar);
                for (int i3 = 0; i3 < i && !bVar.isDisposed(); i3++) {
                    wVarArr2[i3].subscribe(bVar.c[i3]);
                }
            }
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (t<?>) tVar);
        }
    }
}
