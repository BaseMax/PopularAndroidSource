package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class b extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g f6949a;

    /* renamed from: b  reason: collision with root package name */
    final g f6950b;

    static final class a implements d {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<c> f6951a;

        /* renamed from: b  reason: collision with root package name */
        final d f6952b;

        public a(AtomicReference<c> atomicReference, d dVar) {
            this.f6951a = atomicReference;
            this.f6952b = dVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.replace(this.f6951a, cVar);
        }

        public final void onComplete() {
            this.f6952b.onComplete();
        }

        public final void onError(Throwable th) {
            this.f6952b.onError(th);
        }
    }

    /* renamed from: io.reactivex.internal.operators.a.b$b  reason: collision with other inner class name */
    static final class C0140b extends AtomicReference<c> implements c, d {

        /* renamed from: a  reason: collision with root package name */
        final d f6953a;

        /* renamed from: b  reason: collision with root package name */
        final g f6954b;

        C0140b(d dVar, g gVar) {
            this.f6953a = dVar;
            this.f6954b = gVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f6953a.onSubscribe(this);
            }
        }

        public final void onError(Throwable th) {
            this.f6953a.onError(th);
        }

        public final void onComplete() {
            this.f6954b.subscribe(new a(this, this.f6953a));
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public b(g gVar, g gVar2) {
        this.f6949a = gVar;
        this.f6950b = gVar2;
    }

    public final void subscribeActual(d dVar) {
        this.f6949a.subscribe(new C0140b(dVar, this.f6950b));
    }
}
