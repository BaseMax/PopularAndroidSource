package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.y;

public final class ai<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends y<R>> f7125b;

    static final class a<T, R> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7126a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends y<R>> f7127b;
        boolean c;
        c d;

        a(ag<? super R> agVar, h<? super T, ? extends y<R>> hVar) {
            this.f7126a = agVar;
            this.f7127b = hVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.d, cVar)) {
                this.d = cVar;
                this.f7126a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.d.dispose();
        }

        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        public final void onNext(T t) {
            if (this.c) {
                if (t instanceof y) {
                    y yVar = (y) t;
                    if (yVar.isOnError()) {
                        io.reactivex.g.a.onError(yVar.getError());
                    }
                }
                return;
            }
            try {
                y yVar2 = (y) b.requireNonNull(this.f7127b.apply(t), "The selector returned a null Notification");
                if (yVar2.isOnError()) {
                    this.d.dispose();
                    onError(yVar2.getError());
                } else if (yVar2.isOnComplete()) {
                    this.d.dispose();
                    onComplete();
                } else {
                    this.f7126a.onNext(yVar2.getValue());
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.d.dispose();
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = true;
            this.f7126a.onError(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                this.f7126a.onComplete();
            }
        }
    }

    public ai(ae<T> aeVar, h<? super T, ? extends y<R>> hVar) {
        super(aeVar);
        this.f7125b = hVar;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7125b));
    }
}
