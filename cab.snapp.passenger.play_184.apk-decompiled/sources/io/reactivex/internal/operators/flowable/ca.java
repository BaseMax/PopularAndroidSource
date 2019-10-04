package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.j;
import org.b.c;

public final class ca<T, U> extends a<T, U> {
    final h<? super T, ? extends U> c;

    static final class a<T, U> extends io.reactivex.internal.f.a<T, U> {

        /* renamed from: a  reason: collision with root package name */
        final h<? super T, ? extends U> f8076a;

        a(io.reactivex.internal.b.a<? super U> aVar, h<? super T, ? extends U> hVar) {
            super(aVar);
            this.f8076a = hVar;
        }

        public final void onNext(T t) {
            if (!this.h) {
                if (this.i != 0) {
                    this.e.onNext(null);
                    return;
                }
                try {
                    this.e.onNext(io.reactivex.internal.a.b.requireNonNull(this.f8076a.apply(t), "The mapper function returned a null value."));
                } catch (Throwable th) {
                    a(th);
                }
            }
        }

        public final boolean tryOnNext(T t) {
            if (this.h) {
                return false;
            }
            try {
                return this.e.tryOnNext(io.reactivex.internal.a.b.requireNonNull(this.f8076a.apply(t), "The mapper function returned a null value."));
            } catch (Throwable th) {
                a(th);
                return true;
            }
        }

        public final int requestFusion(int i) {
            return a(i);
        }

        public final U poll() throws Exception {
            Object poll = this.g.poll();
            if (poll != null) {
                return io.reactivex.internal.a.b.requireNonNull(this.f8076a.apply(poll), "The mapper function returned a null value.");
            }
            return null;
        }
    }

    static final class b<T, U> extends io.reactivex.internal.f.b<T, U> {

        /* renamed from: a  reason: collision with root package name */
        final h<? super T, ? extends U> f8077a;

        b(c<? super U> cVar, h<? super T, ? extends U> hVar) {
            super(cVar);
            this.f8077a = hVar;
        }

        public final void onNext(T t) {
            if (!this.h) {
                if (this.i != 0) {
                    this.e.onNext(null);
                    return;
                }
                try {
                    this.e.onNext(io.reactivex.internal.a.b.requireNonNull(this.f8077a.apply(t), "The mapper function returned a null value."));
                } catch (Throwable th) {
                    a(th);
                }
            }
        }

        public final int requestFusion(int i) {
            return a(i);
        }

        public final U poll() throws Exception {
            Object poll = this.g.poll();
            if (poll != null) {
                return io.reactivex.internal.a.b.requireNonNull(this.f8077a.apply(poll), "The mapper function returned a null value.");
            }
            return null;
        }
    }

    public ca(j<T> jVar, h<? super T, ? extends U> hVar) {
        super(jVar);
        this.c = hVar;
    }

    public final void subscribeActual(c<? super U> cVar) {
        if (cVar instanceof io.reactivex.internal.b.a) {
            this.f7923b.subscribe(new a((io.reactivex.internal.b.a) cVar, this.c));
        } else {
            this.f7923b.subscribe(new b(cVar, this.c));
        }
    }
}
