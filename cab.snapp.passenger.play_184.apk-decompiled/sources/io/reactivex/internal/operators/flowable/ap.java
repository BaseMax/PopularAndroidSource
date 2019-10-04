package io.reactivex.internal.operators.flowable;

import io.reactivex.e.g;
import io.reactivex.j;
import org.b.c;

public final class ap<T> extends a<T, T> {
    final g<? super T> c;

    static final class a<T> extends io.reactivex.internal.f.a<T, T> {

        /* renamed from: a  reason: collision with root package name */
        final g<? super T> f7971a;

        a(io.reactivex.internal.b.a<? super T> aVar, g<? super T> gVar) {
            super(aVar);
            this.f7971a = gVar;
        }

        public final void onNext(T t) {
            this.e.onNext(t);
            if (this.i == 0) {
                try {
                    this.f7971a.accept(t);
                } catch (Throwable th) {
                    a(th);
                }
            }
        }

        public final boolean tryOnNext(T t) {
            boolean tryOnNext = this.e.tryOnNext(t);
            try {
                this.f7971a.accept(t);
            } catch (Throwable th) {
                a(th);
            }
            return tryOnNext;
        }

        public final int requestFusion(int i) {
            return a(i);
        }

        public final T poll() throws Exception {
            T poll = this.g.poll();
            if (poll != null) {
                this.f7971a.accept(poll);
            }
            return poll;
        }
    }

    static final class b<T> extends io.reactivex.internal.f.b<T, T> {

        /* renamed from: a  reason: collision with root package name */
        final g<? super T> f7972a;

        b(c<? super T> cVar, g<? super T> gVar) {
            super(cVar);
            this.f7972a = gVar;
        }

        public final void onNext(T t) {
            if (!this.h) {
                this.e.onNext(t);
                if (this.i == 0) {
                    try {
                        this.f7972a.accept(t);
                    } catch (Throwable th) {
                        a(th);
                    }
                }
            }
        }

        public final int requestFusion(int i) {
            return a(i);
        }

        public final T poll() throws Exception {
            T poll = this.g.poll();
            if (poll != null) {
                this.f7972a.accept(poll);
            }
            return poll;
        }
    }

    public ap(j<T> jVar, g<? super T> gVar) {
        super(jVar);
        this.c = gVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        if (cVar instanceof io.reactivex.internal.b.a) {
            this.f7923b.subscribe(new a((io.reactivex.internal.b.a) cVar, this.c));
        } else {
            this.f7923b.subscribe(new b(cVar, this.c));
        }
    }
}
