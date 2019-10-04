package io.reactivex;

import androidx.appcompat.widget.ActivityChooserView;
import io.reactivex.e.c;
import io.reactivex.e.g;
import io.reactivex.e.h;
import io.reactivex.e.i;
import io.reactivex.e.j;
import io.reactivex.e.k;
import io.reactivex.e.l;
import io.reactivex.e.m;
import io.reactivex.e.n;
import io.reactivex.e.o;
import io.reactivex.g.a;
import io.reactivex.internal.a.b;
import io.reactivex.internal.operators.c.dg;
import io.reactivex.internal.operators.c.v;
import io.reactivex.internal.operators.e.aa;
import io.reactivex.internal.operators.e.ab;
import io.reactivex.internal.operators.e.ac;
import io.reactivex.internal.operators.e.ad;
import io.reactivex.internal.operators.e.ae;
import io.reactivex.internal.operators.e.af;
import io.reactivex.internal.operators.e.ag;
import io.reactivex.internal.operators.e.ah;
import io.reactivex.internal.operators.e.aj;
import io.reactivex.internal.operators.e.ak;
import io.reactivex.internal.operators.e.al;
import io.reactivex.internal.operators.e.am;
import io.reactivex.internal.operators.e.an;
import io.reactivex.internal.operators.e.ao;
import io.reactivex.internal.operators.e.ap;
import io.reactivex.internal.operators.e.aq;
import io.reactivex.internal.operators.e.ar;
import io.reactivex.internal.operators.e.as;
import io.reactivex.internal.operators.e.at;
import io.reactivex.internal.operators.e.au;
import io.reactivex.internal.operators.e.av;
import io.reactivex.internal.operators.e.aw;
import io.reactivex.internal.operators.e.ax;
import io.reactivex.internal.operators.e.ay;
import io.reactivex.internal.operators.e.az;
import io.reactivex.internal.operators.e.d;
import io.reactivex.internal.operators.e.e;
import io.reactivex.internal.operators.e.f;
import io.reactivex.internal.operators.e.p;
import io.reactivex.internal.operators.e.q;
import io.reactivex.internal.operators.e.r;
import io.reactivex.internal.operators.e.s;
import io.reactivex.internal.operators.e.t;
import io.reactivex.internal.operators.e.u;
import io.reactivex.internal.operators.e.x;
import io.reactivex.internal.operators.e.y;
import io.reactivex.internal.operators.flowable.bd;
import io.reactivex.internal.operators.flowable.ds;
import io.reactivex.internal.operators.flowable.w;
import io.reactivex.internal.operators.flowable.z;
import io.reactivex.internal.util.ErrorMode;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public abstract class ai<T> implements ao<T> {
    /* access modifiers changed from: protected */
    public abstract void subscribeActual(al<? super T> alVar);

    public static <T> ai<T> amb(Iterable<? extends ao<? extends T>> iterable) {
        b.requireNonNull(iterable, "sources is null");
        return a.onAssembly(new io.reactivex.internal.operators.e.a(null, iterable));
    }

    public static <T> ai<T> ambArray(ao<? extends T>... aoVarArr) {
        if (aoVarArr.length == 0) {
            return error((Callable<? extends Throwable>) ah.emptyThrower());
        }
        if (aoVarArr.length == 1) {
            return wrap(aoVarArr[0]);
        }
        return a.onAssembly(new io.reactivex.internal.operators.e.a(aoVarArr, null));
    }

    public static <T> j<T> concat(Iterable<? extends ao<? extends T>> iterable) {
        return concat(j.fromIterable(iterable));
    }

    public static <T> z<T> concat(ae<? extends ao<? extends T>> aeVar) {
        b.requireNonNull(aeVar, "sources is null");
        return a.onAssembly(new v(aeVar, ah.toObservable(), 2, ErrorMode.IMMEDIATE));
    }

    public static <T> j<T> concat(org.b.b<? extends ao<? extends T>> bVar) {
        return concat(bVar, 2);
    }

    public static <T> j<T> concat(org.b.b<? extends ao<? extends T>> bVar, int i) {
        b.requireNonNull(bVar, "sources is null");
        b.verifyPositive(i, "prefetch");
        return a.onAssembly(new z(bVar, ah.toFlowable(), i, ErrorMode.IMMEDIATE));
    }

    public static <T> j<T> concat(ao<? extends T> aoVar, ao<? extends T> aoVar2) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        return concat(j.fromArray(aoVar, aoVar2));
    }

    public static <T> j<T> concat(ao<? extends T> aoVar, ao<? extends T> aoVar2, ao<? extends T> aoVar3) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        b.requireNonNull(aoVar3, "source3 is null");
        return concat(j.fromArray(aoVar, aoVar2, aoVar3));
    }

    public static <T> j<T> concat(ao<? extends T> aoVar, ao<? extends T> aoVar2, ao<? extends T> aoVar3, ao<? extends T> aoVar4) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        b.requireNonNull(aoVar3, "source3 is null");
        b.requireNonNull(aoVar4, "source4 is null");
        return concat(j.fromArray(aoVar, aoVar2, aoVar3, aoVar4));
    }

    public static <T> j<T> concatArray(ao<? extends T>... aoVarArr) {
        return a.onAssembly(new w(j.fromArray(aoVarArr), ah.toFlowable(), 2, ErrorMode.BOUNDARY));
    }

    public static <T> j<T> concatArrayEager(ao<? extends T>... aoVarArr) {
        return j.fromArray(aoVarArr).concatMapEager(ah.toFlowable());
    }

    public static <T> j<T> concatEager(org.b.b<? extends ao<? extends T>> bVar) {
        return j.fromPublisher(bVar).concatMapEager(ah.toFlowable());
    }

    public static <T> j<T> concatEager(Iterable<? extends ao<? extends T>> iterable) {
        return j.fromIterable(iterable).concatMapEager(ah.toFlowable());
    }

    public static <T> ai<T> create(am<T> amVar) {
        b.requireNonNull(amVar, "source is null");
        return a.onAssembly(new d(amVar));
    }

    public static <T> ai<T> defer(Callable<? extends ao<? extends T>> callable) {
        b.requireNonNull(callable, "singleSupplier is null");
        return a.onAssembly(new e(callable));
    }

    public static <T> ai<T> error(Callable<? extends Throwable> callable) {
        b.requireNonNull(callable, "errorSupplier is null");
        return a.onAssembly(new io.reactivex.internal.operators.e.w(callable));
    }

    public static <T> ai<T> error(Throwable th) {
        b.requireNonNull(th, "exception is null");
        return error((Callable<? extends Throwable>) io.reactivex.internal.a.a.justCallable(th));
    }

    public static <T> ai<T> fromCallable(Callable<? extends T> callable) {
        b.requireNonNull(callable, "callable is null");
        return a.onAssembly(new ad(callable));
    }

    public static <T> ai<T> fromFuture(Future<? extends T> future) {
        return a(j.fromFuture(future));
    }

    public static <T> ai<T> fromFuture(Future<? extends T> future, long j, TimeUnit timeUnit) {
        return a(j.fromFuture(future, j, timeUnit));
    }

    public static <T> ai<T> fromFuture(Future<? extends T> future, long j, TimeUnit timeUnit, ah ahVar) {
        return a(j.fromFuture(future, j, timeUnit, ahVar));
    }

    public static <T> ai<T> fromFuture(Future<? extends T> future, ah ahVar) {
        return a(j.fromFuture(future, ahVar));
    }

    public static <T> ai<T> fromPublisher(org.b.b<? extends T> bVar) {
        b.requireNonNull(bVar, "publisher is null");
        return a.onAssembly(new ae(bVar));
    }

    public static <T> ai<T> fromObservable(ae<? extends T> aeVar) {
        b.requireNonNull(aeVar, "observableSource is null");
        return a.onAssembly(new dg(aeVar, null));
    }

    public static <T> ai<T> just(T t) {
        b.requireNonNull(t, "item is null");
        return a.onAssembly(new io.reactivex.internal.operators.e.ai(t));
    }

    public static <T> j<T> merge(Iterable<? extends ao<? extends T>> iterable) {
        return merge(j.fromIterable(iterable));
    }

    public static <T> j<T> merge(org.b.b<? extends ao<? extends T>> bVar) {
        b.requireNonNull(bVar, "sources is null");
        bd bdVar = new bd(bVar, ah.toFlowable(), false, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, j.bufferSize());
        return a.onAssembly(bdVar);
    }

    public static <T> ai<T> merge(ao<? extends ao<? extends T>> aoVar) {
        b.requireNonNull(aoVar, "source is null");
        return a.onAssembly(new x(aoVar, io.reactivex.internal.a.a.identity()));
    }

    public static <T> j<T> merge(ao<? extends T> aoVar, ao<? extends T> aoVar2) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        return merge(j.fromArray(aoVar, aoVar2));
    }

    public static <T> j<T> merge(ao<? extends T> aoVar, ao<? extends T> aoVar2, ao<? extends T> aoVar3) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        b.requireNonNull(aoVar3, "source3 is null");
        return merge(j.fromArray(aoVar, aoVar2, aoVar3));
    }

    public static <T> j<T> merge(ao<? extends T> aoVar, ao<? extends T> aoVar2, ao<? extends T> aoVar3, ao<? extends T> aoVar4) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        b.requireNonNull(aoVar3, "source3 is null");
        b.requireNonNull(aoVar4, "source4 is null");
        return merge(j.fromArray(aoVar, aoVar2, aoVar3, aoVar4));
    }

    public static <T> j<T> mergeDelayError(Iterable<? extends ao<? extends T>> iterable) {
        return mergeDelayError(j.fromIterable(iterable));
    }

    public static <T> j<T> mergeDelayError(org.b.b<? extends ao<? extends T>> bVar) {
        b.requireNonNull(bVar, "sources is null");
        bd bdVar = new bd(bVar, ah.toFlowable(), true, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, j.bufferSize());
        return a.onAssembly(bdVar);
    }

    public static <T> j<T> mergeDelayError(ao<? extends T> aoVar, ao<? extends T> aoVar2) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        return mergeDelayError(j.fromArray(aoVar, aoVar2));
    }

    public static <T> j<T> mergeDelayError(ao<? extends T> aoVar, ao<? extends T> aoVar2, ao<? extends T> aoVar3) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        b.requireNonNull(aoVar3, "source3 is null");
        return mergeDelayError(j.fromArray(aoVar, aoVar2, aoVar3));
    }

    public static <T> j<T> mergeDelayError(ao<? extends T> aoVar, ao<? extends T> aoVar2, ao<? extends T> aoVar3, ao<? extends T> aoVar4) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        b.requireNonNull(aoVar3, "source3 is null");
        b.requireNonNull(aoVar4, "source4 is null");
        return mergeDelayError(j.fromArray(aoVar, aoVar2, aoVar3, aoVar4));
    }

    public static <T> ai<T> never() {
        return a.onAssembly(am.INSTANCE);
    }

    public static ai<Long> timer(long j, TimeUnit timeUnit) {
        return timer(j, timeUnit, io.reactivex.i.a.computation());
    }

    public static ai<Long> timer(long j, TimeUnit timeUnit, ah ahVar) {
        b.requireNonNull(timeUnit, "unit is null");
        b.requireNonNull(ahVar, "scheduler is null");
        return a.onAssembly(new at(j, timeUnit, ahVar));
    }

    public static <T> ai<Boolean> equals(ao<? extends T> aoVar, ao<? extends T> aoVar2) {
        b.requireNonNull(aoVar, "first is null");
        b.requireNonNull(aoVar2, "second is null");
        return a.onAssembly(new io.reactivex.internal.operators.e.v(aoVar, aoVar2));
    }

    public static <T> ai<T> unsafeCreate(ao<T> aoVar) {
        b.requireNonNull(aoVar, "onSubscribe is null");
        if (!(aoVar instanceof ai)) {
            return a.onAssembly(new af(aoVar));
        }
        throw new IllegalArgumentException("unsafeCreate(Single) should be upgraded");
    }

    public static <T, U> ai<T> using(Callable<U> callable, h<? super U, ? extends ao<? extends T>> hVar, g<? super U> gVar) {
        return using(callable, hVar, gVar, true);
    }

    public static <T, U> ai<T> using(Callable<U> callable, h<? super U, ? extends ao<? extends T>> hVar, g<? super U> gVar, boolean z) {
        b.requireNonNull(callable, "resourceSupplier is null");
        b.requireNonNull(hVar, "singleFunction is null");
        b.requireNonNull(gVar, "disposer is null");
        return a.onAssembly(new ax(callable, hVar, gVar, z));
    }

    public static <T> ai<T> wrap(ao<T> aoVar) {
        b.requireNonNull(aoVar, "source is null");
        if (aoVar instanceof ai) {
            return a.onAssembly((ai) aoVar);
        }
        return a.onAssembly(new af(aoVar));
    }

    public static <T, R> ai<R> zip(Iterable<? extends ao<? extends T>> iterable, h<? super Object[], ? extends R> hVar) {
        b.requireNonNull(hVar, "zipper is null");
        b.requireNonNull(iterable, "sources is null");
        return a.onAssembly(new az(iterable, hVar));
    }

    public static <T1, T2, R> ai<R> zip(ao<? extends T1> aoVar, ao<? extends T2> aoVar2, c<? super T1, ? super T2, ? extends R> cVar) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(cVar), aoVar, aoVar2);
    }

    public static <T1, T2, T3, R> ai<R> zip(ao<? extends T1> aoVar, ao<? extends T2> aoVar2, ao<? extends T3> aoVar3, i<? super T1, ? super T2, ? super T3, ? extends R> iVar) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        b.requireNonNull(aoVar3, "source3 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(iVar), aoVar, aoVar2, aoVar3);
    }

    public static <T1, T2, T3, T4, R> ai<R> zip(ao<? extends T1> aoVar, ao<? extends T2> aoVar2, ao<? extends T3> aoVar3, ao<? extends T4> aoVar4, j<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> jVar) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        b.requireNonNull(aoVar3, "source3 is null");
        b.requireNonNull(aoVar4, "source4 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(jVar), aoVar, aoVar2, aoVar3, aoVar4);
    }

    public static <T1, T2, T3, T4, T5, R> ai<R> zip(ao<? extends T1> aoVar, ao<? extends T2> aoVar2, ao<? extends T3> aoVar3, ao<? extends T4> aoVar4, ao<? extends T5> aoVar5, k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> kVar) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        b.requireNonNull(aoVar3, "source3 is null");
        b.requireNonNull(aoVar4, "source4 is null");
        b.requireNonNull(aoVar5, "source5 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(kVar), aoVar, aoVar2, aoVar3, aoVar4, aoVar5);
    }

    public static <T1, T2, T3, T4, T5, T6, R> ai<R> zip(ao<? extends T1> aoVar, ao<? extends T2> aoVar2, ao<? extends T3> aoVar3, ao<? extends T4> aoVar4, ao<? extends T5> aoVar5, ao<? extends T6> aoVar6, l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> lVar) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        b.requireNonNull(aoVar3, "source3 is null");
        b.requireNonNull(aoVar4, "source4 is null");
        b.requireNonNull(aoVar5, "source5 is null");
        b.requireNonNull(aoVar6, "source6 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(lVar), aoVar, aoVar2, aoVar3, aoVar4, aoVar5, aoVar6);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> ai<R> zip(ao<? extends T1> aoVar, ao<? extends T2> aoVar2, ao<? extends T3> aoVar3, ao<? extends T4> aoVar4, ao<? extends T5> aoVar5, ao<? extends T6> aoVar6, ao<? extends T7> aoVar7, m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> mVar) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        b.requireNonNull(aoVar3, "source3 is null");
        b.requireNonNull(aoVar4, "source4 is null");
        b.requireNonNull(aoVar5, "source5 is null");
        b.requireNonNull(aoVar6, "source6 is null");
        b.requireNonNull(aoVar7, "source7 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(mVar), aoVar, aoVar2, aoVar3, aoVar4, aoVar5, aoVar6, aoVar7);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> ai<R> zip(ao<? extends T1> aoVar, ao<? extends T2> aoVar2, ao<? extends T3> aoVar3, ao<? extends T4> aoVar4, ao<? extends T5> aoVar5, ao<? extends T6> aoVar6, ao<? extends T7> aoVar7, ao<? extends T8> aoVar8, n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> nVar) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        b.requireNonNull(aoVar3, "source3 is null");
        b.requireNonNull(aoVar4, "source4 is null");
        b.requireNonNull(aoVar5, "source5 is null");
        b.requireNonNull(aoVar6, "source6 is null");
        b.requireNonNull(aoVar7, "source7 is null");
        b.requireNonNull(aoVar8, "source8 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(nVar), aoVar, aoVar2, aoVar3, aoVar4, aoVar5, aoVar6, aoVar7, aoVar8);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> ai<R> zip(ao<? extends T1> aoVar, ao<? extends T2> aoVar2, ao<? extends T3> aoVar3, ao<? extends T4> aoVar4, ao<? extends T5> aoVar5, ao<? extends T6> aoVar6, ao<? extends T7> aoVar7, ao<? extends T8> aoVar8, ao<? extends T9> aoVar9, o<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> oVar) {
        b.requireNonNull(aoVar, "source1 is null");
        b.requireNonNull(aoVar2, "source2 is null");
        b.requireNonNull(aoVar3, "source3 is null");
        b.requireNonNull(aoVar4, "source4 is null");
        b.requireNonNull(aoVar5, "source5 is null");
        b.requireNonNull(aoVar6, "source6 is null");
        b.requireNonNull(aoVar7, "source7 is null");
        b.requireNonNull(aoVar8, "source8 is null");
        b.requireNonNull(aoVar9, "source9 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(oVar), aoVar, aoVar2, aoVar3, aoVar4, aoVar5, aoVar6, aoVar7, aoVar8, aoVar9);
    }

    public static <T, R> ai<R> zipArray(h<? super Object[], ? extends R> hVar, ao<? extends T>... aoVarArr) {
        b.requireNonNull(hVar, "zipper is null");
        b.requireNonNull(aoVarArr, "sources is null");
        if (aoVarArr.length == 0) {
            return error((Throwable) new NoSuchElementException());
        }
        return a.onAssembly(new ay(aoVarArr, hVar));
    }

    public final ai<T> ambWith(ao<? extends T> aoVar) {
        b.requireNonNull(aoVar, "other is null");
        return ambArray(this, aoVar);
    }

    public final <R> R as(aj<T, ? extends R> ajVar) {
        return ((aj) b.requireNonNull(ajVar, "converter is null")).apply(this);
    }

    public final ai<T> hide() {
        return a.onAssembly(new ag(this));
    }

    public final <R> ai<R> compose(ap<? super T, ? extends R> apVar) {
        return wrap(((ap) b.requireNonNull(apVar, "transformer is null")).apply(this));
    }

    public final ai<T> cache() {
        return a.onAssembly(new io.reactivex.internal.operators.e.b(this));
    }

    public final <U> ai<U> cast(Class<? extends U> cls) {
        b.requireNonNull(cls, "clazz is null");
        return map(io.reactivex.internal.a.a.castFunction(cls));
    }

    public final j<T> concatWith(ao<? extends T> aoVar) {
        return concat(this, (ai) aoVar);
    }

    public final ai<T> delay(long j, TimeUnit timeUnit) {
        return delay(j, timeUnit, io.reactivex.i.a.computation(), false);
    }

    public final ai<T> delay(long j, TimeUnit timeUnit, boolean z) {
        return delay(j, timeUnit, io.reactivex.i.a.computation(), z);
    }

    public final ai<T> delay(long j, TimeUnit timeUnit, ah ahVar) {
        return delay(j, timeUnit, ahVar, false);
    }

    public final ai<T> delay(long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        b.requireNonNull(timeUnit, "unit is null");
        b.requireNonNull(ahVar, "scheduler is null");
        f fVar = new f(this, j, timeUnit, ahVar, z);
        return a.onAssembly(fVar);
    }

    public final ai<T> delaySubscription(g gVar) {
        b.requireNonNull(gVar, "other is null");
        return a.onAssembly(new io.reactivex.internal.operators.e.g(this, gVar));
    }

    public final <U> ai<T> delaySubscription(ao<U> aoVar) {
        b.requireNonNull(aoVar, "other is null");
        return a.onAssembly(new io.reactivex.internal.operators.e.j(this, aoVar));
    }

    public final <U> ai<T> delaySubscription(ae<U> aeVar) {
        b.requireNonNull(aeVar, "other is null");
        return a.onAssembly(new io.reactivex.internal.operators.e.h(this, aeVar));
    }

    public final <U> ai<T> delaySubscription(org.b.b<U> bVar) {
        b.requireNonNull(bVar, "other is null");
        return a.onAssembly(new io.reactivex.internal.operators.e.i(this, bVar));
    }

    public final ai<T> delaySubscription(long j, TimeUnit timeUnit) {
        return delaySubscription(j, timeUnit, io.reactivex.i.a.computation());
    }

    public final ai<T> delaySubscription(long j, TimeUnit timeUnit, ah ahVar) {
        return delaySubscription(z.timer(j, timeUnit, ahVar));
    }

    public final <R> q<R> dematerialize(h<? super T, y<R>> hVar) {
        b.requireNonNull(hVar, "selector is null");
        return a.onAssembly(new io.reactivex.internal.operators.e.k(this, hVar));
    }

    public final ai<T> doAfterSuccess(g<? super T> gVar) {
        b.requireNonNull(gVar, "onAfterSuccess is null");
        return a.onAssembly(new io.reactivex.internal.operators.e.m(this, gVar));
    }

    public final ai<T> doAfterTerminate(io.reactivex.e.a aVar) {
        b.requireNonNull(aVar, "onAfterTerminate is null");
        return a.onAssembly(new io.reactivex.internal.operators.e.n(this, aVar));
    }

    public final ai<T> doFinally(io.reactivex.e.a aVar) {
        b.requireNonNull(aVar, "onFinally is null");
        return a.onAssembly(new io.reactivex.internal.operators.e.o(this, aVar));
    }

    public final ai<T> doOnSubscribe(g<? super io.reactivex.b.c> gVar) {
        b.requireNonNull(gVar, "onSubscribe is null");
        return a.onAssembly(new s(this, gVar));
    }

    public final ai<T> doOnTerminate(io.reactivex.e.a aVar) {
        b.requireNonNull(aVar, "onTerminate is null");
        return a.onAssembly(new u(this, aVar));
    }

    public final ai<T> doOnSuccess(g<? super T> gVar) {
        b.requireNonNull(gVar, "onSuccess is null");
        return a.onAssembly(new t(this, gVar));
    }

    public final ai<T> doOnEvent(io.reactivex.e.b<? super T, ? super Throwable> bVar) {
        b.requireNonNull(bVar, "onEvent is null");
        return a.onAssembly(new r(this, bVar));
    }

    public final ai<T> doOnError(g<? super Throwable> gVar) {
        b.requireNonNull(gVar, "onError is null");
        return a.onAssembly(new q(this, gVar));
    }

    public final ai<T> doOnDispose(io.reactivex.e.a aVar) {
        b.requireNonNull(aVar, "onDispose is null");
        return a.onAssembly(new p(this, aVar));
    }

    public final q<T> filter(io.reactivex.e.q<? super T> qVar) {
        b.requireNonNull(qVar, "predicate is null");
        return a.onAssembly(new io.reactivex.internal.operators.maybe.z(this, qVar));
    }

    public final <R> ai<R> flatMap(h<? super T, ? extends ao<? extends R>> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new x(this, hVar));
    }

    public final <R> q<R> flatMapMaybe(h<? super T, ? extends w<? extends R>> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new ab(this, hVar));
    }

    public final <R> j<R> flatMapPublisher(h<? super T, ? extends org.b.b<? extends R>> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new ac(this, hVar));
    }

    public final <U> j<U> flattenAsFlowable(h<? super T, ? extends Iterable<? extends U>> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new io.reactivex.internal.operators.e.z(this, hVar));
    }

    public final <U> z<U> flattenAsObservable(h<? super T, ? extends Iterable<? extends U>> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new aa(this, hVar));
    }

    public final <R> z<R> flatMapObservable(h<? super T, ? extends ae<? extends R>> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new io.reactivex.internal.operators.b.s(this, hVar));
    }

    public final a flatMapCompletable(h<? super T, ? extends g> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly((a) new y(this, hVar));
    }

    public final T blockingGet() {
        io.reactivex.internal.c.h hVar = new io.reactivex.internal.c.h();
        subscribe(hVar);
        return hVar.blockingGet();
    }

    public final <R> ai<R> lift(an<? extends R, ? super T> anVar) {
        b.requireNonNull(anVar, "lift is null");
        return a.onAssembly(new aj(this, anVar));
    }

    public final <R> ai<R> map(h<? super T, ? extends R> hVar) {
        b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new ak(this, hVar));
    }

    public final ai<y<T>> materialize() {
        return a.onAssembly(new al(this));
    }

    public final ai<Boolean> contains(Object obj) {
        return contains(obj, b.equalsPredicate());
    }

    public final ai<Boolean> contains(Object obj, io.reactivex.e.d<Object, Object> dVar) {
        b.requireNonNull(obj, "value is null");
        b.requireNonNull(dVar, "comparer is null");
        return a.onAssembly(new io.reactivex.internal.operators.e.c(this, obj, dVar));
    }

    public final j<T> mergeWith(ao<? extends T> aoVar) {
        return merge(this, aoVar);
    }

    public final ai<T> observeOn(ah ahVar) {
        b.requireNonNull(ahVar, "scheduler is null");
        return a.onAssembly(new an(this, ahVar));
    }

    public final ai<T> onErrorReturn(h<Throwable, ? extends T> hVar) {
        b.requireNonNull(hVar, "resumeFunction is null");
        return a.onAssembly(new ao(this, hVar, null));
    }

    public final ai<T> onErrorReturnItem(T t) {
        b.requireNonNull(t, "value is null");
        return a.onAssembly(new ao(this, null, t));
    }

    public final ai<T> onErrorResumeNext(ai<? extends T> aiVar) {
        b.requireNonNull(aiVar, "resumeSingleInCaseOfError is null");
        return onErrorResumeNext(io.reactivex.internal.a.a.justFunction(aiVar));
    }

    public final ai<T> onErrorResumeNext(h<? super Throwable, ? extends ao<? extends T>> hVar) {
        b.requireNonNull(hVar, "resumeFunctionInCaseOfError is null");
        return a.onAssembly(new ap(this, hVar));
    }

    public final ai<T> onTerminateDetach() {
        return a.onAssembly(new io.reactivex.internal.operators.e.l(this));
    }

    public final j<T> repeat() {
        return toFlowable().repeat();
    }

    public final j<T> repeat(long j) {
        return toFlowable().repeat(j);
    }

    public final j<T> repeatWhen(h<? super j<Object>, ? extends org.b.b<?>> hVar) {
        return toFlowable().repeatWhen(hVar);
    }

    public final j<T> repeatUntil(io.reactivex.e.e eVar) {
        return toFlowable().repeatUntil(eVar);
    }

    public final ai<T> retry() {
        return a(toFlowable().retry());
    }

    public final ai<T> retry(long j) {
        return a(toFlowable().retry(j));
    }

    public final ai<T> retry(io.reactivex.e.d<? super Integer, ? super Throwable> dVar) {
        return a(toFlowable().retry(dVar));
    }

    public final ai<T> retry(long j, io.reactivex.e.q<? super Throwable> qVar) {
        return a(toFlowable().retry(j, qVar));
    }

    public final ai<T> retry(io.reactivex.e.q<? super Throwable> qVar) {
        return a(toFlowable().retry(qVar));
    }

    public final ai<T> retryWhen(h<? super j<Throwable>, ? extends org.b.b<?>> hVar) {
        return a(toFlowable().retryWhen(hVar));
    }

    public final io.reactivex.b.c subscribe() {
        return subscribe(io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.ON_ERROR_MISSING);
    }

    public final io.reactivex.b.c subscribe(io.reactivex.e.b<? super T, ? super Throwable> bVar) {
        b.requireNonNull(bVar, "onCallback is null");
        io.reactivex.internal.c.d dVar = new io.reactivex.internal.c.d(bVar);
        subscribe(dVar);
        return dVar;
    }

    public final io.reactivex.b.c subscribe(g<? super T> gVar) {
        return subscribe(gVar, io.reactivex.internal.a.a.ON_ERROR_MISSING);
    }

    public final io.reactivex.b.c subscribe(g<? super T> gVar, g<? super Throwable> gVar2) {
        b.requireNonNull(gVar, "onSuccess is null");
        b.requireNonNull(gVar2, "onError is null");
        io.reactivex.internal.c.k kVar = new io.reactivex.internal.c.k(gVar, gVar2);
        subscribe(kVar);
        return kVar;
    }

    public final void subscribe(al<? super T> alVar) {
        b.requireNonNull(alVar, "observer is null");
        al<? super Object> onSubscribe = a.onSubscribe(this, alVar);
        b.requireNonNull(onSubscribe, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
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

    public final <E extends al<? super T>> E subscribeWith(E e) {
        subscribe(e);
        return e;
    }

    public final ai<T> subscribeOn(ah ahVar) {
        b.requireNonNull(ahVar, "scheduler is null");
        return a.onAssembly(new aq(this, ahVar));
    }

    public final ai<T> takeUntil(g gVar) {
        b.requireNonNull(gVar, "other is null");
        return takeUntil(new io.reactivex.internal.operators.a.ao(gVar));
    }

    public final <E> ai<T> takeUntil(org.b.b<E> bVar) {
        b.requireNonNull(bVar, "other is null");
        return a.onAssembly(new ar(this, bVar));
    }

    public final <E> ai<T> takeUntil(ao<? extends E> aoVar) {
        b.requireNonNull(aoVar, "other is null");
        return takeUntil(new au(aoVar));
    }

    public final ai<T> timeout(long j, TimeUnit timeUnit) {
        return a(j, timeUnit, io.reactivex.i.a.computation(), null);
    }

    public final ai<T> timeout(long j, TimeUnit timeUnit, ah ahVar) {
        return a(j, timeUnit, ahVar, null);
    }

    public final ai<T> timeout(long j, TimeUnit timeUnit, ah ahVar, ao<? extends T> aoVar) {
        b.requireNonNull(aoVar, "other is null");
        return a(j, timeUnit, ahVar, aoVar);
    }

    public final ai<T> timeout(long j, TimeUnit timeUnit, ao<? extends T> aoVar) {
        b.requireNonNull(aoVar, "other is null");
        return a(j, timeUnit, io.reactivex.i.a.computation(), aoVar);
    }

    private ai<T> a(long j, TimeUnit timeUnit, ah ahVar, ao<? extends T> aoVar) {
        b.requireNonNull(timeUnit, "unit is null");
        b.requireNonNull(ahVar, "scheduler is null");
        as asVar = new as(this, j, timeUnit, ahVar, aoVar);
        return a.onAssembly(asVar);
    }

    public final <R> R to(h<? super ai<T>, R> hVar) {
        try {
            return ((h) b.requireNonNull(hVar, "convert is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            throw io.reactivex.internal.util.h.wrapOrThrow(th);
        }
    }

    @Deprecated
    public final a toCompletable() {
        return a.onAssembly((a) new io.reactivex.internal.operators.a.v(this));
    }

    public final a ignoreElement() {
        return a.onAssembly((a) new io.reactivex.internal.operators.a.v(this));
    }

    public final j<T> toFlowable() {
        if (this instanceof io.reactivex.internal.b.b) {
            return ((io.reactivex.internal.b.b) this).fuseToFlowable();
        }
        return a.onAssembly(new au(this));
    }

    public final Future<T> toFuture() {
        return (Future) subscribeWith(new io.reactivex.internal.c.q());
    }

    public final q<T> toMaybe() {
        if (this instanceof io.reactivex.internal.b.c) {
            return ((io.reactivex.internal.b.c) this).fuseToMaybe();
        }
        return a.onAssembly(new io.reactivex.internal.operators.maybe.an(this));
    }

    public final z<T> toObservable() {
        if (this instanceof io.reactivex.internal.b.d) {
            return ((io.reactivex.internal.b.d) this).fuseToObservable();
        }
        return a.onAssembly(new av(this));
    }

    public final ai<T> unsubscribeOn(ah ahVar) {
        b.requireNonNull(ahVar, "scheduler is null");
        return a.onAssembly(new aw(this, ahVar));
    }

    public final <U, R> ai<R> zipWith(ao<U> aoVar, c<? super T, ? super U, ? extends R> cVar) {
        return zip(this, aoVar, cVar);
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

    private static <T> ai<T> a(j<T> jVar) {
        return a.onAssembly(new ds(jVar, null));
    }
}
