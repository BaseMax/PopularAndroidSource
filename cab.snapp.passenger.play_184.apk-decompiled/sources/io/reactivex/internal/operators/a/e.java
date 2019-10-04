package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.f;
import java.util.concurrent.atomic.AtomicInteger;

public final class e extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g[] f6964a;

    static final class a extends AtomicInteger implements d {

        /* renamed from: a  reason: collision with root package name */
        final d f6965a;

        /* renamed from: b  reason: collision with root package name */
        final g[] f6966b;
        int c;
        final f d = new f();

        a(d dVar, g[] gVarArr) {
            this.f6965a = dVar;
            this.f6966b = gVarArr;
        }

        public final void onSubscribe(c cVar) {
            this.d.replace(cVar);
        }

        public final void onError(Throwable th) {
            this.f6965a.onError(th);
        }

        public final void onComplete() {
            a();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (!this.d.isDisposed() && getAndIncrement() == 0) {
                g[] gVarArr = this.f6966b;
                while (!this.d.isDisposed()) {
                    int i = this.c;
                    this.c = i + 1;
                    if (i == gVarArr.length) {
                        this.f6965a.onComplete();
                        return;
                    }
                    gVarArr[i].subscribe(this);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }
    }

    public e(g[] gVarArr) {
        this.f6964a = gVarArr;
    }

    public final void subscribeActual(d dVar) {
        a aVar = new a(dVar, this.f6964a);
        dVar.onSubscribe(aVar.d);
        aVar.a();
    }
}
