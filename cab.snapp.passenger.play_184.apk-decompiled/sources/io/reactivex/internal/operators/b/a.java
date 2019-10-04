package io.reactivex.internal.operators.b;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicReference;

public final class a<R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final g f7011a;

    /* renamed from: b  reason: collision with root package name */
    final ae<? extends R> f7012b;

    /* renamed from: io.reactivex.internal.operators.b.a$a  reason: collision with other inner class name */
    static final class C0142a<R> extends AtomicReference<c> implements ag<R>, c, d {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7013a;

        /* renamed from: b  reason: collision with root package name */
        ae<? extends R> f7014b;

        C0142a(ag<? super R> agVar, ae<? extends R> aeVar) {
            this.f7014b = aeVar;
            this.f7013a = agVar;
        }

        public final void onNext(R r) {
            this.f7013a.onNext(r);
        }

        public final void onError(Throwable th) {
            this.f7013a.onError(th);
        }

        public final void onComplete() {
            ae<? extends R> aeVar = this.f7014b;
            if (aeVar == null) {
                this.f7013a.onComplete();
                return;
            }
            this.f7014b = null;
            aeVar.subscribe(this);
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.replace(this, cVar);
        }
    }

    public a(g gVar, ae<? extends R> aeVar) {
        this.f7011a = gVar;
        this.f7012b = aeVar;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        C0142a aVar = new C0142a(agVar, this.f7012b);
        agVar.onSubscribe(aVar);
        this.f7011a.subscribe(aVar);
    }
}
