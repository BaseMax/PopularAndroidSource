package io.reactivex.internal.operators.maybe;

import io.reactivex.e.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class aa<T, U, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends w<? extends U>> f8410b;
    final c<? super T, ? super U, ? extends R> c;

    static final class a<T, U, R> implements io.reactivex.b.c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final h<? super T, ? extends w<? extends U>> f8411a;

        /* renamed from: b  reason: collision with root package name */
        final C0196a<T, U, R> f8412b;

        /* renamed from: io.reactivex.internal.operators.maybe.aa$a$a  reason: collision with other inner class name */
        static final class C0196a<T, U, R> extends AtomicReference<io.reactivex.b.c> implements t<U> {

            /* renamed from: a  reason: collision with root package name */
            final t<? super R> f8413a;

            /* renamed from: b  reason: collision with root package name */
            final c<? super T, ? super U, ? extends R> f8414b;
            T c;

            C0196a(t<? super R> tVar, c<? super T, ? super U, ? extends R> cVar) {
                this.f8413a = tVar;
                this.f8414b = cVar;
            }

            public final void onSubscribe(io.reactivex.b.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onSuccess(U u) {
                T t = this.c;
                this.c = null;
                try {
                    this.f8413a.onSuccess(b.requireNonNull(this.f8414b.apply(t, u), "The resultSelector returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.f8413a.onError(th);
                }
            }

            public final void onError(Throwable th) {
                this.f8413a.onError(th);
            }

            public final void onComplete() {
                this.f8413a.onComplete();
            }
        }

        a(t<? super R> tVar, h<? super T, ? extends w<? extends U>> hVar, c<? super T, ? super U, ? extends R> cVar) {
            this.f8412b = new C0196a<>(tVar, cVar);
            this.f8411a = hVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this.f8412b);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((io.reactivex.b.c) this.f8412b.get());
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.setOnce(this.f8412b, cVar)) {
                this.f8412b.f8413a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            try {
                w wVar = (w) b.requireNonNull(this.f8411a.apply(t), "The mapper returned a null MaybeSource");
                if (DisposableHelper.replace(this.f8412b, null)) {
                    C0196a<T, U, R> aVar = this.f8412b;
                    aVar.c = t;
                    wVar.subscribe(aVar);
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f8412b.f8413a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f8412b.f8413a.onError(th);
        }

        public final void onComplete() {
            this.f8412b.f8413a.onComplete();
        }
    }

    public aa(w<T> wVar, h<? super T, ? extends w<? extends U>> hVar, c<? super T, ? super U, ? extends R> cVar) {
        super(wVar);
        this.f8410b = hVar;
        this.c = cVar;
    }

    public final void subscribeActual(t<? super R> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8410b, this.c));
    }
}
