package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.e.ak;
import io.reactivex.internal.operators.e.ay;
import java.util.Arrays;
import java.util.NoSuchElementException;

public final class az<T, R> extends ai<R> {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends ao<? extends T>> f7803a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super Object[], ? extends R> f7804b;

    final class a implements h<T, R> {
        a() {
        }

        public final R apply(T t) throws Exception {
            return b.requireNonNull(az.this.f7804b.apply(new Object[]{t}), "The zipper returned a null value");
        }
    }

    public az(Iterable<? extends ao<? extends T>> iterable, h<? super Object[], ? extends R> hVar) {
        this.f7803a = iterable;
        this.f7804b = hVar;
    }

    public final void subscribeActual(al<? super R> alVar) {
        ao[] aoVarArr = new ao[8];
        try {
            ao[] aoVarArr2 = aoVarArr;
            int i = 0;
            for (ao aoVar : this.f7803a) {
                if (aoVar == null) {
                    EmptyDisposable.error((Throwable) new NullPointerException("One of the sources is null"), (al<?>) alVar);
                    return;
                }
                if (i == aoVarArr2.length) {
                    aoVarArr2 = (ao[]) Arrays.copyOf(aoVarArr2, (i >> 2) + i);
                }
                int i2 = i + 1;
                aoVarArr2[i] = aoVar;
                i = i2;
            }
            if (i == 0) {
                EmptyDisposable.error((Throwable) new NoSuchElementException(), (al<?>) alVar);
            } else if (i == 1) {
                aoVarArr2[0].subscribe(new ak.a(alVar, new a()));
            } else {
                ay.b bVar = new ay.b(alVar, i, this.f7804b);
                alVar.onSubscribe(bVar);
                for (int i3 = 0; i3 < i && !bVar.isDisposed(); i3++) {
                    aoVarArr2[i3].subscribe(bVar.c[i3]);
                }
            }
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (al<?>) alVar);
        }
    }
}
