package io.reactivex;

import androidx.appcompat.widget.ActivityChooserView;
import io.reactivex.internal.a.b;
import io.reactivex.internal.operators.a.aa;
import io.reactivex.internal.operators.a.ab;
import io.reactivex.internal.operators.a.ac;
import io.reactivex.internal.operators.a.ad;
import io.reactivex.internal.operators.a.ae;
import io.reactivex.internal.operators.a.af;
import io.reactivex.internal.operators.a.ag;
import io.reactivex.internal.operators.a.ah;
import io.reactivex.internal.operators.a.ai;
import io.reactivex.internal.operators.a.aj;
import io.reactivex.internal.operators.a.ak;
import io.reactivex.internal.operators.a.al;
import io.reactivex.internal.operators.a.am;
import io.reactivex.internal.operators.a.an;
import io.reactivex.internal.operators.a.ao;
import io.reactivex.internal.operators.a.ap;
import io.reactivex.internal.operators.a.ar;
import io.reactivex.internal.operators.a.c;
import io.reactivex.internal.operators.a.d;
import io.reactivex.internal.operators.a.e;
import io.reactivex.internal.operators.a.f;
import io.reactivex.internal.operators.a.g;
import io.reactivex.internal.operators.a.h;
import io.reactivex.internal.operators.a.i;
import io.reactivex.internal.operators.a.j;
import io.reactivex.internal.operators.a.k;
import io.reactivex.internal.operators.a.l;
import io.reactivex.internal.operators.a.m;
import io.reactivex.internal.operators.a.n;
import io.reactivex.internal.operators.a.o;
import io.reactivex.internal.operators.a.p;
import io.reactivex.internal.operators.a.q;
import io.reactivex.internal.operators.a.r;
import io.reactivex.internal.operators.a.s;
import io.reactivex.internal.operators.a.t;
import io.reactivex.internal.operators.a.u;
import io.reactivex.internal.operators.a.v;
import io.reactivex.internal.operators.a.w;
import io.reactivex.internal.operators.a.x;
import io.reactivex.internal.operators.a.y;
import io.reactivex.internal.operators.a.z;
import io.reactivex.internal.operators.maybe.aq;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public abstract class a implements g {
    /* access modifiers changed from: protected */
    public abstract void subscribeActual(d dVar);

    public static a ambArray(g... gVarArr) {
        b.requireNonNull(gVarArr, "sources is null");
        if (gVarArr.length == 0) {
            return complete();
        }
        if (gVarArr.length == 1) {
            return wrap(gVarArr[0]);
        }
        return io.reactivex.g.a.onAssembly((a) new io.reactivex.internal.operators.a.a(gVarArr, null));
    }

    public static a amb(Iterable<? extends g> iterable) {
        b.requireNonNull(iterable, "sources is null");
        return io.reactivex.g.a.onAssembly((a) new io.reactivex.internal.operators.a.a(null, iterable));
    }

    public static a complete() {
        return io.reactivex.g.a.onAssembly(n.INSTANCE);
    }

    public static a concatArray(g... gVarArr) {
        b.requireNonNull(gVarArr, "sources is null");
        if (gVarArr.length == 0) {
            return complete();
        }
        if (gVarArr.length == 1) {
            return wrap(gVarArr[0]);
        }
        return io.reactivex.g.a.onAssembly((a) new e(gVarArr));
    }

    public static a concat(Iterable<? extends g> iterable) {
        b.requireNonNull(iterable, "sources is null");
        return io.reactivex.g.a.onAssembly((a) new f(iterable));
    }

    public static a concat(org.b.b<? extends g> bVar) {
        return concat(bVar, 2);
    }

    public static a concat(org.b.b<? extends g> bVar, int i) {
        b.requireNonNull(bVar, "sources is null");
        b.verifyPositive(i, "prefetch");
        return io.reactivex.g.a.onAssembly((a) new d(bVar, i));
    }

    public static a create(e eVar) {
        b.requireNonNull(eVar, "source is null");
        return io.reactivex.g.a.onAssembly((a) new g(eVar));
    }

    public static a unsafeCreate(g gVar) {
        b.requireNonNull(gVar, "source is null");
        if (!(gVar instanceof a)) {
            return io.reactivex.g.a.onAssembly((a) new w(gVar));
        }
        throw new IllegalArgumentException("Use of unsafeCreate(Completable)!");
    }

    public static a defer(Callable<? extends g> callable) {
        b.requireNonNull(callable, "completableSupplier");
        return io.reactivex.g.a.onAssembly((a) new h(callable));
    }

    public static a error(Callable<? extends Throwable> callable) {
        b.requireNonNull(callable, "errorSupplier is null");
        return io.reactivex.g.a.onAssembly((a) new p(callable));
    }

    public static a error(Throwable th) {
        b.requireNonNull(th, "error is null");
        return io.reactivex.g.a.onAssembly((a) new o(th));
    }

    public static a fromAction(io.reactivex.e.a aVar) {
        b.requireNonNull(aVar, "run is null");
        return io.reactivex.g.a.onAssembly((a) new q(aVar));
    }

    public static a fromCallable(Callable<?> callable) {
        b.requireNonNull(callable, "callable is null");
        return io.reactivex.g.a.onAssembly((a) new r(callable));
    }

    public static a fromFuture(Future<?> future) {
        b.requireNonNull(future, "future is null");
        return fromAction(io.reactivex.internal.a.a.futureAction(future));
    }

    public static <T> a fromMaybe(w<T> wVar) {
        b.requireNonNull(wVar, "maybe is null");
        return io.reactivex.g.a.onAssembly((a) new aq(wVar));
    }

    public static a fromRunnable(Runnable runnable) {
        b.requireNonNull(runnable, "run is null");
        return io.reactivex.g.a.onAssembly((a) new u(runnable));
    }

    public static <T> a fromObservable(ae<T> aeVar) {
        b.requireNonNull(aeVar, "observable is null");
        return io.reactivex.g.a.onAssembly((a) new s(aeVar));
    }

    public static <T> a fromPublisher(org.b.b<T> bVar) {
        b.requireNonNull(bVar, "publisher is null");
        return io.reactivex.g.a.onAssembly((a) new t(bVar));
    }

    public static <T> a fromSingle(ao<T> aoVar) {
        b.requireNonNull(aoVar, "single is null");
        return io.reactivex.g.a.onAssembly((a) new v(aoVar));
    }

    public static a mergeArray(g... gVarArr) {
        b.requireNonNull(gVarArr, "sources is null");
        if (gVarArr.length == 0) {
            return complete();
        }
        if (gVarArr.length == 1) {
            return wrap(gVarArr[0]);
        }
        return io.reactivex.g.a.onAssembly((a) new ab(gVarArr));
    }

    public static a merge(Iterable<? extends g> iterable) {
        b.requireNonNull(iterable, "sources is null");
        return io.reactivex.g.a.onAssembly((a) new ae(iterable));
    }

    public static a merge(org.b.b<? extends g> bVar) {
        return a(bVar, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, false);
    }

    public static a merge(org.b.b<? extends g> bVar, int i) {
        return a(bVar, i, false);
    }

    private static a a(org.b.b<? extends g> bVar, int i, boolean z) {
        b.requireNonNull(bVar, "sources is null");
        b.verifyPositive(i, "maxConcurrency");
        return io.reactivex.g.a.onAssembly((a) new aa(bVar, i, z));
    }

    public static a mergeArrayDelayError(g... gVarArr) {
        b.requireNonNull(gVarArr, "sources is null");
        return io.reactivex.g.a.onAssembly((a) new ac(gVarArr));
    }

    public static a mergeDelayError(Iterable<? extends g> iterable) {
        b.requireNonNull(iterable, "sources is null");
        return io.reactivex.g.a.onAssembly((a) new ad(iterable));
    }

    public static a mergeDelayError(org.b.b<? extends g> bVar) {
        return a(bVar, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, true);
    }

    public static a mergeDelayError(org.b.b<? extends g> bVar, int i) {
        return a(bVar, i, true);
    }

    public static a never() {
        return io.reactivex.g.a.onAssembly(af.INSTANCE);
    }

    public static a timer(long j, TimeUnit timeUnit) {
        return timer(j, timeUnit, io.reactivex.i.a.computation());
    }

    public static a timer(long j, TimeUnit timeUnit, ah ahVar) {
        b.requireNonNull(timeUnit, "unit is null");
        b.requireNonNull(ahVar, "scheduler is null");
        return io.reactivex.g.a.onAssembly((a) new an(j, timeUnit, ahVar));
    }

    public static <R> a using(Callable<R> callable, io.reactivex.e.h<? super R, ? extends g> hVar, io.reactivex.e.g<? super R> gVar) {
        return using(callable, hVar, gVar, true);
    }

    public static <R> a using(Callable<R> callable, io.reactivex.e.h<? super R, ? extends g> hVar, io.reactivex.e.g<? super R> gVar, boolean z) {
        b.requireNonNull(callable, "resourceSupplier is null");
        b.requireNonNull(hVar, "completableFunction is null");
        b.requireNonNull(gVar, "disposer is null");
        return io.reactivex.g.a.onAssembly((a) new ar(callable, hVar, gVar, z));
    }

    public static a wrap(g gVar) {
        b.requireNonNull(gVar, "source is null");
        if (gVar instanceof a) {
            return io.reactivex.g.a.onAssembly((a) gVar);
        }
        return io.reactivex.g.a.onAssembly((a) new w(gVar));
    }

    public final a ambWith(g gVar) {
        b.requireNonNull(gVar, "other is null");
        return ambArray(this, gVar);
    }

    public final <T> z<T> andThen(ae<T> aeVar) {
        b.requireNonNull(aeVar, "next is null");
        return io.reactivex.g.a.onAssembly(new io.reactivex.internal.operators.b.a(this, aeVar));
    }

    public final <T> j<T> andThen(org.b.b<T> bVar) {
        b.requireNonNull(bVar, "next is null");
        return io.reactivex.g.a.onAssembly(new io.reactivex.internal.operators.b.b(this, bVar));
    }

    public final <T> ai<T> andThen(ao<T> aoVar) {
        b.requireNonNull(aoVar, "next is null");
        return io.reactivex.g.a.onAssembly(new io.reactivex.internal.operators.e.g(aoVar, this));
    }

    public final <T> q<T> andThen(w<T> wVar) {
        b.requireNonNull(wVar, "next is null");
        return io.reactivex.g.a.onAssembly(new io.reactivex.internal.operators.maybe.o(wVar, this));
    }

    public final a andThen(g gVar) {
        b.requireNonNull(gVar, "next is null");
        return io.reactivex.g.a.onAssembly((a) new io.reactivex.internal.operators.a.b(this, gVar));
    }

    public final <R> R as(b<? extends R> bVar) {
        return ((b) b.requireNonNull(bVar, "converter is null")).apply(this);
    }

    public final void blockingAwait() {
        io.reactivex.internal.c.h hVar = new io.reactivex.internal.c.h();
        subscribe((d) hVar);
        hVar.blockingGet();
    }

    public final boolean blockingAwait(long j, TimeUnit timeUnit) {
        b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.c.h hVar = new io.reactivex.internal.c.h();
        subscribe((d) hVar);
        return hVar.blockingAwait(j, timeUnit);
    }

    public final Throwable blockingGet() {
        io.reactivex.internal.c.h hVar = new io.reactivex.internal.c.h();
        subscribe((d) hVar);
        return hVar.blockingGetError();
    }

    public final Throwable blockingGet(long j, TimeUnit timeUnit) {
        b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.c.h hVar = new io.reactivex.internal.c.h();
        subscribe((d) hVar);
        return hVar.blockingGetError(j, timeUnit);
    }

    public final a cache() {
        return io.reactivex.g.a.onAssembly((a) new c(this));
    }

    public final a compose(h hVar) {
        return wrap(((h) b.requireNonNull(hVar, "transformer is null")).apply(this));
    }

    public final a concatWith(g gVar) {
        b.requireNonNull(gVar, "other is null");
        return io.reactivex.g.a.onAssembly((a) new io.reactivex.internal.operators.a.b(this, gVar));
    }

    public final a delay(long j, TimeUnit timeUnit) {
        return delay(j, timeUnit, io.reactivex.i.a.computation(), false);
    }

    public final a delay(long j, TimeUnit timeUnit, ah ahVar) {
        return delay(j, timeUnit, ahVar, false);
    }

    public final a delay(long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        b.requireNonNull(timeUnit, "unit is null");
        b.requireNonNull(ahVar, "scheduler is null");
        i iVar = new i(this, j, timeUnit, ahVar, z);
        return io.reactivex.g.a.onAssembly((a) iVar);
    }

    public final a delaySubscription(long j, TimeUnit timeUnit) {
        return delaySubscription(j, timeUnit, io.reactivex.i.a.computation());
    }

    public final a delaySubscription(long j, TimeUnit timeUnit, ah ahVar) {
        return timer(j, timeUnit, ahVar).andThen((g) this);
    }

    public final a doOnComplete(io.reactivex.e.a aVar) {
        io.reactivex.e.g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.g emptyConsumer2 = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar2 = io.reactivex.internal.a.a.EMPTY_ACTION;
        return a(emptyConsumer, emptyConsumer2, aVar, aVar2, aVar2, io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    public final a doOnDispose(io.reactivex.e.a aVar) {
        io.reactivex.e.g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.g emptyConsumer2 = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar2 = io.reactivex.internal.a.a.EMPTY_ACTION;
        return a(emptyConsumer, emptyConsumer2, aVar2, aVar2, io.reactivex.internal.a.a.EMPTY_ACTION, aVar);
    }

    public final a doOnError(io.reactivex.e.g<? super Throwable> gVar) {
        io.reactivex.e.g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar = io.reactivex.internal.a.a.EMPTY_ACTION;
        io.reactivex.e.a aVar2 = io.reactivex.internal.a.a.EMPTY_ACTION;
        return a(emptyConsumer, gVar, aVar, aVar, aVar2, aVar2);
    }

    public final a doOnEvent(io.reactivex.e.g<? super Throwable> gVar) {
        b.requireNonNull(gVar, "onEvent is null");
        return io.reactivex.g.a.onAssembly((a) new m(this, gVar));
    }

    private a a(io.reactivex.e.g<? super io.reactivex.b.c> gVar, io.reactivex.e.g<? super Throwable> gVar2, io.reactivex.e.a aVar, io.reactivex.e.a aVar2, io.reactivex.e.a aVar3, io.reactivex.e.a aVar4) {
        b.requireNonNull(gVar, "onSubscribe is null");
        b.requireNonNull(gVar2, "onError is null");
        b.requireNonNull(aVar, "onComplete is null");
        b.requireNonNull(aVar2, "onTerminate is null");
        b.requireNonNull(aVar3, "onAfterTerminate is null");
        b.requireNonNull(aVar4, "onDispose is null");
        ai aiVar = new ai(this, gVar, gVar2, aVar, aVar2, aVar3, aVar4);
        return io.reactivex.g.a.onAssembly((a) aiVar);
    }

    public final a doOnSubscribe(io.reactivex.e.g<? super io.reactivex.b.c> gVar) {
        io.reactivex.e.g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar = io.reactivex.internal.a.a.EMPTY_ACTION;
        io.reactivex.e.a aVar2 = io.reactivex.internal.a.a.EMPTY_ACTION;
        return a(gVar, emptyConsumer, aVar, aVar, aVar2, aVar2);
    }

    public final a doOnTerminate(io.reactivex.e.a aVar) {
        io.reactivex.e.g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.g emptyConsumer2 = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar2 = io.reactivex.internal.a.a.EMPTY_ACTION;
        io.reactivex.e.a aVar3 = io.reactivex.internal.a.a.EMPTY_ACTION;
        return a(emptyConsumer, emptyConsumer2, aVar2, aVar, aVar3, aVar3);
    }

    public final a doAfterTerminate(io.reactivex.e.a aVar) {
        io.reactivex.e.g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.g emptyConsumer2 = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar2 = io.reactivex.internal.a.a.EMPTY_ACTION;
        return a(emptyConsumer, emptyConsumer2, aVar2, aVar2, aVar, io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    public final a doFinally(io.reactivex.e.a aVar) {
        b.requireNonNull(aVar, "onFinally is null");
        return io.reactivex.g.a.onAssembly((a) new l(this, aVar));
    }

    public final a lift(f fVar) {
        b.requireNonNull(fVar, "onLift is null");
        return io.reactivex.g.a.onAssembly((a) new y(this, fVar));
    }

    public final <T> ai<y<T>> materialize() {
        return io.reactivex.g.a.onAssembly(new z(this));
    }

    public final a mergeWith(g gVar) {
        b.requireNonNull(gVar, "other is null");
        return mergeArray(this, gVar);
    }

    public final a observeOn(ah ahVar) {
        b.requireNonNull(ahVar, "scheduler is null");
        return io.reactivex.g.a.onAssembly((a) new ag(this, ahVar));
    }

    public final a onErrorComplete() {
        return onErrorComplete(io.reactivex.internal.a.a.alwaysTrue());
    }

    public final a onErrorComplete(io.reactivex.e.q<? super Throwable> qVar) {
        b.requireNonNull(qVar, "predicate is null");
        return io.reactivex.g.a.onAssembly((a) new ah(this, qVar));
    }

    public final a onErrorResumeNext(io.reactivex.e.h<? super Throwable, ? extends g> hVar) {
        b.requireNonNull(hVar, "errorMapper is null");
        return io.reactivex.g.a.onAssembly((a) new aj(this, hVar));
    }

    public final a onTerminateDetach() {
        return io.reactivex.g.a.onAssembly((a) new j(this));
    }

    public final a repeat() {
        return fromPublisher(toFlowable().repeat());
    }

    public final a repeat(long j) {
        return fromPublisher(toFlowable().repeat(j));
    }

    public final a repeatUntil(io.reactivex.e.e eVar) {
        return fromPublisher(toFlowable().repeatUntil(eVar));
    }

    public final a repeatWhen(io.reactivex.e.h<? super j<Object>, ? extends org.b.b<?>> hVar) {
        return fromPublisher(toFlowable().repeatWhen(hVar));
    }

    public final a retry() {
        return fromPublisher(toFlowable().retry());
    }

    public final a retry(io.reactivex.e.d<? super Integer, ? super Throwable> dVar) {
        return fromPublisher(toFlowable().retry(dVar));
    }

    public final a retry(long j) {
        return fromPublisher(toFlowable().retry(j));
    }

    public final a retry(long j, io.reactivex.e.q<? super Throwable> qVar) {
        return fromPublisher(toFlowable().retry(j, qVar));
    }

    public final a retry(io.reactivex.e.q<? super Throwable> qVar) {
        return fromPublisher(toFlowable().retry(qVar));
    }

    public final a retryWhen(io.reactivex.e.h<? super j<Throwable>, ? extends org.b.b<?>> hVar) {
        return fromPublisher(toFlowable().retryWhen(hVar));
    }

    public final a startWith(g gVar) {
        b.requireNonNull(gVar, "other is null");
        return concatArray(gVar, this);
    }

    public final <T> z<T> startWith(z<T> zVar) {
        b.requireNonNull(zVar, "other is null");
        return zVar.concatWith((ae<? extends T>) toObservable());
    }

    public final <T> j<T> startWith(org.b.b<T> bVar) {
        b.requireNonNull(bVar, "other is null");
        return toFlowable().startWith(bVar);
    }

    public final a hide() {
        return io.reactivex.g.a.onAssembly((a) new x(this));
    }

    public final io.reactivex.b.c subscribe() {
        io.reactivex.internal.c.n nVar = new io.reactivex.internal.c.n();
        subscribe((d) nVar);
        return nVar;
    }

    public final void subscribe(d dVar) {
        b.requireNonNull(dVar, "observer is null");
        try {
            d onSubscribe = io.reactivex.g.a.onSubscribe(this, dVar);
            b.requireNonNull(onSubscribe, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            subscribeActual(onSubscribe);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            io.reactivex.g.a.onError(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final <E extends d> E subscribeWith(E e) {
        subscribe((d) e);
        return e;
    }

    public final io.reactivex.b.c subscribe(io.reactivex.e.a aVar, io.reactivex.e.g<? super Throwable> gVar) {
        b.requireNonNull(gVar, "onError is null");
        b.requireNonNull(aVar, "onComplete is null");
        io.reactivex.internal.c.j jVar = new io.reactivex.internal.c.j(gVar, aVar);
        subscribe((d) jVar);
        return jVar;
    }

    public final io.reactivex.b.c subscribe(io.reactivex.e.a aVar) {
        b.requireNonNull(aVar, "onComplete is null");
        io.reactivex.internal.c.j jVar = new io.reactivex.internal.c.j(aVar);
        subscribe((d) jVar);
        return jVar;
    }

    public final a subscribeOn(ah ahVar) {
        b.requireNonNull(ahVar, "scheduler is null");
        return io.reactivex.g.a.onAssembly((a) new ak(this, ahVar));
    }

    public final a takeUntil(g gVar) {
        b.requireNonNull(gVar, "other is null");
        return io.reactivex.g.a.onAssembly((a) new al(this, gVar));
    }

    public final a timeout(long j, TimeUnit timeUnit) {
        return a(j, timeUnit, io.reactivex.i.a.computation(), null);
    }

    public final a timeout(long j, TimeUnit timeUnit, g gVar) {
        b.requireNonNull(gVar, "other is null");
        return a(j, timeUnit, io.reactivex.i.a.computation(), gVar);
    }

    public final a timeout(long j, TimeUnit timeUnit, ah ahVar) {
        return a(j, timeUnit, ahVar, null);
    }

    public final a timeout(long j, TimeUnit timeUnit, ah ahVar, g gVar) {
        b.requireNonNull(gVar, "other is null");
        return a(j, timeUnit, ahVar, gVar);
    }

    private a a(long j, TimeUnit timeUnit, ah ahVar, g gVar) {
        b.requireNonNull(timeUnit, "unit is null");
        b.requireNonNull(ahVar, "scheduler is null");
        am amVar = new am(this, j, timeUnit, ahVar, gVar);
        return io.reactivex.g.a.onAssembly((a) amVar);
    }

    public final <U> U to(io.reactivex.e.h<? super a, U> hVar) {
        try {
            return ((io.reactivex.e.h) b.requireNonNull(hVar, "converter is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            throw io.reactivex.internal.util.h.wrapOrThrow(th);
        }
    }

    public final <T> j<T> toFlowable() {
        if (this instanceof io.reactivex.internal.b.b) {
            return ((io.reactivex.internal.b.b) this).fuseToFlowable();
        }
        return io.reactivex.g.a.onAssembly(new ao(this));
    }

    public final <T> q<T> toMaybe() {
        if (this instanceof io.reactivex.internal.b.c) {
            return ((io.reactivex.internal.b.c) this).fuseToMaybe();
        }
        return io.reactivex.g.a.onAssembly(new io.reactivex.internal.operators.maybe.ak(this));
    }

    public final <T> z<T> toObservable() {
        if (this instanceof io.reactivex.internal.b.d) {
            return ((io.reactivex.internal.b.d) this).fuseToObservable();
        }
        return io.reactivex.g.a.onAssembly(new ap(this));
    }

    public final <T> ai<T> toSingle(Callable<? extends T> callable) {
        b.requireNonNull(callable, "completionValueSupplier is null");
        return io.reactivex.g.a.onAssembly(new io.reactivex.internal.operators.a.aq(this, callable, null));
    }

    public final <T> ai<T> toSingleDefault(T t) {
        b.requireNonNull(t, "completionValue is null");
        return io.reactivex.g.a.onAssembly(new io.reactivex.internal.operators.a.aq(this, null, t));
    }

    public final a unsubscribeOn(ah ahVar) {
        b.requireNonNull(ahVar, "scheduler is null");
        return io.reactivex.g.a.onAssembly((a) new k(this, ahVar));
    }

    public final io.reactivex.observers.e<Void> test() {
        io.reactivex.observers.e<Void> eVar = new io.reactivex.observers.e<>();
        subscribe((d) eVar);
        return eVar;
    }

    public final io.reactivex.observers.e<Void> test(boolean z) {
        io.reactivex.observers.e<Void> eVar = new io.reactivex.observers.e<>();
        if (z) {
            eVar.cancel();
        }
        subscribe((d) eVar);
        return eVar;
    }
}
