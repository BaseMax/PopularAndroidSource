package io.reactivex.internal.operators.flowable;

import io.reactivex.e.d;
import io.reactivex.e.h;
import io.reactivex.j;
import org.b.c;

public final class ao<T, K> extends a<T, T> {
    final h<? super T, K> c;
    final d<? super K, ? super K> d;

    static final class a<T, K> extends io.reactivex.internal.f.a<T, T> {

        /* renamed from: a  reason: collision with root package name */
        final h<? super T, K> f7967a;

        /* renamed from: b  reason: collision with root package name */
        final d<? super K, ? super K> f7968b;
        K c;
        boolean d;

        a(io.reactivex.internal.b.a<? super T> aVar, h<? super T, K> hVar, d<? super K, ? super K> dVar) {
            super(aVar);
            this.f7967a = hVar;
            this.f7968b = dVar;
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
                return this.e.tryOnNext(t);
            }
            try {
                K apply = this.f7967a.apply(t);
                if (this.d) {
                    boolean test = this.f7968b.test(this.c, apply);
                    this.c = apply;
                    if (test) {
                        return false;
                    }
                } else {
                    this.d = true;
                    this.c = apply;
                }
                this.e.onNext(t);
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
            while (true) {
                T poll = this.g.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f7967a.apply(poll);
                if (!this.d) {
                    this.d = true;
                    this.c = apply;
                    return poll;
                } else if (!this.f7968b.test(this.c, apply)) {
                    this.c = apply;
                    return poll;
                } else {
                    this.c = apply;
                    if (this.i != 1) {
                        this.f.request(1);
                    }
                }
            }
        }
    }

    static final class b<T, K> extends io.reactivex.internal.f.b<T, T> implements io.reactivex.internal.b.a<T> {

        /* renamed from: a  reason: collision with root package name */
        final h<? super T, K> f7969a;

        /* renamed from: b  reason: collision with root package name */
        final d<? super K, ? super K> f7970b;
        K c;
        boolean d;

        b(c<? super T> cVar, h<? super T, K> hVar, d<? super K, ? super K> dVar) {
            super(cVar);
            this.f7969a = hVar;
            this.f7970b = dVar;
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
                this.e.onNext(t);
                return true;
            }
            try {
                K apply = this.f7969a.apply(t);
                if (this.d) {
                    boolean test = this.f7970b.test(this.c, apply);
                    this.c = apply;
                    if (test) {
                        return false;
                    }
                } else {
                    this.d = true;
                    this.c = apply;
                }
                this.e.onNext(t);
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
            while (true) {
                T poll = this.g.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f7969a.apply(poll);
                if (!this.d) {
                    this.d = true;
                    this.c = apply;
                    return poll;
                } else if (!this.f7970b.test(this.c, apply)) {
                    this.c = apply;
                    return poll;
                } else {
                    this.c = apply;
                    if (this.i != 1) {
                        this.f.request(1);
                    }
                }
            }
        }
    }

    public ao(j<T> jVar, h<? super T, K> hVar, d<? super K, ? super K> dVar) {
        super(jVar);
        this.c = hVar;
        this.d = dVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        if (cVar instanceof io.reactivex.internal.b.a) {
            this.f7923b.subscribe(new a((io.reactivex.internal.b.a) cVar, this.c, this.d));
        } else {
            this.f7923b.subscribe(new b(cVar, this.c, this.d));
        }
    }
}
