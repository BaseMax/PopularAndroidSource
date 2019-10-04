package io.reactivex.internal.operators.a;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.f;
import java.util.concurrent.atomic.AtomicReference;

public final class ak extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g f6918a;

    /* renamed from: b  reason: collision with root package name */
    final ah f6919b;

    static final class a extends AtomicReference<c> implements c, d, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final d f6920a;

        /* renamed from: b  reason: collision with root package name */
        final f f6921b = new f();
        final g c;

        a(d dVar, g gVar) {
            this.f6920a = dVar;
            this.c = gVar;
        }

        public final void run() {
            this.c.subscribe(this);
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onError(Throwable th) {
            this.f6920a.onError(th);
        }

        public final void onComplete() {
            this.f6920a.onComplete();
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
            this.f6921b.dispose();
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public ak(g gVar, ah ahVar) {
        this.f6918a = gVar;
        this.f6919b = ahVar;
    }

    public final void subscribeActual(d dVar) {
        a aVar = new a(dVar, this.f6918a);
        dVar.onSubscribe(aVar);
        aVar.f6921b.replace(this.f6919b.scheduleDirect(aVar));
    }
}
