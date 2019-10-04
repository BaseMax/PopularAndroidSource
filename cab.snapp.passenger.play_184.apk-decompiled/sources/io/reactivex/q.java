package io.reactivex;

import androidx.appcompat.widget.ActivityChooserView;
import io.reactivex.e.c;
import io.reactivex.e.d;
import io.reactivex.e.h;
import io.reactivex.e.i;
import io.reactivex.e.l;
import io.reactivex.e.m;
import io.reactivex.e.n;
import io.reactivex.e.o;
import io.reactivex.g.a;
import io.reactivex.internal.a.b;
import io.reactivex.internal.operators.flowable.bd;
import io.reactivex.internal.operators.flowable.z;
import io.reactivex.internal.operators.maybe.MaybeToPublisher;
import io.reactivex.internal.operators.maybe.aa;
import io.reactivex.internal.operators.maybe.ab;
import io.reactivex.internal.operators.maybe.ac;
import io.reactivex.internal.operators.maybe.ad;
import io.reactivex.internal.operators.maybe.ae;
import io.reactivex.internal.operators.maybe.af;
import io.reactivex.internal.operators.maybe.ag;
import io.reactivex.internal.operators.maybe.ah;
import io.reactivex.internal.operators.maybe.ai;
import io.reactivex.internal.operators.maybe.aj;
import io.reactivex.internal.operators.maybe.ak;
import io.reactivex.internal.operators.maybe.al;
import io.reactivex.internal.operators.maybe.am;
import io.reactivex.internal.operators.maybe.an;
import io.reactivex.internal.operators.maybe.ao;
import io.reactivex.internal.operators.maybe.aq;
import io.reactivex.internal.operators.maybe.as;
import io.reactivex.internal.operators.maybe.at;
import io.reactivex.internal.operators.maybe.au;
import io.reactivex.internal.operators.maybe.av;
import io.reactivex.internal.operators.maybe.aw;
import io.reactivex.internal.operators.maybe.ax;
import io.reactivex.internal.operators.maybe.ay;
import io.reactivex.internal.operators.maybe.az;
import io.reactivex.internal.operators.maybe.ba;
import io.reactivex.internal.operators.maybe.bb;
import io.reactivex.internal.operators.maybe.bc;
import io.reactivex.internal.operators.maybe.be;
import io.reactivex.internal.operators.maybe.bf;
import io.reactivex.internal.operators.maybe.bg;
import io.reactivex.internal.operators.maybe.bh;
import io.reactivex.internal.operators.maybe.bi;
import io.reactivex.internal.operators.maybe.bj;
import io.reactivex.internal.operators.maybe.bk;
import io.reactivex.internal.operators.maybe.bl;
import io.reactivex.internal.operators.maybe.bm;
import io.reactivex.internal.operators.maybe.bn;
import io.reactivex.internal.operators.maybe.bo;
import io.reactivex.internal.operators.maybe.bp;
import io.reactivex.internal.operators.maybe.bq;
import io.reactivex.internal.operators.maybe.br;
import io.reactivex.internal.operators.maybe.bs;
import io.reactivex.internal.operators.maybe.bt;
import io.reactivex.internal.operators.maybe.e;
import io.reactivex.internal.operators.maybe.f;
import io.reactivex.internal.operators.maybe.g;
import io.reactivex.internal.operators.maybe.j;
import io.reactivex.internal.operators.maybe.k;
import io.reactivex.internal.operators.maybe.p;
import io.reactivex.internal.operators.maybe.r;
import io.reactivex.internal.operators.maybe.s;
import io.reactivex.internal.operators.maybe.t;
import io.reactivex.internal.operators.maybe.u;
import io.reactivex.internal.operators.maybe.v;
import io.reactivex.internal.operators.maybe.w;
import io.reactivex.internal.operators.maybe.x;
import io.reactivex.internal.operators.maybe.y;
import io.reactivex.internal.util.ErrorMode;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public abstract class q<T> implements w<T> {
    /* access modifiers changed from: protected */
    public abstract void subscribeActual(t<? super T> tVar);

    public static <T> q<T> amb(Iterable<? extends w<? extends T>> iterable) {
        b.requireNonNull(iterable, "sources is null");
        return a.onAssembly(new io.reactivex.internal.operators.maybe.b(null, iterable));
    }

    public static <T> q<T> ambArray(w<? extends T>... wVarArr) {
        if (wVarArr.length == 0) {
            return empty();
        }
        if (wVarArr.length == 1) {
            return wrap(wVarArr[0]);
        }
        return a.onAssembly(new io.reactivex.internal.operators.maybe.b(wVarArr, null));
    }

    public static <T> j<T> concat(Iterable<? extends w<? extends T>> iterable) {
        b.requireNonNull(iterable, "sources is null");
        return a.onAssembly(new g(iterable));
    }

    public static <T> j<T> concat(w<? extends T> wVar, w<? extends T> wVar2) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        return concatArray(wVar, wVar2);
    }

    public static <T> j<T> concat(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        b.requireNonNull(wVar3, "source3 is null");
        return concatArray(wVar, wVar2, wVar3);
    }

    public static <T> j<T> concat(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3, w<? extends T> wVar4) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        b.requireNonNull(wVar3, "source3 is null");
        b.requireNonNull(wVar4, "source4 is null");
        return concatArray(wVar, wVar2, wVar3, wVar4);
    }

    public static <T> j<T> concat(org.b.b<? extends w<? extends T>> bVar) {
        return concat(bVar, 2);
    }

    public static <T> j<T> concat(org.b.b<? extends w<? extends T>> bVar, int i) {
        b.requireNonNull(bVar, "sources is null");
        b.verifyPositive(i, "prefetch");
        return a.onAssembly(new z(bVar, MaybeToPublisher.instance(), i, ErrorMode.IMMEDIATE));
    }

    public static <T> j<T> concatArray(w<? extends T>... wVarArr) {
        b.requireNonNull(wVarArr, "sources is null");
        if (wVarArr.length == 0) {
            return j.empty();
        }
        if (wVarArr.length == 1) {
            return a.onAssembly(new bm(wVarArr[0]));
        }
        return a.onAssembly(new e(wVarArr));
    }

    public static <T> j<T> concatArrayDelayError(w<? extends T>... wVarArr) {
        if (wVarArr.length == 0) {
            return j.empty();
        }
        if (wVarArr.length == 1) {
            return a.onAssembly(new bm(wVarArr[0]));
        }
        return a.onAssembly(new f(wVarArr));
    }

    public static <T> j<T> concatArrayEager(w<? extends T>... wVarArr) {
        return j.fromArray(wVarArr).concatMapEager(MaybeToPublisher.instance());
    }

    public static <T> j<T> concatDelayError(Iterable<? extends w<? extends T>> iterable) {
        b.requireNonNull(iterable, "sources is null");
        return j.fromIterable(iterable).concatMapDelayError(MaybeToPublisher.instance());
    }

    public static <T> j<T> concatDelayError(org.b.b<? extends w<? extends T>> bVar) {
        return j.fromPublisher(bVar).concatMapDelayError(MaybeToPublisher.instance());
    }

    public static <T> j<T> concatEager(Iterable<? extends w<? extends T>> iterable) {
        return j.fromIterable(iterable).concatMapEager(MaybeToPublisher.instance());
    }

    public static <T> j<T> concatEager(org.b.b<? extends w<? extends T>> bVar) {
        return j.fromPublisher(bVar).concatMapEager(MaybeToPublisher.instance());
    }

    public static <T> q<T> create(u<T> uVar) {
        b.requireNonNull(uVar, "onSubscribe is null");
        return a.onAssembly(new j(uVar));
    }

    public static <T> q<T> defer(Callable<? extends w<? extends T>> callable) {
        b.requireNonNull(callable, "maybeSupplier is null");
        return a.onAssembly(new k(callable));
    }

    public static <T> q<T> empty() {
        return a.onAssembly(u.INSTANCE);
    }

    public static <T> q<T> error(Throwable th) {
        b.requireNonNull(th, "exception is null");
        return a.onAssembly(new w(th));
    }

    public static <T> q<T> error(Callable<? extends Throwable> callable) {
        b.requireNonNull(callable, "errorSupplier is null");
        return a.onAssembly(new x(callable));
    }

    public static <T> q<T> fromAction(io.reactivex.e.a aVar) {
        b.requireNonNull(aVar, "run is null");
        return a.onAssembly(new ai(aVar));
    }

    public static <T> q<T> fromCompletable(g gVar) {
        b.requireNonNull(gVar, "completableSource is null");
        return a.onAssembly(new ak(gVar));
    }

    public static <T> q<T> fromSingle(ao<T> aoVar) {
        b.requireNonNull(aoVar, "singleSource is null");
        return a.onAssembly(new an(aoVar));
    }

    public static <T> q<T> fromCallable(Callable<? extends T> callable) {
        b.requireNonNull(callable, "callable is null");
        return a.onAssembly(new aj(callable));
    }

    public static <T> q<T> fromFuture(Future<? extends T> future) {
        b.requireNonNull(future, "future is null");
        return a.onAssembly(new al(future, 0, null));
    }

    public static <T> q<T> fromFuture(Future<? extends T> future, long j, TimeUnit timeUnit) {
        b.requireNonNull(future, "future is null");
        b.requireNonNull(timeUnit, "unit is null");
        return a.onAssembly(new al(future, j, timeUnit));
    }

    public static <T> q<T> fromRunnable(Runnable runnable) {
        b.requireNonNull(runnable, "run is null");
        return a.onAssembly(new am(runnable));
    }

    public static <T> q<T> just(T t) {
        b.requireNonNull(t, "item is null");
        return a.onAssembly(new at(t));
    }

    public static <T> j<T> merge(Iterable<? extends w<? extends T>> iterable) {
        return merge(j.fromIterable(iterable));
    }

    public static <T> j<T> merge(org.b.b<? extends w<? extends T>> bVar) {
        return merge(bVar, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public static <T> j<T> merge(org.b.b<? extends w<? extends T>> bVar, int i) {
        b.requireNonNull(bVar, "source is null");
        b.verifyPositive(i, "maxConcurrency");
        bd bdVar = new bd(bVar, MaybeToPublisher.instance(), false, i, 1);
        return a.onAssembly(bdVar);
    }

    public static <T> q<T> merge(w<? extends w<? extends T>> wVar) {
        b.requireNonNull(wVar, "source is null");
        return a.onAssembly(new ah(wVar, io.reactivex.internal.a.a.identity()));
    }

    public static <T> j<T> merge(w<? extends T> wVar, w<? extends T> wVar2) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        return mergeArray(wVar, wVar2);
    }

    public static <T> j<T> merge(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        b.requireNonNull(wVar3, "source3 is null");
        return mergeArray(wVar, wVar2, wVar3);
    }

    public static <T> j<T> merge(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3, w<? extends T> wVar4) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        b.requireNonNull(wVar3, "source3 is null");
        b.requireNonNull(wVar4, "source4 is null");
        return mergeArray(wVar, wVar2, wVar3, wVar4);
    }

    public static <T> j<T> mergeArray(w<? extends T>... wVarArr) {
        b.requireNonNull(wVarArr, "sources is null");
        if (wVarArr.length == 0) {
            return j.empty();
        }
        if (wVarArr.length == 1) {
            return a.onAssembly(new bm(wVarArr[0]));
        }
        return a.onAssembly(new ax(wVarArr));
    }

    public static <T> j<T> mergeArrayDelayError(w<? extends T>... wVarArr) {
        if (wVarArr.length == 0) {
            return j.empty();
        }
        return j.fromArray(wVarArr).flatMap(MaybeToPublisher.instance(), true, wVarArr.length);
    }

    public static <T> j<T> mergeDelayError(Iterable<? extends w<? extends T>> iterable) {
        return j.fromIterable(iterable).flatMap(MaybeToPublisher.instance(), true);
    }

    public static <T> j<T> mergeDelayError(org.b.b<? extends w<? extends T>> bVar) {
        return mergeDelayError(bVar, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public static <T> j<T> mergeDelayError(org.b.b<? extends w<? extends T>> bVar, int i) {
        b.requireNonNull(bVar, "source is null");
        b.verifyPositive(i, "maxConcurrency");
        bd bdVar = new bd(bVar, MaybeToPublisher.instance(), true, i, 1);
        return a.onAssembly(bdVar);
    }

    public static <T> j<T> mergeDelayError(w<? extends T> wVar, w<? extends T> wVar2) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        return mergeArrayDelayError(wVar, wVar2);
    }

    public static <T> j<T> mergeDelayError(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        b.requireNonNull(wVar3, "source3 is null");
        return mergeArrayDelayError(wVar, wVar2, wVar3);
    }

    public static <T> j<T> mergeDelayError(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3, w<? extends T> wVar4) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        b.requireNonNull(wVar3, "source3 is null");
        b.requireNonNull(wVar4, "source4 is null");
        return mergeArrayDelayError(wVar, wVar2, wVar3, wVar4);
    }

    public static <T> q<T> never() {
        return a.onAssembly(ay.INSTANCE);
    }

    public static <T> ai<Boolean> sequenceEqual(w<? extends T> wVar, w<? extends T> wVar2) {
        return sequenceEqual(wVar, wVar2, b.equalsPredicate());
    }

    public static <T> ai<Boolean> sequenceEqual(w<? extends T> wVar, w<? extends T> wVar2, d<? super T, ? super T> dVar) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        b.requireNonNull(dVar, "isEqual is null");
        return a.onAssembly(new v(wVar, wVar2, dVar));
    }

    public static q<Long> timer(long j, TimeUnit timeUnit) {
        return timer(j, timeUnit, io.reactivex.i.a.computation());
    }

    public static q<Long> timer(long j, TimeUnit timeUnit, ah ahVar) {
        b.requireNonNull(timeUnit, "unit is null");
        b.requireNonNull(ahVar, "scheduler is null");
        return a.onAssembly(new bl(Math.max(0, j), timeUnit, ahVar));
    }

    public static <T> q<T> unsafeCreate(w<T> wVar) {
        if (!(wVar instanceof q)) {
            b.requireNonNull(wVar, "onSubscribe is null");
            return a.onAssembly(new bp(wVar));
        }
        throw new IllegalArgumentException("unsafeCreate(Maybe) should be upgraded");
    }

    public static <T, D> q<T> using(Callable<? extends D> callable, h<? super D, ? extends w<? extends T>> hVar, io.reactivex.e.g<? super D> gVar) {
        return using(callable, hVar, gVar, true);
    }

    public static <T, D> q<T> using(Callable<? extends D> callable, h<? super D, ? extends w<? extends T>> hVar, io.reactivex.e.g<? super D> gVar, boolean z) {
        b.requireNonNull(callable, "resourceSupplier is null");
        b.requireNonNull(hVar, "sourceSupplier is null");
        b.requireNonNull(gVar, "disposer is null");
        return a.onAssembly(new br(callable, hVar, gVar, z));
    }

    public static <T> q<T> wrap(w<T> wVar) {
        if (wVar instanceof q) {
            return a.onAssembly((q) wVar);
        }
        b.requireNonNull(wVar, "onSubscribe is null");
        return a.onAssembly(new bp(wVar));
    }

    public static <T, R> q<R> zip(Iterable<? extends w<? extends T>> iterable, h<? super Object[], ? extends R> hVar) {
        b.requireNonNull(hVar, "zipper is null");
        b.requireNonNull(iterable, "sources is null");
        return a.onAssembly(new bt(iterable, hVar));
    }

    public static <T1, T2, R> q<R> zip(w<? extends T1> wVar, w<? extends T2> wVar2, c<? super T1, ? super T2, ? extends R> cVar) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(cVar), wVar, wVar2);
    }

    public static <T1, T2, T3, R> q<R> zip(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, i<? super T1, ? super T2, ? super T3, ? extends R> iVar) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        b.requireNonNull(wVar3, "source3 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(iVar), wVar, wVar2, wVar3);
    }

    public static <T1, T2, T3, T4, R> q<R> zip(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, io.reactivex.e.j<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> jVar) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        b.requireNonNull(wVar3, "source3 is null");
        b.requireNonNull(wVar4, "source4 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(jVar), wVar, wVar2, wVar3, wVar4);
    }

    public static <T1, T2, T3, T4, T5, R> q<R> zip(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, io.reactivex.e.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> kVar) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        b.requireNonNull(wVar3, "source3 is null");
        b.requireNonNull(wVar4, "source4 is null");
        b.requireNonNull(wVar5, "source5 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(kVar), wVar, wVar2, wVar3, wVar4, wVar5);
    }

    public static <T1, T2, T3, T4, T5, T6, R> q<R> zip(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, w<? extends T6> wVar6, l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> lVar) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        b.requireNonNull(wVar3, "source3 is null");
        b.requireNonNull(wVar4, "source4 is null");
        b.requireNonNull(wVar5, "source5 is null");
        b.requireNonNull(wVar6, "source6 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(lVar), wVar, wVar2, wVar3, wVar4, wVar5, wVar6);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> q<R> zip(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, w<? extends T6> wVar6, w<? extends T7> wVar7, m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> mVar) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        b.requireNonNull(wVar3, "source3 is null");
        b.requireNonNull(wVar4, "source4 is null");
        b.requireNonNull(wVar5, "source5 is null");
        b.requireNonNull(wVar6, "source6 is null");
        b.requireNonNull(wVar7, "source7 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(mVar), wVar, wVar2, wVar3, wVar4, wVar5, wVar6, wVar7);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> q<R> zip(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, w<? extends T6> wVar6, w<? extends T7> wVar7, w<? extends T8> wVar8, n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> nVar) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        b.requireNonNull(wVar3, "source3 is null");
        b.requireNonNull(wVar4, "source4 is null");
        b.requireNonNull(wVar5, "source5 is null");
        b.requireNonNull(wVar6, "source6 is null");
        b.requireNonNull(wVar7, "source7 is null");
        b.requireNonNull(wVar8, "source8 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(nVar), wVar, wVar2, wVar3, wVar4, wVar5, wVar6, wVar7, wVar8);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> q<R> zip(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, w<? extends T6> wVar6, w<? extends T7> wVar7, w<? extends T8> wVar8, w<? extends T9> wVar9, o<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> oVar) {
        b.requireNonNull(wVar, "source1 is null");
        b.requireNonNull(wVar2, "source2 is null");
        b.requireNonNull(wVar3, "source3 is null");
        b.requireNonNull(wVar4, "source4 is null");
        b.requireNonNull(wVar5, "source5 is null");
        b.requireNonNull(wVar6, "source6 is null");
        b.requireNonNull(wVar7, "source7 is null");
        b.requireNonNull(wVar8, "source8 is null");
        b.requireNonNull(wVar9, "source9 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(oVar), wVar, wVar2, wVar3, wVar4, wVar5, wVar6, wVar7, wVar8, wVar9);
    }

    public static <T, R> q<R> zipArray(h<? super Object[], ? extends R> hVar, w<? extends T>... wVarArr) {
        b.requireNonNull(wVarArr, "sources is null");
        if (wVarArr.length == 0) {
            return empty();
        }
        b.requireNonNull(hVar, "zipper is null");
        return a.onAssembly(new bs(wVarArr, hVar));
    }

    public final q<T> ambWith(w<? extends T> wVar) {
        b.requireNonNull(wVar, "other is null");
        return ambArray(this, wVar);
    }

    public final <R> R as(r<T, ? extends R> rVar) {
        return ((r) b.requireNonNull(rVar, "converter is null")).apply(this);
    }

    public final T blockingGet() {
        io.reactivex.internal.c.h hVar = new io.reactivex.internal.c.h();
        subscribe(hVar);
        return hVar.blockingGet();
    }

    public final T blockingGet(T t) {
        b.requireNonNull(t, "defaultValue is null");
        io.reactivex.internal.c.h hVar = new io.reactivex.internal.c.h();
        subscribe(hVar);
        return hVar.blockingGet(t);
    }

    public final q<T> cache() {
        return a.onAssembly(new io.reactivex.internal.operators.maybe.c(this));
    }

    public final <U> q<U> cast(Class<? extends U> cls) {
        b.requireNonNull(cls, "clazz is null");
        return map(io.reactivex.internal.a.a.castFunction(cls));
    }

    public final <R> q<R> compose(x<? super T, ? extends R> xVar) {
        return wrap(((x) b.requireNonNull(xVar, "transformer is null")).apply(this));
    }

    public final <R> q<R> concatMap(h<? super T, ? extends w<? extends R>> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new ah(this, hVar));
    }

    public final j<T> concatWith(w<? extends T> wVar) {
        b.requireNonNull(wVar, "other is null");
        return concat(this, (q) wVar);
    }

    public final ai<Boolean> contains(Object obj) {
        b.requireNonNull(obj, "item is null");
        return a.onAssembly(new io.reactivex.internal.operators.maybe.h(this, obj));
    }

    public final ai<Long> count() {
        return a.onAssembly(new io.reactivex.internal.operators.maybe.i(this));
    }

    public final q<T> defaultIfEmpty(T t) {
        b.requireNonNull(t, "defaultItem is null");
        return switchIfEmpty(just(t));
    }

    public final q<T> delay(long j, TimeUnit timeUnit) {
        return delay(j, timeUnit, io.reactivex.i.a.computation());
    }

    public final q<T> delay(long j, TimeUnit timeUnit, ah ahVar) {
        b.requireNonNull(timeUnit, "unit is null");
        b.requireNonNull(ahVar, "scheduler is null");
        io.reactivex.internal.operators.maybe.l lVar = new io.reactivex.internal.operators.maybe.l(this, Math.max(0, j), timeUnit, ahVar);
        return a.onAssembly(lVar);
    }

    public final <U, V> q<T> delay(org.b.b<U> bVar) {
        b.requireNonNull(bVar, "delayIndicator is null");
        return a.onAssembly(new io.reactivex.internal.operators.maybe.m(this, bVar));
    }

    public final <U> q<T> delaySubscription(org.b.b<U> bVar) {
        b.requireNonNull(bVar, "subscriptionIndicator is null");
        return a.onAssembly(new io.reactivex.internal.operators.maybe.n(this, bVar));
    }

    public final q<T> delaySubscription(long j, TimeUnit timeUnit) {
        return delaySubscription(j, timeUnit, io.reactivex.i.a.computation());
    }

    public final q<T> delaySubscription(long j, TimeUnit timeUnit, ah ahVar) {
        return delaySubscription(j.timer(j, timeUnit, ahVar));
    }

    public final q<T> doAfterSuccess(io.reactivex.e.g<? super T> gVar) {
        b.requireNonNull(gVar, "onAfterSuccess is null");
        return a.onAssembly(new io.reactivex.internal.operators.maybe.q(this, gVar));
    }

    public final q<T> doAfterTerminate(io.reactivex.e.a aVar) {
        io.reactivex.internal.operators.maybe.bd bdVar = new io.reactivex.internal.operators.maybe.bd(this, io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.EMPTY_ACTION, (io.reactivex.e.a) b.requireNonNull(aVar, "onAfterTerminate is null"), io.reactivex.internal.a.a.EMPTY_ACTION);
        return a.onAssembly(bdVar);
    }

    public final q<T> doFinally(io.reactivex.e.a aVar) {
        b.requireNonNull(aVar, "onFinally is null");
        return a.onAssembly(new r(this, aVar));
    }

    public final q<T> doOnDispose(io.reactivex.e.a aVar) {
        io.reactivex.e.g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.g emptyConsumer2 = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.g emptyConsumer3 = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar2 = io.reactivex.internal.a.a.EMPTY_ACTION;
        io.reactivex.internal.operators.maybe.bd bdVar = new io.reactivex.internal.operators.maybe.bd(this, emptyConsumer, emptyConsumer2, emptyConsumer3, aVar2, aVar2, (io.reactivex.e.a) b.requireNonNull(aVar, "onDispose is null"));
        return a.onAssembly(bdVar);
    }

    public final q<T> doOnComplete(io.reactivex.e.a aVar) {
        io.reactivex.e.a aVar2 = io.reactivex.internal.a.a.EMPTY_ACTION;
        io.reactivex.internal.operators.maybe.bd bdVar = new io.reactivex.internal.operators.maybe.bd(this, io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.emptyConsumer(), (io.reactivex.e.a) b.requireNonNull(aVar, "onComplete is null"), aVar2, aVar2);
        return a.onAssembly(bdVar);
    }

    public final q<T> doOnError(io.reactivex.e.g<? super Throwable> gVar) {
        io.reactivex.e.a aVar = io.reactivex.internal.a.a.EMPTY_ACTION;
        io.reactivex.internal.operators.maybe.bd bdVar = new io.reactivex.internal.operators.maybe.bd(this, io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.emptyConsumer(), (io.reactivex.e.g) b.requireNonNull(gVar, "onError is null"), aVar, aVar, io.reactivex.internal.a.a.EMPTY_ACTION);
        return a.onAssembly(bdVar);
    }

    public final q<T> doOnEvent(io.reactivex.e.b<? super T, ? super Throwable> bVar) {
        b.requireNonNull(bVar, "onEvent is null");
        return a.onAssembly(new s(this, bVar));
    }

    public final q<T> doOnSubscribe(io.reactivex.e.g<? super io.reactivex.b.c> gVar) {
        io.reactivex.e.g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.g emptyConsumer2 = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar = io.reactivex.internal.a.a.EMPTY_ACTION;
        io.reactivex.internal.operators.maybe.bd bdVar = new io.reactivex.internal.operators.maybe.bd(this, (io.reactivex.e.g) b.requireNonNull(gVar, "onSubscribe is null"), emptyConsumer, emptyConsumer2, aVar, aVar, io.reactivex.internal.a.a.EMPTY_ACTION);
        return a.onAssembly(bdVar);
    }

    public final q<T> doOnTerminate(io.reactivex.e.a aVar) {
        b.requireNonNull(aVar, "onTerminate is null");
        return a.onAssembly(new t(this, aVar));
    }

    public final q<T> doOnSuccess(io.reactivex.e.g<? super T> gVar) {
        io.reactivex.e.g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar = io.reactivex.internal.a.a.EMPTY_ACTION;
        io.reactivex.internal.operators.maybe.bd bdVar = new io.reactivex.internal.operators.maybe.bd(this, io.reactivex.internal.a.a.emptyConsumer(), (io.reactivex.e.g) b.requireNonNull(gVar, "onSuccess is null"), emptyConsumer, aVar, aVar, io.reactivex.internal.a.a.EMPTY_ACTION);
        return a.onAssembly(bdVar);
    }

    public final q<T> filter(io.reactivex.e.q<? super T> qVar) {
        b.requireNonNull(qVar, "predicate is null");
        return a.onAssembly(new y(this, qVar));
    }

    public final <R> q<R> flatMap(h<? super T, ? extends w<? extends R>> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new ah(this, hVar));
    }

    public final <R> q<R> flatMap(h<? super T, ? extends w<? extends R>> hVar, h<? super Throwable, ? extends w<? extends R>> hVar2, Callable<? extends w<? extends R>> callable) {
        b.requireNonNull(hVar, "onSuccessMapper is null");
        b.requireNonNull(hVar2, "onErrorMapper is null");
        b.requireNonNull(callable, "onCompleteSupplier is null");
        return a.onAssembly(new ae(this, hVar, hVar2, callable));
    }

    public final <U, R> q<R> flatMap(h<? super T, ? extends w<? extends U>> hVar, c<? super T, ? super U, ? extends R> cVar) {
        b.requireNonNull(hVar, "mapper is null");
        b.requireNonNull(cVar, "resultSelector is null");
        return a.onAssembly(new aa(this, hVar, cVar));
    }

    public final <U> j<U> flattenAsFlowable(h<? super T, ? extends Iterable<? extends U>> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new ac(this, hVar));
    }

    public final <U> z<U> flattenAsObservable(h<? super T, ? extends Iterable<? extends U>> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new ad(this, hVar));
    }

    public final <R> z<R> flatMapObservable(h<? super T, ? extends ae<? extends R>> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new io.reactivex.internal.operators.b.j(this, hVar));
    }

    public final <R> j<R> flatMapPublisher(h<? super T, ? extends org.b.b<? extends R>> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new io.reactivex.internal.operators.b.k(this, hVar));
    }

    public final <R> ai<R> flatMapSingle(h<? super T, ? extends ao<? extends R>> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new af(this, hVar));
    }

    public final <R> q<R> flatMapSingleElement(h<? super T, ? extends ao<? extends R>> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new ag(this, hVar));
    }

    public final a flatMapCompletable(h<? super T, ? extends g> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly((a) new ab(this, hVar));
    }

    public final q<T> hide() {
        return a.onAssembly(new ao(this));
    }

    public final a ignoreElement() {
        return a.onAssembly((a) new aq(this));
    }

    public final ai<Boolean> isEmpty() {
        return a.onAssembly(new as(this));
    }

    public final <R> q<R> lift(v<? extends R, ? super T> vVar) {
        b.requireNonNull(vVar, "lift is null");
        return a.onAssembly(new au(this, vVar));
    }

    public final <R> q<R> map(h<? super T, ? extends R> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new av(this, hVar));
    }

    public final ai<y<T>> materialize() {
        return a.onAssembly(new aw(this));
    }

    public final j<T> mergeWith(w<? extends T> wVar) {
        b.requireNonNull(wVar, "other is null");
        return merge(this, (q) wVar);
    }

    public final q<T> observeOn(ah ahVar) {
        b.requireNonNull(ahVar, "scheduler is null");
        return a.onAssembly(new az(this, ahVar));
    }

    public final <U> q<U> ofType(Class<U> cls) {
        b.requireNonNull(cls, "clazz is null");
        return filter(io.reactivex.internal.a.a.isInstanceOf(cls)).cast(cls);
    }

    public final <R> R to(h<? super q<T>, R> hVar) {
        try {
            return ((h) b.requireNonNull(hVar, "convert is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            throw io.reactivex.internal.util.h.wrapOrThrow(th);
        }
    }

    public final j<T> toFlowable() {
        if (this instanceof io.reactivex.internal.b.b) {
            return ((io.reactivex.internal.b.b) this).fuseToFlowable();
        }
        return a.onAssembly(new bm(this));
    }

    public final z<T> toObservable() {
        if (this instanceof io.reactivex.internal.b.d) {
            return ((io.reactivex.internal.b.d) this).fuseToObservable();
        }
        return a.onAssembly(new bn(this));
    }

    public final ai<T> toSingle(T t) {
        b.requireNonNull(t, "defaultValue is null");
        return a.onAssembly(new bo(this, t));
    }

    public final ai<T> toSingle() {
        return a.onAssembly(new bo(this, null));
    }

    public final q<T> onErrorComplete() {
        return onErrorComplete(io.reactivex.internal.a.a.alwaysTrue());
    }

    public final q<T> onErrorComplete(io.reactivex.e.q<? super Throwable> qVar) {
        b.requireNonNull(qVar, "predicate is null");
        return a.onAssembly(new ba(this, qVar));
    }

    public final q<T> onErrorResumeNext(w<? extends T> wVar) {
        b.requireNonNull(wVar, "next is null");
        return onErrorResumeNext(io.reactivex.internal.a.a.justFunction(wVar));
    }

    public final q<T> onErrorResumeNext(h<? super Throwable, ? extends w<? extends T>> hVar) {
        b.requireNonNull(hVar, "resumeFunction is null");
        return a.onAssembly(new bb(this, hVar, true));
    }

    public final q<T> onErrorReturn(h<? super Throwable, ? extends T> hVar) {
        b.requireNonNull(hVar, "valueSupplier is null");
        return a.onAssembly(new bc(this, hVar));
    }

    public final q<T> onErrorReturnItem(T t) {
        b.requireNonNull(t, "item is null");
        return onErrorReturn(io.reactivex.internal.a.a.justFunction(t));
    }

    public final q<T> onExceptionResumeNext(w<? extends T> wVar) {
        b.requireNonNull(wVar, "next is null");
        return a.onAssembly(new bb(this, io.reactivex.internal.a.a.justFunction(wVar), false));
    }

    public final q<T> onTerminateDetach() {
        return a.onAssembly(new p(this));
    }

    public final j<T> repeat() {
        return repeat(Long.MAX_VALUE);
    }

    public final j<T> repeat(long j) {
        return toFlowable().repeat(j);
    }

    public final j<T> repeatUntil(io.reactivex.e.e eVar) {
        return toFlowable().repeatUntil(eVar);
    }

    public final j<T> repeatWhen(h<? super j<Object>, ? extends org.b.b<?>> hVar) {
        return toFlowable().repeatWhen(hVar);
    }

    public final q<T> retry() {
        return retry(Long.MAX_VALUE, io.reactivex.internal.a.a.alwaysTrue());
    }

    public final q<T> retry(d<? super Integer, ? super Throwable> dVar) {
        return toFlowable().retry(dVar).singleElement();
    }

    public final q<T> retry(long j) {
        return retry(j, io.reactivex.internal.a.a.alwaysTrue());
    }

    public final q<T> retry(long j, io.reactivex.e.q<? super Throwable> qVar) {
        return toFlowable().retry(j, qVar).singleElement();
    }

    public final q<T> retry(io.reactivex.e.q<? super Throwable> qVar) {
        return retry(Long.MAX_VALUE, qVar);
    }

    public final q<T> retryUntil(io.reactivex.e.e eVar) {
        b.requireNonNull(eVar, "stop is null");
        return retry(Long.MAX_VALUE, io.reactivex.internal.a.a.predicateReverseFor(eVar));
    }

    public final q<T> retryWhen(h<? super j<Throwable>, ? extends org.b.b<?>> hVar) {
        return toFlowable().retryWhen(hVar).singleElement();
    }

    public final io.reactivex.b.c subscribe() {
        return subscribe(io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.ON_ERROR_MISSING, io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    public final io.reactivex.b.c subscribe(io.reactivex.e.g<? super T> gVar) {
        return subscribe(gVar, io.reactivex.internal.a.a.ON_ERROR_MISSING, io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    public final io.reactivex.b.c subscribe(io.reactivex.e.g<? super T> gVar, io.reactivex.e.g<? super Throwable> gVar2) {
        return subscribe(gVar, gVar2, io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    public final io.reactivex.b.c subscribe(io.reactivex.e.g<? super T> gVar, io.reactivex.e.g<? super Throwable> gVar2, io.reactivex.e.a aVar) {
        b.requireNonNull(gVar, "onSuccess is null");
        b.requireNonNull(gVar2, "onError is null");
        b.requireNonNull(aVar, "onComplete is null");
        return (io.reactivex.b.c) subscribeWith(new io.reactivex.internal.operators.maybe.d(gVar, gVar2, aVar));
    }

    public final void subscribe(t<? super T> tVar) {
        b.requireNonNull(tVar, "observer is null");
        t<? super Object> onSubscribe = a.onSubscribe(this, tVar);
        b.requireNonNull(onSubscribe, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            subscribeActual(onSubscribe);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final q<T> subscribeOn(ah ahVar) {
        b.requireNonNull(ahVar, "scheduler is null");
        return a.onAssembly(new be(this, ahVar));
    }

    public final <E extends t<? super T>> E subscribeWith(E e) {
        subscribe(e);
        return e;
    }

    public final q<T> switchIfEmpty(w<? extends T> wVar) {
        b.requireNonNull(wVar, "other is null");
        return a.onAssembly(new bf(this, wVar));
    }

    public final ai<T> switchIfEmpty(ao<? extends T> aoVar) {
        b.requireNonNull(aoVar, "other is null");
        return a.onAssembly(new bg(this, aoVar));
    }

    public final <U> q<T> takeUntil(w<U> wVar) {
        b.requireNonNull(wVar, "other is null");
        return a.onAssembly(new bh(this, wVar));
    }

    public final <U> q<T> takeUntil(org.b.b<U> bVar) {
        b.requireNonNull(bVar, "other is null");
        return a.onAssembly(new bi(this, bVar));
    }

    public final q<T> timeout(long j, TimeUnit timeUnit) {
        return timeout(j, timeUnit, io.reactivex.i.a.computation());
    }

    public final q<T> timeout(long j, TimeUnit timeUnit, w<? extends T> wVar) {
        b.requireNonNull(wVar, "fallback is null");
        return timeout(j, timeUnit, io.reactivex.i.a.computation(), wVar);
    }

    public final q<T> timeout(long j, TimeUnit timeUnit, ah ahVar, w<? extends T> wVar) {
        b.requireNonNull(wVar, "fallback is null");
        return timeout(timer(j, timeUnit, ahVar), wVar);
    }

    public final q<T> timeout(long j, TimeUnit timeUnit, ah ahVar) {
        return timeout(timer(j, timeUnit, ahVar));
    }

    public final <U> q<T> timeout(w<U> wVar) {
        b.requireNonNull(wVar, "timeoutIndicator is null");
        return a.onAssembly(new bj(this, wVar, null));
    }

    public final <U> q<T> timeout(w<U> wVar, w<? extends T> wVar2) {
        b.requireNonNull(wVar, "timeoutIndicator is null");
        b.requireNonNull(wVar2, "fallback is null");
        return a.onAssembly(new bj(this, wVar, wVar2));
    }

    public final <U> q<T> timeout(org.b.b<U> bVar) {
        b.requireNonNull(bVar, "timeoutIndicator is null");
        return a.onAssembly(new bk(this, bVar, null));
    }

    public final <U> q<T> timeout(org.b.b<U> bVar, w<? extends T> wVar) {
        b.requireNonNull(bVar, "timeoutIndicator is null");
        b.requireNonNull(wVar, "fallback is null");
        return a.onAssembly(new bk(this, bVar, wVar));
    }

    public final q<T> unsubscribeOn(ah ahVar) {
        b.requireNonNull(ahVar, "scheduler is null");
        return a.onAssembly(new bq(this, ahVar));
    }

    public final <U, R> q<R> zipWith(w<? extends U> wVar, c<? super T, ? super U, ? extends R> cVar) {
        b.requireNonNull(wVar, "other is null");
        return zip(this, wVar, cVar);
    }

    public final io.reactivex.observers.e<T> test() {
        io.reactivex.observers.e<T> eVar = new io.reactivex.observers.e<>();
        subscribe(eVar);
        return eVar;
    }

    public final io.reactivex.observers.e<T> test(boolean z) {
        io.reactivex.observers.e<T> eVar = new io.reactivex.observers.e<>();
        if (z) {
            eVar.cancel();
        }
        subscribe(eVar);
        return eVar;
    }
}
