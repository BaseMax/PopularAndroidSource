package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.e.h;
import io.reactivex.g;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class aj extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g f6914a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super Throwable, ? extends g> f6915b;

    static final class a extends AtomicReference<c> implements c, d {

        /* renamed from: a  reason: collision with root package name */
        final d f6916a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Throwable, ? extends g> f6917b;
        boolean c;

        a(d dVar, h<? super Throwable, ? extends g> hVar) {
            this.f6916a = dVar;
            this.f6917b = hVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.replace(this, cVar);
        }

        public final void onComplete() {
            this.f6916a.onComplete();
        }

        public final void onError(Throwable th) {
            if (this.c) {
                this.f6916a.onError(th);
                return;
            }
            this.c = true;
            try {
                ((g) b.requireNonNull(this.f6917b.apply(th), "The errorMapper returned a null CompletableSource")).subscribe(this);
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                this.f6916a.onError(new io.reactivex.c.a(th, th2));
            }
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }
    }

    public aj(g gVar, h<? super Throwable, ? extends g> hVar) {
        this.f6914a = gVar;
        this.f6915b = hVar;
    }

    public final void subscribeActual(d dVar) {
        a aVar = new a(dVar, this.f6915b);
        dVar.onSubscribe(aVar);
        this.f6914a.subscribe(aVar);
    }
}
