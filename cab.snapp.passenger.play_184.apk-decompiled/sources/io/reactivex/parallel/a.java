package io.reactivex.parallel;

import androidx.appcompat.widget.ActivityChooserView;
import io.reactivex.ah;
import io.reactivex.e.g;
import io.reactivex.e.q;
import io.reactivex.internal.operators.d.d;
import io.reactivex.internal.operators.d.e;
import io.reactivex.internal.operators.d.f;
import io.reactivex.internal.operators.d.h;
import io.reactivex.internal.operators.d.i;
import io.reactivex.internal.operators.d.k;
import io.reactivex.internal.operators.d.l;
import io.reactivex.internal.operators.d.m;
import io.reactivex.internal.operators.d.n;
import io.reactivex.internal.operators.d.o;
import io.reactivex.internal.operators.d.p;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.ListAddBiConsumer;
import io.reactivex.j;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Callable;
import org.b.b;
import org.b.c;

public abstract class a<T> {
    public abstract int parallelism();

    public abstract void subscribe(c<? super T>[] cVarArr);

    /* access modifiers changed from: protected */
    public final boolean a(c<?>[] cVarArr) {
        if (cVarArr.length == parallelism()) {
            return true;
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("parallelism = " + r0 + ", subscribers = " + cVarArr.length);
        for (c<?> error : cVarArr) {
            EmptySubscription.error(illegalArgumentException, error);
        }
        return false;
    }

    public static <T> a<T> from(b<? extends T> bVar) {
        return from(bVar, Runtime.getRuntime().availableProcessors(), j.bufferSize());
    }

    public static <T> a<T> from(b<? extends T> bVar, int i) {
        return from(bVar, i, j.bufferSize());
    }

    public static <T> a<T> from(b<? extends T> bVar, int i, int i2) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source");
        io.reactivex.internal.a.b.verifyPositive(i, "parallelism");
        io.reactivex.internal.a.b.verifyPositive(i2, "prefetch");
        return io.reactivex.g.a.onAssembly(new h(bVar, i, i2));
    }

    public final <R> R as(b<T, R> bVar) {
        return ((b) io.reactivex.internal.a.b.requireNonNull(bVar, "converter is null")).apply(this);
    }

    public final <R> a<R> map(io.reactivex.e.h<? super T, ? extends R> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper");
        return io.reactivex.g.a.onAssembly(new io.reactivex.internal.operators.d.j(this, hVar));
    }

    public final <R> a<R> map(io.reactivex.e.h<? super T, ? extends R> hVar, ParallelFailureHandling parallelFailureHandling) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper");
        io.reactivex.internal.a.b.requireNonNull(parallelFailureHandling, "errorHandler is null");
        return io.reactivex.g.a.onAssembly(new k(this, hVar, parallelFailureHandling));
    }

    public final <R> a<R> map(io.reactivex.e.h<? super T, ? extends R> hVar, io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper");
        io.reactivex.internal.a.b.requireNonNull(cVar, "errorHandler is null");
        return io.reactivex.g.a.onAssembly(new k(this, hVar, cVar));
    }

    public final a<T> filter(q<? super T> qVar) {
        io.reactivex.internal.a.b.requireNonNull(qVar, "predicate");
        return io.reactivex.g.a.onAssembly(new d(this, qVar));
    }

    public final a<T> filter(q<? super T> qVar, ParallelFailureHandling parallelFailureHandling) {
        io.reactivex.internal.a.b.requireNonNull(qVar, "predicate");
        io.reactivex.internal.a.b.requireNonNull(parallelFailureHandling, "errorHandler is null");
        return io.reactivex.g.a.onAssembly(new e(this, qVar, parallelFailureHandling));
    }

    public final a<T> filter(q<? super T> qVar, io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        io.reactivex.internal.a.b.requireNonNull(qVar, "predicate");
        io.reactivex.internal.a.b.requireNonNull(cVar, "errorHandler is null");
        return io.reactivex.g.a.onAssembly(new e(this, qVar, cVar));
    }

    public final a<T> runOn(ah ahVar) {
        return runOn(ahVar, j.bufferSize());
    }

    public final a<T> runOn(ah ahVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler");
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        return io.reactivex.g.a.onAssembly(new o(this, ahVar, i));
    }

    public final j<T> reduce(io.reactivex.e.c<T, T, T> cVar) {
        io.reactivex.internal.a.b.requireNonNull(cVar, "reducer");
        return io.reactivex.g.a.onAssembly(new n(this, cVar));
    }

    public final <R> a<R> reduce(Callable<R> callable, io.reactivex.e.c<R, ? super T, R> cVar) {
        io.reactivex.internal.a.b.requireNonNull(callable, "initialSupplier");
        io.reactivex.internal.a.b.requireNonNull(cVar, "reducer");
        return io.reactivex.g.a.onAssembly(new m(this, callable, cVar));
    }

    public final j<T> sequential() {
        return sequential(j.bufferSize());
    }

    public final j<T> sequential(int i) {
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        return io.reactivex.g.a.onAssembly(new i(this, i, false));
    }

    public final j<T> sequentialDelayError() {
        return sequentialDelayError(j.bufferSize());
    }

    public final j<T> sequentialDelayError(int i) {
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        return io.reactivex.g.a.onAssembly(new i(this, i, true));
    }

    public final j<T> sorted(Comparator<? super T> comparator) {
        return sorted(comparator, 16);
    }

    public final j<T> sorted(Comparator<? super T> comparator, int i) {
        io.reactivex.internal.a.b.requireNonNull(comparator, "comparator is null");
        io.reactivex.internal.a.b.verifyPositive(i, "capacityHint");
        return io.reactivex.g.a.onAssembly(new p(reduce(io.reactivex.internal.a.a.createArrayList((i / parallelism()) + 1), ListAddBiConsumer.instance()).map(new io.reactivex.internal.util.p(comparator)), comparator));
    }

    public final j<List<T>> toSortedList(Comparator<? super T> comparator) {
        return toSortedList(comparator, 16);
    }

    public final j<List<T>> toSortedList(Comparator<? super T> comparator, int i) {
        io.reactivex.internal.a.b.requireNonNull(comparator, "comparator is null");
        io.reactivex.internal.a.b.verifyPositive(i, "capacityHint");
        return io.reactivex.g.a.onAssembly(reduce(io.reactivex.internal.a.a.createArrayList((i / parallelism()) + 1), ListAddBiConsumer.instance()).map(new io.reactivex.internal.util.p(comparator)).reduce(new io.reactivex.internal.util.j(comparator)));
    }

    public final a<T> doOnNext(g<? super T> gVar) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "onNext is null");
        g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        g emptyConsumer2 = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar = io.reactivex.internal.a.a.EMPTY_ACTION;
        l lVar = new l(this, gVar, emptyConsumer, emptyConsumer2, aVar, aVar, io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.EMPTY_LONG_CONSUMER, io.reactivex.internal.a.a.EMPTY_ACTION);
        return io.reactivex.g.a.onAssembly(lVar);
    }

    public final a<T> doOnNext(g<? super T> gVar, ParallelFailureHandling parallelFailureHandling) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "onNext is null");
        io.reactivex.internal.a.b.requireNonNull(parallelFailureHandling, "errorHandler is null");
        return io.reactivex.g.a.onAssembly(new io.reactivex.internal.operators.d.c(this, gVar, parallelFailureHandling));
    }

    public final a<T> doOnNext(g<? super T> gVar, io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "onNext is null");
        io.reactivex.internal.a.b.requireNonNull(cVar, "errorHandler is null");
        return io.reactivex.g.a.onAssembly(new io.reactivex.internal.operators.d.c(this, gVar, cVar));
    }

    public final a<T> doAfterNext(g<? super T> gVar) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "onAfterNext is null");
        g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        g emptyConsumer2 = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar = io.reactivex.internal.a.a.EMPTY_ACTION;
        l lVar = new l(this, emptyConsumer, gVar, emptyConsumer2, aVar, aVar, io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.EMPTY_LONG_CONSUMER, io.reactivex.internal.a.a.EMPTY_ACTION);
        return io.reactivex.g.a.onAssembly(lVar);
    }

    public final a<T> doOnError(g<Throwable> gVar) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "onError is null");
        g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        g emptyConsumer2 = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar = io.reactivex.internal.a.a.EMPTY_ACTION;
        l lVar = new l(this, emptyConsumer, emptyConsumer2, gVar, aVar, aVar, io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.EMPTY_LONG_CONSUMER, io.reactivex.internal.a.a.EMPTY_ACTION);
        return io.reactivex.g.a.onAssembly(lVar);
    }

    public final a<T> doOnComplete(io.reactivex.e.a aVar) {
        io.reactivex.internal.a.b.requireNonNull(aVar, "onComplete is null");
        l lVar = new l(this, io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.emptyConsumer(), aVar, io.reactivex.internal.a.a.EMPTY_ACTION, io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.EMPTY_LONG_CONSUMER, io.reactivex.internal.a.a.EMPTY_ACTION);
        return io.reactivex.g.a.onAssembly(lVar);
    }

    public final a<T> doAfterTerminated(io.reactivex.e.a aVar) {
        io.reactivex.internal.a.b.requireNonNull(aVar, "onAfterTerminate is null");
        l lVar = new l(this, io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.EMPTY_ACTION, aVar, io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.EMPTY_LONG_CONSUMER, io.reactivex.internal.a.a.EMPTY_ACTION);
        return io.reactivex.g.a.onAssembly(lVar);
    }

    public final a<T> doOnSubscribe(g<? super org.b.d> gVar) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "onSubscribe is null");
        g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        g emptyConsumer2 = io.reactivex.internal.a.a.emptyConsumer();
        g emptyConsumer3 = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar = io.reactivex.internal.a.a.EMPTY_ACTION;
        l lVar = new l(this, emptyConsumer, emptyConsumer2, emptyConsumer3, aVar, aVar, gVar, io.reactivex.internal.a.a.EMPTY_LONG_CONSUMER, io.reactivex.internal.a.a.EMPTY_ACTION);
        return io.reactivex.g.a.onAssembly(lVar);
    }

    public final a<T> doOnRequest(io.reactivex.e.p pVar) {
        io.reactivex.internal.a.b.requireNonNull(pVar, "onRequest is null");
        g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        g emptyConsumer2 = io.reactivex.internal.a.a.emptyConsumer();
        g emptyConsumer3 = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar = io.reactivex.internal.a.a.EMPTY_ACTION;
        l lVar = new l(this, emptyConsumer, emptyConsumer2, emptyConsumer3, aVar, aVar, io.reactivex.internal.a.a.emptyConsumer(), pVar, io.reactivex.internal.a.a.EMPTY_ACTION);
        return io.reactivex.g.a.onAssembly(lVar);
    }

    public final a<T> doOnCancel(io.reactivex.e.a aVar) {
        io.reactivex.internal.a.b.requireNonNull(aVar, "onCancel is null");
        g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        g emptyConsumer2 = io.reactivex.internal.a.a.emptyConsumer();
        g emptyConsumer3 = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar2 = io.reactivex.internal.a.a.EMPTY_ACTION;
        l lVar = new l(this, emptyConsumer, emptyConsumer2, emptyConsumer3, aVar2, aVar2, io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.EMPTY_LONG_CONSUMER, aVar);
        return io.reactivex.g.a.onAssembly(lVar);
    }

    public final <C> a<C> collect(Callable<? extends C> callable, io.reactivex.e.b<? super C, ? super T> bVar) {
        io.reactivex.internal.a.b.requireNonNull(callable, "collectionSupplier is null");
        io.reactivex.internal.a.b.requireNonNull(bVar, "collector is null");
        return io.reactivex.g.a.onAssembly(new io.reactivex.internal.operators.d.a(this, callable, bVar));
    }

    public static <T> a<T> fromArray(b<T>... bVarArr) {
        if (bVarArr.length != 0) {
            return io.reactivex.g.a.onAssembly(new io.reactivex.internal.operators.d.g(bVarArr));
        }
        throw new IllegalArgumentException("Zero publishers not supported");
    }

    public final <U> U to(io.reactivex.e.h<? super a<T>, U> hVar) {
        try {
            return ((io.reactivex.e.h) io.reactivex.internal.a.b.requireNonNull(hVar, "converter is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            throw io.reactivex.internal.util.h.wrapOrThrow(th);
        }
    }

    public final <U> a<U> compose(c<T, U> cVar) {
        return io.reactivex.g.a.onAssembly(((c) io.reactivex.internal.a.b.requireNonNull(cVar, "composer is null")).apply(this));
    }

    public final <R> a<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar) {
        return flatMap(hVar, false, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, j.bufferSize());
    }

    public final <R> a<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, boolean z) {
        return flatMap(hVar, z, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, j.bufferSize());
    }

    public final <R> a<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, boolean z, int i) {
        return flatMap(hVar, z, i, j.bufferSize());
    }

    public final <R> a<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, boolean z, int i, int i2) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "maxConcurrency");
        io.reactivex.internal.a.b.verifyPositive(i2, "prefetch");
        f fVar = new f(this, hVar, z, i, i2);
        return io.reactivex.g.a.onAssembly(fVar);
    }

    public final <R> a<R> concatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar) {
        return concatMap(hVar, 2);
    }

    public final <R> a<R> concatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        return io.reactivex.g.a.onAssembly(new io.reactivex.internal.operators.d.b(this, hVar, i, ErrorMode.IMMEDIATE));
    }

    public final <R> a<R> concatMapDelayError(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, boolean z) {
        return concatMapDelayError(hVar, 2, z);
    }

    public final <R> a<R> concatMapDelayError(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, int i, boolean z) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        return io.reactivex.g.a.onAssembly(new io.reactivex.internal.operators.d.b(this, hVar, i, z ? ErrorMode.END : ErrorMode.BOUNDARY));
    }
}
