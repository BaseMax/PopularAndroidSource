package io.reactivex.internal.operators.flowable;

import io.reactivex.e.q;
import io.reactivex.internal.b.g;
import io.reactivex.j;
import org.b.c;

public final class ay<T> extends a<T, T> {
    final q<? super T> c;

    static final class a<T> extends io.reactivex.internal.f.a<T, T> {

        /* renamed from: a  reason: collision with root package name */
        final q<? super T> f7994a;

        a(io.reactivex.internal.b.a<? super T> aVar, q<? super T> qVar) {
            super(aVar);
            this.f7994a = qVar;
        }

        public final void onNext(T t) {
            if (!tryOnNext(t)) {
                this.f.request(1);
            }
        }

        public final boolean tryOnNext(T t) {
            if (this.h) {
                return false;
            }
            if (this.i != 0) {
                return this.e.tryOnNext(null);
            }
            try {
                if (!this.f7994a.test(t) || !this.e.tryOnNext(t)) {
                    return false;
                }
                return true;
            } catch (Throwable th) {
                a(th);
                return true;
            }
        }

        public final int requestFusion(int i) {
            return a(i);
        }

        public final T poll() throws Exception {
            g gVar = this.g;
            q<? super T> qVar = this.f7994a;
            while (true) {
                T poll = gVar.poll();
                if (poll == null) {
                    return null;
                }
                if (qVar.test(poll)) {
                    return poll;
                }
                if (this.i == 2) {
                    gVar.request(1);
                }
            }
        }
    }

    static final class b<T> extends io.reactivex.internal.f.b<T, T> implements io.reactivex.internal.b.a<T> {

        /* renamed from: a  reason: collision with root package name */
        final q<? super T> f7995a;

        b(c<? super T> cVar, q<? super T> qVar) {
            super(cVar);
            this.f7995a = qVar;
        }

        public final void onNext(T t) {
            if (!tryOnNext(t)) {
                this.f.request(1);
            }
        }

        public final boolean tryOnNext(T t) {
            if (this.h) {
                return false;
            }
            if (this.i != 0) {
                this.e.onNext(null);
                return true;
            }
            try {
                boolean test = this.f7995a.test(t);
                if (test) {
                    this.e.onNext(t);
                }
                return test;
            } catch (Throwable th) {
                a(th);
                return true;
            }
        }

        public final int requestFusion(int i) {
            return a(i);
        }

        public final T poll() throws Exception {
            g gVar = this.g;
            q<? super T> qVar = this.f7995a;
            while (true) {
                T poll = gVar.poll();
                if (poll == null) {
                    return null;
                }
                if (qVar.test(poll)) {
                    return poll;
                }
                if (this.i == 2) {
                    gVar.request(1);
                }
            }
        }
    }

    public ay(j<T> jVar, q<? super T> qVar) {
        super(jVar);
        this.c = qVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        if (cVar instanceof io.reactivex.internal.b.a) {
            this.f7923b.subscribe(new a((io.reactivex.internal.b.a) cVar, this.c));
        } else {
            this.f7923b.subscribe(new b(cVar, this.c));
        }
    }
}
