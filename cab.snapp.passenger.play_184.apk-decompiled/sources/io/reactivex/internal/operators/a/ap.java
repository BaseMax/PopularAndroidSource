package io.reactivex.internal.operators.a;

import io.reactivex.ag;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.c.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.z;

public final class ap<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final g f6938a;

    static final class a extends c<Void> implements d {

        /* renamed from: a  reason: collision with root package name */
        final ag<?> f6939a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.b.c f6940b;

        public final void clear() {
        }

        public final boolean isEmpty() {
            return true;
        }

        public final Void poll() throws Exception {
            return null;
        }

        public final int requestFusion(int i) {
            return i & 2;
        }

        a(ag<?> agVar) {
            this.f6939a = agVar;
        }

        public final void onComplete() {
            this.f6939a.onComplete();
        }

        public final void onError(Throwable th) {
            this.f6939a.onError(th);
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.f6940b, cVar)) {
                this.f6940b = cVar;
                this.f6939a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.f6940b.dispose();
        }

        public final boolean isDisposed() {
            return this.f6940b.isDisposed();
        }
    }

    public ap(g gVar) {
        this.f6938a = gVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f6938a.subscribe(new a(agVar));
    }
}
