package io.reactivex.internal.operators.a;

import io.reactivex.b.b;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicBoolean;

public final class a extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    private final g[] f6883a;

    /* renamed from: b  reason: collision with root package name */
    private final Iterable<? extends g> f6884b;

    /* renamed from: io.reactivex.internal.operators.a.a$a  reason: collision with other inner class name */
    static final class C0136a implements d {

        /* renamed from: a  reason: collision with root package name */
        final AtomicBoolean f6885a;

        /* renamed from: b  reason: collision with root package name */
        final b f6886b;
        final d c;
        c d;

        C0136a(AtomicBoolean atomicBoolean, b bVar, d dVar) {
            this.f6885a = atomicBoolean;
            this.f6886b = bVar;
            this.c = dVar;
        }

        public final void onComplete() {
            if (this.f6885a.compareAndSet(false, true)) {
                this.f6886b.delete(this.d);
                this.f6886b.dispose();
                this.c.onComplete();
            }
        }

        public final void onError(Throwable th) {
            if (this.f6885a.compareAndSet(false, true)) {
                this.f6886b.delete(this.d);
                this.f6886b.dispose();
                this.c.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onSubscribe(c cVar) {
            this.d = cVar;
            this.f6886b.add(cVar);
        }
    }

    public a(g[] gVarArr, Iterable<? extends g> iterable) {
        this.f6883a = gVarArr;
        this.f6884b = iterable;
    }

    public final void subscribeActual(d dVar) {
        int i;
        g[] gVarArr = this.f6883a;
        if (gVarArr == null) {
            gVarArr = new g[8];
            try {
                i = 0;
                for (g gVar : this.f6884b) {
                    if (gVar == null) {
                        EmptyDisposable.error((Throwable) new NullPointerException("One of the sources is null"), dVar);
                        return;
                    }
                    if (i == gVarArr.length) {
                        g[] gVarArr2 = new g[((i >> 2) + i)];
                        System.arraycopy(gVarArr, 0, gVarArr2, 0, i);
                        gVarArr = gVarArr2;
                    }
                    int i2 = i + 1;
                    gVarArr[i] = gVar;
                    i = i2;
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                EmptyDisposable.error(th, dVar);
                return;
            }
        } else {
            i = gVarArr.length;
        }
        b bVar = new b();
        dVar.onSubscribe(bVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        int i3 = 0;
        while (i3 < i) {
            g gVar2 = gVarArr[i3];
            if (!bVar.isDisposed()) {
                if (gVar2 == null) {
                    NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                    if (atomicBoolean.compareAndSet(false, true)) {
                        bVar.dispose();
                        dVar.onError(nullPointerException);
                        return;
                    }
                    io.reactivex.g.a.onError(nullPointerException);
                    return;
                }
                gVar2.subscribe(new C0136a(atomicBoolean, bVar, dVar));
                i3++;
            } else {
                return;
            }
        }
        if (i == 0) {
            dVar.onComplete();
        }
    }
}
