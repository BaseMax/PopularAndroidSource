package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.b;
import io.reactivex.b.c;
import java.util.concurrent.atomic.AtomicInteger;

public final class v<T> extends ai<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final ao<? extends T> f7884a;

    /* renamed from: b  reason: collision with root package name */
    final ao<? extends T> f7885b;

    static class a<T> implements al<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f7886a;

        /* renamed from: b  reason: collision with root package name */
        final b f7887b;
        final Object[] c;
        final al<? super Boolean> d;
        final AtomicInteger e;

        a(int i, b bVar, Object[] objArr, al<? super Boolean> alVar, AtomicInteger atomicInteger) {
            this.f7886a = i;
            this.f7887b = bVar;
            this.c = objArr;
            this.d = alVar;
            this.e = atomicInteger;
        }

        public final void onSubscribe(c cVar) {
            this.f7887b.add(cVar);
        }

        public final void onSuccess(T t) {
            this.c[this.f7886a] = t;
            if (this.e.incrementAndGet() == 2) {
                al<? super Boolean> alVar = this.d;
                Object[] objArr = this.c;
                alVar.onSuccess(Boolean.valueOf(io.reactivex.internal.a.b.equals(objArr[0], objArr[1])));
            }
        }

        public final void onError(Throwable th) {
            int i;
            do {
                i = this.e.get();
                if (i >= 2) {
                    io.reactivex.g.a.onError(th);
                    return;
                }
            } while (!this.e.compareAndSet(i, 2));
            this.f7887b.dispose();
            this.d.onError(th);
        }
    }

    public v(ao<? extends T> aoVar, ao<? extends T> aoVar2) {
        this.f7884a = aoVar;
        this.f7885b = aoVar2;
    }

    public final void subscribeActual(al<? super Boolean> alVar) {
        AtomicInteger atomicInteger = new AtomicInteger();
        b bVar = new b();
        alVar.onSubscribe(bVar);
        ao<? extends T> aoVar = this.f7884a;
        b bVar2 = bVar;
        Object[] objArr = {null, null};
        al<? super Boolean> alVar2 = alVar;
        AtomicInteger atomicInteger2 = atomicInteger;
        a aVar = new a(0, bVar2, objArr, alVar2, atomicInteger2);
        aoVar.subscribe(aVar);
        ao<? extends T> aoVar2 = this.f7885b;
        a aVar2 = new a(1, bVar2, objArr, alVar2, atomicInteger2);
        aoVar2.subscribe(aVar2);
    }
}
