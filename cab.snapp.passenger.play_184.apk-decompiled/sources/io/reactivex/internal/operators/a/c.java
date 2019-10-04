package io.reactivex.internal.operators.a;

import io.reactivex.d;
import io.reactivex.g;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class c extends io.reactivex.a implements d {

    /* renamed from: a  reason: collision with root package name */
    static final a[] f6955a = new a[0];

    /* renamed from: b  reason: collision with root package name */
    static final a[] f6956b = new a[0];
    final g c;
    final AtomicReference<a[]> d = new AtomicReference<>(f6955a);
    final AtomicBoolean e = new AtomicBoolean();
    Throwable f;

    final class a extends AtomicBoolean implements io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final d f6957a;

        a(d dVar) {
            this.f6957a = dVar;
        }

        public final boolean isDisposed() {
            return get();
        }

        public final void dispose() {
            if (compareAndSet(false, true)) {
                c.this.a(this);
            }
        }
    }

    public final void onSubscribe(io.reactivex.b.c cVar) {
    }

    public c(g gVar) {
        this.c = gVar;
    }

    public final void subscribeActual(d dVar) {
        boolean z;
        a aVar = new a(dVar);
        dVar.onSubscribe(aVar);
        while (true) {
            a[] aVarArr = this.d.get();
            if (aVarArr != f6956b) {
                int length = aVarArr.length;
                a[] aVarArr2 = new a[(length + 1)];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
                if (this.d.compareAndSet(aVarArr, aVarArr2)) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        if (z) {
            if (aVar.isDisposed()) {
                a(aVar);
            }
            if (this.e.compareAndSet(false, true)) {
                this.c.subscribe(this);
            }
        } else {
            Throwable th = this.f;
            if (th != null) {
                dVar.onError(th);
                return;
            }
            dVar.onComplete();
        }
    }

    public final void onError(Throwable th) {
        this.f = th;
        for (a aVar : this.d.getAndSet(f6956b)) {
            if (!aVar.get()) {
                aVar.f6957a.onError(th);
            }
        }
    }

    public final void onComplete() {
        for (a aVar : this.d.getAndSet(f6956b)) {
            if (!aVar.get()) {
                aVar.f6957a.onComplete();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(a aVar) {
        a[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.d.get();
            int length = aVarArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (aVarArr[i2] == aVar) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        aVarArr2 = f6955a;
                    } else {
                        a[] aVarArr3 = new a[(length - 1)];
                        System.arraycopy(aVarArr, 0, aVarArr3, 0, i);
                        System.arraycopy(aVarArr, i + 1, aVarArr3, i, (length - i) - 1);
                        aVarArr2 = aVarArr3;
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.d.compareAndSet(aVarArr, aVarArr2));
    }
}
