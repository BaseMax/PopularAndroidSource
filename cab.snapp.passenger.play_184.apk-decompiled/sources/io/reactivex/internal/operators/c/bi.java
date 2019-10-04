package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.c.b;
import io.reactivex.e.c;
import io.reactivex.e.g;
import io.reactivex.i;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;
import java.util.concurrent.Callable;

public final class bi<T, S> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<S> f7195a;

    /* renamed from: b  reason: collision with root package name */
    final c<S, i<T>, S> f7196b;
    final g<? super S> c;

    static final class a<T, S> implements io.reactivex.b.c, i<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7197a;

        /* renamed from: b  reason: collision with root package name */
        final c<S, ? super i<T>, S> f7198b;
        final g<? super S> c;
        S d;
        volatile boolean e;
        boolean f;
        boolean g;

        a(ag<? super T> agVar, c<S, ? super i<T>, S> cVar, g<? super S> gVar, S s) {
            this.f7197a = agVar;
            this.f7198b = cVar;
            this.c = gVar;
            this.d = s;
        }

        public final void run() {
            S s = this.d;
            if (this.e) {
                this.d = null;
                a(s);
                return;
            }
            c<S, ? super i<T>, S> cVar = this.f7198b;
            while (!this.e) {
                this.g = false;
                try {
                    s = cVar.apply(s, this);
                    if (this.f) {
                        this.e = true;
                        this.d = null;
                        a(s);
                        return;
                    }
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    this.d = null;
                    this.e = true;
                    onError(th);
                    a(s);
                    return;
                }
            }
            this.d = null;
            a(s);
        }

        private void a(S s) {
            try {
                this.c.accept(s);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
        }

        public final void dispose() {
            this.e = true;
        }

        public final boolean isDisposed() {
            return this.e;
        }

        public final void onNext(T t) {
            if (!this.f) {
                if (this.g) {
                    onError(new IllegalStateException("onNext already called in this generate turn"));
                } else if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.g = true;
                    this.f7197a.onNext(t);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.f) {
                io.reactivex.g.a.onError(th);
                return;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f = true;
            this.f7197a.onError(th);
        }

        public final void onComplete() {
            if (!this.f) {
                this.f = true;
                this.f7197a.onComplete();
            }
        }
    }

    public bi(Callable<S> callable, c<S, i<T>, S> cVar, g<? super S> gVar) {
        this.f7195a = callable;
        this.f7196b = cVar;
        this.c = gVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        try {
            a aVar = new a(agVar, this.f7196b, this.c, this.f7195a.call());
            agVar.onSubscribe(aVar);
            aVar.run();
        } catch (Throwable th) {
            b.throwIfFatal(th);
            EmptyDisposable.error(th, (ag<?>) agVar);
        }
    }
}
