package io.reactivex.internal.operators.e;

import io.reactivex.ah;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import java.util.concurrent.TimeUnit;

public final class f<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<? extends T> f7817a;

    /* renamed from: b  reason: collision with root package name */
    final long f7818b;
    final TimeUnit c;
    final ah d;
    final boolean e;

    final class a implements al<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7819a;
        private final io.reactivex.internal.disposables.f c;

        /* renamed from: io.reactivex.internal.operators.e.f$a$a  reason: collision with other inner class name */
        final class C0177a implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            private final Throwable f7822b;

            C0177a(Throwable th) {
                this.f7822b = th;
            }

            public final void run() {
                a.this.f7819a.onError(this.f7822b);
            }
        }

        final class b implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            private final T f7824b;

            b(T t) {
                this.f7824b = t;
            }

            public final void run() {
                a.this.f7819a.onSuccess(this.f7824b);
            }
        }

        a(io.reactivex.internal.disposables.f fVar, al<? super T> alVar) {
            this.c = fVar;
            this.f7819a = alVar;
        }

        public final void onSubscribe(c cVar) {
            this.c.replace(cVar);
        }

        public final void onSuccess(T t) {
            this.c.replace(f.this.d.scheduleDirect(new b(t), f.this.f7818b, f.this.c));
        }

        public final void onError(Throwable th) {
            this.c.replace(f.this.d.scheduleDirect(new C0177a(th), f.this.e ? f.this.f7818b : 0, f.this.c));
        }
    }

    public f(ao<? extends T> aoVar, long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        this.f7817a = aoVar;
        this.f7818b = j;
        this.c = timeUnit;
        this.d = ahVar;
        this.e = z;
    }

    public final void subscribeActual(al<? super T> alVar) {
        io.reactivex.internal.disposables.f fVar = new io.reactivex.internal.disposables.f();
        alVar.onSubscribe(fVar);
        this.f7817a.subscribe(new a(fVar, alVar));
    }
}
