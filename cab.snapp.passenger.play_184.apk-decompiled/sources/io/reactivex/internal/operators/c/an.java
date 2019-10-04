package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.b.e;
import io.reactivex.internal.c.b;
import io.reactivex.internal.disposables.DisposableHelper;

public final class an<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e.a f7133b;

    static final class a<T> extends b<T> implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7134a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.a f7135b;
        c c;
        e<T> d;
        boolean e;

        a(ag<? super T> agVar, io.reactivex.e.a aVar) {
            this.f7134a = agVar;
            this.f7135b = aVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                if (cVar instanceof e) {
                    this.d = (e) cVar;
                }
                this.f7134a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.f7134a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f7134a.onError(th);
            a();
        }

        public final void onComplete() {
            this.f7134a.onComplete();
            a();
        }

        public final void dispose() {
            this.c.dispose();
            a();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final int requestFusion(int i) {
            e<T> eVar = this.d;
            if (eVar == null || (i & 4) != 0) {
                return 0;
            }
            int requestFusion = eVar.requestFusion(i);
            if (requestFusion != 0) {
                boolean z = true;
                if (requestFusion != 1) {
                    z = false;
                }
                this.e = z;
            }
            return requestFusion;
        }

        public final void clear() {
            this.d.clear();
        }

        public final boolean isEmpty() {
            return this.d.isEmpty();
        }

        public final T poll() throws Exception {
            T poll = this.d.poll();
            if (poll == null && this.e) {
                a();
            }
            return poll;
        }

        private void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f7135b.run();
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    io.reactivex.g.a.onError(th);
                }
            }
        }
    }

    public an(ae<T> aeVar, io.reactivex.e.a aVar) {
        super(aeVar);
        this.f7133b = aVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7133b));
    }
}
