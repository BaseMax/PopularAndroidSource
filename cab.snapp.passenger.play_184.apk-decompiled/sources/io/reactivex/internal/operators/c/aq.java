package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

public final class aq<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f7140b;
    final T c;
    final boolean d;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7141a;

        /* renamed from: b  reason: collision with root package name */
        final long f7142b;
        final T c;
        final boolean d;
        c e;
        long f;
        boolean g;

        a(ag<? super T> agVar, long j, T t, boolean z) {
            this.f7141a = agVar;
            this.f7142b = j;
            this.c = t;
            this.d = z;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.e, cVar)) {
                this.e = cVar;
                this.f7141a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.e.dispose();
        }

        public final boolean isDisposed() {
            return this.e.isDisposed();
        }

        public final void onNext(T t) {
            if (!this.g) {
                long j = this.f;
                if (j == this.f7142b) {
                    this.g = true;
                    this.e.dispose();
                    this.f7141a.onNext(t);
                    this.f7141a.onComplete();
                    return;
                }
                this.f = j + 1;
            }
        }

        public final void onError(Throwable th) {
            if (this.g) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.g = true;
            this.f7141a.onError(th);
        }

        public final void onComplete() {
            if (!this.g) {
                this.g = true;
                T t = this.c;
                if (t != null || !this.d) {
                    if (t != null) {
                        this.f7141a.onNext(t);
                    }
                    this.f7141a.onComplete();
                } else {
                    this.f7141a.onError(new NoSuchElementException());
                }
            }
        }
    }

    public aq(ae<T> aeVar, long j, T t, boolean z) {
        super(aeVar);
        this.f7140b = j;
        this.c = t;
        this.d = z;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        ae aeVar = this.f7091a;
        a aVar = new a(agVar, this.f7140b, this.c, this.d);
        aeVar.subscribe(aVar);
    }
}
