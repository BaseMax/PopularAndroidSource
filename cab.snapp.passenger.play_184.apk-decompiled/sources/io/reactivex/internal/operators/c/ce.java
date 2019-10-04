package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.f;

public final class ce<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super Throwable, ? extends ae<? extends T>> f7284b;
    final boolean c;

    static final class a<T> implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7285a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Throwable, ? extends ae<? extends T>> f7286b;
        final boolean c;
        final f d = new f();
        boolean e;
        boolean f;

        a(ag<? super T> agVar, h<? super Throwable, ? extends ae<? extends T>> hVar, boolean z) {
            this.f7285a = agVar;
            this.f7286b = hVar;
            this.c = z;
        }

        public final void onSubscribe(c cVar) {
            this.d.replace(cVar);
        }

        public final void onNext(T t) {
            if (!this.f) {
                this.f7285a.onNext(t);
            }
        }

        public final void onError(Throwable th) {
            if (!this.e) {
                this.e = true;
                if (!this.c || (th instanceof Exception)) {
                    try {
                        ae aeVar = (ae) this.f7286b.apply(th);
                        if (aeVar == null) {
                            NullPointerException nullPointerException = new NullPointerException("Observable is null");
                            nullPointerException.initCause(th);
                            this.f7285a.onError(nullPointerException);
                            return;
                        }
                        aeVar.subscribe(this);
                    } catch (Throwable th2) {
                        b.throwIfFatal(th2);
                        this.f7285a.onError(new io.reactivex.c.a(th, th2));
                    }
                } else {
                    this.f7285a.onError(th);
                }
            } else if (this.f) {
                io.reactivex.g.a.onError(th);
            } else {
                this.f7285a.onError(th);
            }
        }

        public final void onComplete() {
            if (!this.f) {
                this.f = true;
                this.e = true;
                this.f7285a.onComplete();
            }
        }
    }

    public ce(ae<T> aeVar, h<? super Throwable, ? extends ae<? extends T>> hVar, boolean z) {
        super(aeVar);
        this.f7284b = hVar;
        this.c = z;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        a aVar = new a(agVar, this.f7284b, this.c);
        agVar.onSubscribe(aVar.d);
        this.f7091a.subscribe(aVar);
    }
}
