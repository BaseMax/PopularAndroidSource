package io.reactivex.internal.operators.flowable;

import io.reactivex.e.g;
import io.reactivex.j;
import org.b.c;

public final class ar<T> extends a<T, T> {
    final g<? super T> c;
    final g<? super Throwable> d;
    final io.reactivex.e.a e;
    final io.reactivex.e.a f;

    static final class a<T> extends io.reactivex.internal.f.a<T, T> {

        /* renamed from: a  reason: collision with root package name */
        final g<? super T> f7977a;

        /* renamed from: b  reason: collision with root package name */
        final g<? super Throwable> f7978b;
        final io.reactivex.e.a c;
        final io.reactivex.e.a d;

        a(io.reactivex.internal.b.a<? super T> aVar, g<? super T> gVar, g<? super Throwable> gVar2, io.reactivex.e.a aVar2, io.reactivex.e.a aVar3) {
            super(aVar);
            this.f7977a = gVar;
            this.f7978b = gVar2;
            this.c = aVar2;
            this.d = aVar3;
        }

        public final void onNext(T t) {
            if (!this.h) {
                if (this.i != 0) {
                    this.e.onNext(null);
                    return;
                }
                try {
                    this.f7977a.accept(t);
                    this.e.onNext(t);
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
                this.f7977a.accept(t);
                return this.e.tryOnNext(t);
            } catch (Throwable th) {
                a(th);
                return false;
            }
        }

        public final void onError(Throwable th) {
            if (this.h) {
                io.reactivex.g.a.onError(th);
                return;
            }
            boolean z = true;
            this.h = true;
            try {
                this.f7978b.accept(th);
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                this.e.onError(new io.reactivex.c.a(th, th2));
                z = false;
            }
            if (z) {
                this.e.onError(th);
            }
            try {
                this.d.run();
            } catch (Throwable th3) {
                io.reactivex.c.b.throwIfFatal(th3);
                io.reactivex.g.a.onError(th3);
            }
        }

        public final void onComplete() {
            if (!this.h) {
                try {
                    this.c.run();
                    this.h = true;
                    this.e.onComplete();
                    try {
                        this.d.run();
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        io.reactivex.g.a.onError(th);
                    }
                } catch (Throwable th2) {
                    a(th2);
                }
            }
        }

        public final int requestFusion(int i) {
            return a(i);
        }

        public final T poll() throws Exception {
            try {
                T poll = this.g.poll();
                if (poll != null) {
                    try {
                        this.f7977a.accept(poll);
                        this.d.run();
                    } catch (Throwable th) {
                        throw new io.reactivex.c.a(th, th);
                    }
                } else if (this.i == 1) {
                    this.c.run();
                    this.d.run();
                }
                return poll;
            } catch (Throwable th2) {
                throw new io.reactivex.c.a(th, th2);
            }
        }
    }

    static final class b<T> extends io.reactivex.internal.f.b<T, T> {

        /* renamed from: a  reason: collision with root package name */
        final g<? super T> f7979a;

        /* renamed from: b  reason: collision with root package name */
        final g<? super Throwable> f7980b;
        final io.reactivex.e.a c;
        final io.reactivex.e.a d;

        b(c<? super T> cVar, g<? super T> gVar, g<? super Throwable> gVar2, io.reactivex.e.a aVar, io.reactivex.e.a aVar2) {
            super(cVar);
            this.f7979a = gVar;
            this.f7980b = gVar2;
            this.c = aVar;
            this.d = aVar2;
        }

        public final void onNext(T t) {
            if (!this.h) {
                if (this.i != 0) {
                    this.e.onNext(null);
                    return;
                }
                try {
                    this.f7979a.accept(t);
                    this.e.onNext(t);
                } catch (Throwable th) {
                    a(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.h) {
                io.reactivex.g.a.onError(th);
                return;
            }
            boolean z = true;
            this.h = true;
            try {
                this.f7980b.accept(th);
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                this.e.onError(new io.reactivex.c.a(th, th2));
                z = false;
            }
            if (z) {
                this.e.onError(th);
            }
            try {
                this.d.run();
            } catch (Throwable th3) {
                io.reactivex.c.b.throwIfFatal(th3);
                io.reactivex.g.a.onError(th3);
            }
        }

        public final void onComplete() {
            if (!this.h) {
                try {
                    this.c.run();
                    this.h = true;
                    this.e.onComplete();
                    try {
                        this.d.run();
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        io.reactivex.g.a.onError(th);
                    }
                } catch (Throwable th2) {
                    a(th2);
                }
            }
        }

        public final int requestFusion(int i) {
            return a(i);
        }

        public final T poll() throws Exception {
            try {
                T poll = this.g.poll();
                if (poll != null) {
                    try {
                        this.f7979a.accept(poll);
                        this.d.run();
                    } catch (Throwable th) {
                        throw new io.reactivex.c.a(th, th);
                    }
                } else if (this.i == 1) {
                    this.c.run();
                    this.d.run();
                }
                return poll;
            } catch (Throwable th2) {
                throw new io.reactivex.c.a(th, th2);
            }
        }
    }

    public ar(j<T> jVar, g<? super T> gVar, g<? super Throwable> gVar2, io.reactivex.e.a aVar, io.reactivex.e.a aVar2) {
        super(jVar);
        this.c = gVar;
        this.d = gVar2;
        this.e = aVar;
        this.f = aVar2;
    }

    public final void subscribeActual(c<? super T> cVar) {
        if (cVar instanceof io.reactivex.internal.b.a) {
            j jVar = this.f7923b;
            a aVar = new a((io.reactivex.internal.b.a) cVar, this.c, this.d, this.e, this.f);
            jVar.subscribe(aVar);
            return;
        }
        j jVar2 = this.f7923b;
        b bVar = new b(cVar, this.c, this.d, this.e, this.f);
        jVar2.subscribe(bVar);
    }
}
