package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.b;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicBoolean;

public final class a<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    private final ao<? extends T>[] f7718a;

    /* renamed from: b  reason: collision with root package name */
    private final Iterable<? extends ao<? extends T>> f7719b;

    /* renamed from: io.reactivex.internal.operators.e.a$a  reason: collision with other inner class name */
    static final class C0175a<T> implements al<T> {

        /* renamed from: a  reason: collision with root package name */
        final b f7720a;

        /* renamed from: b  reason: collision with root package name */
        final al<? super T> f7721b;
        final AtomicBoolean c;
        c d;

        C0175a(al<? super T> alVar, b bVar, AtomicBoolean atomicBoolean) {
            this.f7721b = alVar;
            this.f7720a = bVar;
            this.c = atomicBoolean;
        }

        public final void onSubscribe(c cVar) {
            this.d = cVar;
            this.f7720a.add(cVar);
        }

        public final void onSuccess(T t) {
            if (this.c.compareAndSet(false, true)) {
                this.f7720a.delete(this.d);
                this.f7720a.dispose();
                this.f7721b.onSuccess(t);
            }
        }

        public final void onError(Throwable th) {
            if (this.c.compareAndSet(false, true)) {
                this.f7720a.delete(this.d);
                this.f7720a.dispose();
                this.f7721b.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }
    }

    public a(ao<? extends T>[] aoVarArr, Iterable<? extends ao<? extends T>> iterable) {
        this.f7718a = aoVarArr;
        this.f7719b = iterable;
    }

    public final void subscribeActual(al<? super T> alVar) {
        int i;
        ao<? extends T>[] aoVarArr = this.f7718a;
        if (aoVarArr == null) {
            aoVarArr = new ao[8];
            try {
                i = 0;
                for (ao<? extends T> aoVar : this.f7719b) {
                    if (aoVar == null) {
                        EmptyDisposable.error((Throwable) new NullPointerException("One of the sources is null"), (al<?>) alVar);
                        return;
                    }
                    if (i == aoVarArr.length) {
                        ao<? extends T>[] aoVarArr2 = new ao[((i >> 2) + i)];
                        System.arraycopy(aoVarArr, 0, aoVarArr2, 0, i);
                        aoVarArr = aoVarArr2;
                    }
                    int i2 = i + 1;
                    aoVarArr[i] = aoVar;
                    i = i2;
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                EmptyDisposable.error(th, (al<?>) alVar);
                return;
            }
        } else {
            i = aoVarArr.length;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        b bVar = new b();
        alVar.onSubscribe(bVar);
        int i3 = 0;
        while (i3 < i) {
            ao<? extends T> aoVar2 = aoVarArr[i3];
            if (!bVar.isDisposed()) {
                if (aoVar2 == null) {
                    bVar.dispose();
                    NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                    if (atomicBoolean.compareAndSet(false, true)) {
                        alVar.onError(nullPointerException);
                        return;
                    } else {
                        io.reactivex.g.a.onError(nullPointerException);
                        return;
                    }
                } else {
                    aoVar2.subscribe(new C0175a(alVar, bVar, atomicBoolean));
                    i3++;
                }
            } else {
                return;
            }
        }
    }
}
