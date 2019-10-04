package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class al extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.a f6922a;

    /* renamed from: b  reason: collision with root package name */
    final g f6923b;

    static final class a extends AtomicReference<c> implements c, d {

        /* renamed from: a  reason: collision with root package name */
        final d f6924a;

        /* renamed from: b  reason: collision with root package name */
        final C0138a f6925b = new C0138a(this);
        final AtomicBoolean c = new AtomicBoolean();

        /* renamed from: io.reactivex.internal.operators.a.al$a$a  reason: collision with other inner class name */
        static final class C0138a extends AtomicReference<c> implements d {

            /* renamed from: a  reason: collision with root package name */
            final a f6926a;

            C0138a(a aVar) {
                this.f6926a = aVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onComplete() {
                a aVar = this.f6926a;
                if (aVar.c.compareAndSet(false, true)) {
                    DisposableHelper.dispose(aVar);
                    aVar.f6924a.onComplete();
                }
            }

            public final void onError(Throwable th) {
                a aVar = this.f6926a;
                if (aVar.c.compareAndSet(false, true)) {
                    DisposableHelper.dispose(aVar);
                    aVar.f6924a.onError(th);
                    return;
                }
                io.reactivex.g.a.onError(th);
            }
        }

        a(d dVar) {
            this.f6924a = dVar;
        }

        public final void dispose() {
            if (this.c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this);
                DisposableHelper.dispose(this.f6925b);
            }
        }

        public final boolean isDisposed() {
            return this.c.get();
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onComplete() {
            if (this.c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f6925b);
                this.f6924a.onComplete();
            }
        }

        public final void onError(Throwable th) {
            if (this.c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f6925b);
                this.f6924a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }
    }

    public al(io.reactivex.a aVar, g gVar) {
        this.f6922a = aVar;
        this.f6923b = gVar;
    }

    public final void subscribeActual(d dVar) {
        a aVar = new a(dVar);
        dVar.onSubscribe(aVar);
        this.f6923b.subscribe(aVar.f6925b);
        this.f6922a.subscribe((d) aVar);
    }
}
