package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.g;
import io.reactivex.internal.disposables.DisposableHelper;

public final class ao<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final g<? super T> f7136b;
    final g<? super Throwable> c;
    final io.reactivex.e.a d;
    final io.reactivex.e.a e;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7137a;

        /* renamed from: b  reason: collision with root package name */
        final g<? super T> f7138b;
        final g<? super Throwable> c;
        final io.reactivex.e.a d;
        final io.reactivex.e.a e;
        c f;
        boolean g;

        a(ag<? super T> agVar, g<? super T> gVar, g<? super Throwable> gVar2, io.reactivex.e.a aVar, io.reactivex.e.a aVar2) {
            this.f7137a = agVar;
            this.f7138b = gVar;
            this.c = gVar2;
            this.d = aVar;
            this.e = aVar2;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f, cVar)) {
                this.f = cVar;
                this.f7137a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.f.dispose();
        }

        public final boolean isDisposed() {
            return this.f.isDisposed();
        }

        public final void onNext(T t) {
            if (!this.g) {
                try {
                    this.f7138b.accept(t);
                    this.f7137a.onNext(t);
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    this.f.dispose();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.g) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.g = true;
            try {
                this.c.accept(th);
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                th = new io.reactivex.c.a(th, th2);
            }
            this.f7137a.onError(th);
            try {
                this.e.run();
            } catch (Throwable th3) {
                b.throwIfFatal(th3);
                io.reactivex.g.a.onError(th3);
            }
        }

        public final void onComplete() {
            if (!this.g) {
                try {
                    this.d.run();
                    this.g = true;
                    this.f7137a.onComplete();
                    try {
                        this.e.run();
                    } catch (Throwable th) {
                        b.throwIfFatal(th);
                        io.reactivex.g.a.onError(th);
                    }
                } catch (Throwable th2) {
                    b.throwIfFatal(th2);
                    onError(th2);
                }
            }
        }
    }

    public ao(ae<T> aeVar, g<? super T> gVar, g<? super Throwable> gVar2, io.reactivex.e.a aVar, io.reactivex.e.a aVar2) {
        super(aeVar);
        this.f7136b = gVar;
        this.c = gVar2;
        this.d = aVar;
        this.e = aVar2;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        ae aeVar = this.f7091a;
        a aVar = new a(agVar, this.f7136b, this.c, this.d, this.e);
        aeVar.subscribe(aVar);
    }
}
