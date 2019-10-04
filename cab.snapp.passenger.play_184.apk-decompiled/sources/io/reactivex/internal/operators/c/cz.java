package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.h;
import io.reactivex.internal.b.e;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

public final class cz {

    public static final class a<T> extends AtomicInteger implements e<T>, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7377a;

        /* renamed from: b  reason: collision with root package name */
        final T f7378b;

        public a(ag<? super T> agVar, T t) {
            this.f7377a = agVar;
            this.f7378b = t;
        }

        public final boolean offer(T t) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        public final boolean offer(T t, T t2) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        public final T poll() throws Exception {
            if (get() != 1) {
                return null;
            }
            lazySet(3);
            return this.f7378b;
        }

        public final boolean isEmpty() {
            return get() != 1;
        }

        public final void clear() {
            lazySet(3);
        }

        public final void dispose() {
            set(3);
        }

        public final boolean isDisposed() {
            return get() == 3;
        }

        public final int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            lazySet(1);
            return 1;
        }

        public final void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                this.f7377a.onNext(this.f7378b);
                if (get() == 2) {
                    lazySet(3);
                    this.f7377a.onComplete();
                }
            }
        }
    }

    static final class b<T, R> extends z<R> {

        /* renamed from: a  reason: collision with root package name */
        final T f7379a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ae<? extends R>> f7380b;

        b(T t, h<? super T, ? extends ae<? extends R>> hVar) {
            this.f7379a = t;
            this.f7380b = hVar;
        }

        public final void subscribeActual(ag<? super R> agVar) {
            try {
                ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f7380b.apply(this.f7379a), "The mapper returned a null ObservableSource");
                if (aeVar instanceof Callable) {
                    try {
                        Object call = ((Callable) aeVar).call();
                        if (call == null) {
                            EmptyDisposable.complete((ag<?>) agVar);
                            return;
                        }
                        a aVar = new a(agVar, call);
                        agVar.onSubscribe(aVar);
                        aVar.run();
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        EmptyDisposable.error(th, (ag<?>) agVar);
                    }
                } else {
                    aeVar.subscribe(agVar);
                }
            } catch (Throwable th2) {
                EmptyDisposable.error(th2, (ag<?>) agVar);
            }
        }
    }

    private cz() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, R> boolean tryScalarXMapSubscribe(ae<T> aeVar, ag<? super R> agVar, h<? super T, ? extends ae<? extends R>> hVar) {
        if (!(aeVar instanceof Callable)) {
            return false;
        }
        try {
            Object call = ((Callable) aeVar).call();
            if (call == null) {
                EmptyDisposable.complete((ag<?>) agVar);
                return true;
            }
            try {
                ae aeVar2 = (ae) io.reactivex.internal.a.b.requireNonNull(hVar.apply(call), "The mapper returned a null ObservableSource");
                if (aeVar2 instanceof Callable) {
                    try {
                        Object call2 = ((Callable) aeVar2).call();
                        if (call2 == null) {
                            EmptyDisposable.complete((ag<?>) agVar);
                            return true;
                        }
                        a aVar = new a(agVar, call2);
                        agVar.onSubscribe(aVar);
                        aVar.run();
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        EmptyDisposable.error(th, (ag<?>) agVar);
                        return true;
                    }
                } else {
                    aeVar2.subscribe(agVar);
                }
                return true;
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                EmptyDisposable.error(th2, (ag<?>) agVar);
                return true;
            }
        } catch (Throwable th3) {
            io.reactivex.c.b.throwIfFatal(th3);
            EmptyDisposable.error(th3, (ag<?>) agVar);
            return true;
        }
    }

    public static <T, U> z<U> scalarXMap(T t, h<? super T, ? extends ae<? extends U>> hVar) {
        return io.reactivex.g.a.onAssembly(new b(t, hVar));
    }
}
