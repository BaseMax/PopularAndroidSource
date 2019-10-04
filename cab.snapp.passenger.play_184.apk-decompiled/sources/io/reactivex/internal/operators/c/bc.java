package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.internal.a.b;
import io.reactivex.internal.c.c;
import io.reactivex.z;

public final class bc<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final T[] f7182a;

    static final class a<T> extends c<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7183a;

        /* renamed from: b  reason: collision with root package name */
        final T[] f7184b;
        int c;
        boolean d;
        volatile boolean e;

        a(ag<? super T> agVar, T[] tArr) {
            this.f7183a = agVar;
            this.f7184b = tArr;
        }

        public final int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.d = true;
            return 1;
        }

        public final T poll() {
            int i = this.c;
            T[] tArr = this.f7184b;
            if (i == tArr.length) {
                return null;
            }
            this.c = i + 1;
            return b.requireNonNull(tArr[i], "The array element is null");
        }

        public final boolean isEmpty() {
            return this.c == this.f7184b.length;
        }

        public final void clear() {
            this.c = this.f7184b.length;
        }

        public final void dispose() {
            this.e = true;
        }

        public final boolean isDisposed() {
            return this.e;
        }
    }

    public bc(T[] tArr) {
        this.f7182a = tArr;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        a aVar = new a(agVar, this.f7182a);
        agVar.onSubscribe(aVar);
        if (!aVar.d) {
            T[] tArr = aVar.f7184b;
            int length = tArr.length;
            for (int i = 0; i < length && !aVar.isDisposed(); i++) {
                T t = tArr[i];
                if (t == null) {
                    ag<? super T> agVar2 = aVar.f7183a;
                    agVar2.onError(new NullPointerException("The element at index " + i + " is null"));
                    return;
                }
                aVar.f7183a.onNext(t);
            }
            if (!aVar.isDisposed()) {
                aVar.f7183a.onComplete();
            }
        }
    }
}
