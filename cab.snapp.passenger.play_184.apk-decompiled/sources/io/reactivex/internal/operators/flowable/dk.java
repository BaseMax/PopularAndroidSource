package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.d;
import io.reactivex.j;
import java.util.concurrent.Callable;
import org.b.b;
import org.b.c;

public final class dk {

    static final class a<T, R> extends j<R> {

        /* renamed from: b  reason: collision with root package name */
        final T f8188b;
        final h<? super T, ? extends b<? extends R>> c;

        a(T t, h<? super T, ? extends b<? extends R>> hVar) {
            this.f8188b = t;
            this.c = hVar;
        }

        public final void subscribeActual(c<? super R> cVar) {
            try {
                b bVar = (b) io.reactivex.internal.a.b.requireNonNull(this.c.apply(this.f8188b), "The mapper returned a null Publisher");
                if (bVar instanceof Callable) {
                    try {
                        Object call = ((Callable) bVar).call();
                        if (call == null) {
                            EmptySubscription.complete(cVar);
                        } else {
                            cVar.onSubscribe(new d(cVar, call));
                        }
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        EmptySubscription.error(th, cVar);
                    }
                } else {
                    bVar.subscribe(cVar);
                }
            } catch (Throwable th2) {
                EmptySubscription.error(th2, cVar);
            }
        }
    }

    private dk() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, R> boolean tryScalarXMapSubscribe(b<T> bVar, c<? super R> cVar, h<? super T, ? extends b<? extends R>> hVar) {
        if (!(bVar instanceof Callable)) {
            return false;
        }
        try {
            Object call = ((Callable) bVar).call();
            if (call == null) {
                EmptySubscription.complete(cVar);
                return true;
            }
            try {
                b bVar2 = (b) io.reactivex.internal.a.b.requireNonNull(hVar.apply(call), "The mapper returned a null Publisher");
                if (bVar2 instanceof Callable) {
                    try {
                        Object call2 = ((Callable) bVar2).call();
                        if (call2 == null) {
                            EmptySubscription.complete(cVar);
                            return true;
                        }
                        cVar.onSubscribe(new d(cVar, call2));
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        EmptySubscription.error(th, cVar);
                        return true;
                    }
                } else {
                    bVar2.subscribe(cVar);
                }
                return true;
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                EmptySubscription.error(th2, cVar);
                return true;
            }
        } catch (Throwable th3) {
            io.reactivex.c.b.throwIfFatal(th3);
            EmptySubscription.error(th3, cVar);
            return true;
        }
    }

    public static <T, U> j<U> scalarXMap(T t, h<? super T, ? extends b<? extends U>> hVar) {
        return io.reactivex.g.a.onAssembly(new a(t, hVar));
    }
}
