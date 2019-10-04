package io.reactivex;

import androidx.appcompat.widget.ActivityChooserView;
import io.reactivex.e.d;
import io.reactivex.e.g;
import io.reactivex.e.i;
import io.reactivex.e.k;
import io.reactivex.e.l;
import io.reactivex.e.m;
import io.reactivex.e.n;
import io.reactivex.e.o;
import io.reactivex.e.q;
import io.reactivex.g.a;
import io.reactivex.internal.f.e;
import io.reactivex.internal.operators.b.f;
import io.reactivex.internal.operators.flowable.Cdo;
import io.reactivex.internal.operators.flowable.FlowableInternalHelper;
import io.reactivex.internal.operators.flowable.aa;
import io.reactivex.internal.operators.flowable.ab;
import io.reactivex.internal.operators.flowable.ac;
import io.reactivex.internal.operators.flowable.ae;
import io.reactivex.internal.operators.flowable.af;
import io.reactivex.internal.operators.flowable.ag;
import io.reactivex.internal.operators.flowable.ah;
import io.reactivex.internal.operators.flowable.ai;
import io.reactivex.internal.operators.flowable.aj;
import io.reactivex.internal.operators.flowable.ak;
import io.reactivex.internal.operators.flowable.al;
import io.reactivex.internal.operators.flowable.am;
import io.reactivex.internal.operators.flowable.an;
import io.reactivex.internal.operators.flowable.ao;
import io.reactivex.internal.operators.flowable.ap;
import io.reactivex.internal.operators.flowable.aq;
import io.reactivex.internal.operators.flowable.ar;
import io.reactivex.internal.operators.flowable.as;
import io.reactivex.internal.operators.flowable.au;
import io.reactivex.internal.operators.flowable.av;
import io.reactivex.internal.operators.flowable.aw;
import io.reactivex.internal.operators.flowable.ax;
import io.reactivex.internal.operators.flowable.ay;
import io.reactivex.internal.operators.flowable.az;
import io.reactivex.internal.operators.flowable.bb;
import io.reactivex.internal.operators.flowable.bc;
import io.reactivex.internal.operators.flowable.be;
import io.reactivex.internal.operators.flowable.bf;
import io.reactivex.internal.operators.flowable.bg;
import io.reactivex.internal.operators.flowable.bh;
import io.reactivex.internal.operators.flowable.bi;
import io.reactivex.internal.operators.flowable.bj;
import io.reactivex.internal.operators.flowable.bl;
import io.reactivex.internal.operators.flowable.bm;
import io.reactivex.internal.operators.flowable.bn;
import io.reactivex.internal.operators.flowable.bo;
import io.reactivex.internal.operators.flowable.bp;
import io.reactivex.internal.operators.flowable.bq;
import io.reactivex.internal.operators.flowable.br;
import io.reactivex.internal.operators.flowable.bs;
import io.reactivex.internal.operators.flowable.bt;
import io.reactivex.internal.operators.flowable.bu;
import io.reactivex.internal.operators.flowable.bv;
import io.reactivex.internal.operators.flowable.bw;
import io.reactivex.internal.operators.flowable.bx;
import io.reactivex.internal.operators.flowable.by;
import io.reactivex.internal.operators.flowable.bz;
import io.reactivex.internal.operators.flowable.ca;
import io.reactivex.internal.operators.flowable.cb;
import io.reactivex.internal.operators.flowable.cd;
import io.reactivex.internal.operators.flowable.ce;
import io.reactivex.internal.operators.flowable.cf;
import io.reactivex.internal.operators.flowable.cg;
import io.reactivex.internal.operators.flowable.ch;
import io.reactivex.internal.operators.flowable.ci;
import io.reactivex.internal.operators.flowable.cj;
import io.reactivex.internal.operators.flowable.ck;
import io.reactivex.internal.operators.flowable.cl;
import io.reactivex.internal.operators.flowable.cn;
import io.reactivex.internal.operators.flowable.co;
import io.reactivex.internal.operators.flowable.cp;
import io.reactivex.internal.operators.flowable.cq;
import io.reactivex.internal.operators.flowable.ct;
import io.reactivex.internal.operators.flowable.cu;
import io.reactivex.internal.operators.flowable.cv;
import io.reactivex.internal.operators.flowable.cx;
import io.reactivex.internal.operators.flowable.cy;
import io.reactivex.internal.operators.flowable.cz;
import io.reactivex.internal.operators.flowable.db;
import io.reactivex.internal.operators.flowable.dc;
import io.reactivex.internal.operators.flowable.dd;
import io.reactivex.internal.operators.flowable.de;
import io.reactivex.internal.operators.flowable.df;
import io.reactivex.internal.operators.flowable.dg;
import io.reactivex.internal.operators.flowable.dh;
import io.reactivex.internal.operators.flowable.di;
import io.reactivex.internal.operators.flowable.dj;
import io.reactivex.internal.operators.flowable.dk;
import io.reactivex.internal.operators.flowable.dl;
import io.reactivex.internal.operators.flowable.dm;
import io.reactivex.internal.operators.flowable.dp;
import io.reactivex.internal.operators.flowable.dr;
import io.reactivex.internal.operators.flowable.ds;
import io.reactivex.internal.operators.flowable.dt;
import io.reactivex.internal.operators.flowable.du;
import io.reactivex.internal.operators.flowable.dv;
import io.reactivex.internal.operators.flowable.dw;
import io.reactivex.internal.operators.flowable.dx;
import io.reactivex.internal.operators.flowable.dy;
import io.reactivex.internal.operators.flowable.dz;
import io.reactivex.internal.operators.flowable.ea;
import io.reactivex.internal.operators.flowable.eb;
import io.reactivex.internal.operators.flowable.ec;
import io.reactivex.internal.operators.flowable.ed;
import io.reactivex.internal.operators.flowable.ee;
import io.reactivex.internal.operators.flowable.eg;
import io.reactivex.internal.operators.flowable.eh;
import io.reactivex.internal.operators.flowable.ei;
import io.reactivex.internal.operators.flowable.ej;
import io.reactivex.internal.operators.flowable.ek;
import io.reactivex.internal.operators.flowable.el;
import io.reactivex.internal.operators.flowable.em;
import io.reactivex.internal.operators.flowable.en;
import io.reactivex.internal.operators.flowable.eo;
import io.reactivex.internal.operators.flowable.eq;
import io.reactivex.internal.operators.flowable.er;
import io.reactivex.internal.operators.flowable.es;
import io.reactivex.internal.operators.flowable.et;
import io.reactivex.internal.operators.flowable.eu;
import io.reactivex.internal.operators.flowable.ev;
import io.reactivex.internal.operators.flowable.ew;
import io.reactivex.internal.operators.flowable.ex;
import io.reactivex.internal.operators.flowable.ey;
import io.reactivex.internal.operators.flowable.ez;
import io.reactivex.internal.operators.flowable.fa;
import io.reactivex.internal.operators.flowable.fb;
import io.reactivex.internal.operators.flowable.h;
import io.reactivex.internal.operators.flowable.p;
import io.reactivex.internal.operators.flowable.r;
import io.reactivex.internal.operators.flowable.t;
import io.reactivex.internal.operators.flowable.u;
import io.reactivex.internal.operators.flowable.v;
import io.reactivex.internal.operators.flowable.w;
import io.reactivex.internal.operators.flowable.x;
import io.reactivex.internal.operators.flowable.y;
import io.reactivex.internal.util.ArrayListSupplier;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.HashMapSupplier;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.b.b;
import org.b.c;

public abstract class j<T> implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    static final int f8648a = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    /* access modifiers changed from: protected */
    public abstract void subscribeActual(c<? super T> cVar);

    public static <T> j<T> amb(Iterable<? extends b<? extends T>> iterable) {
        io.reactivex.internal.a.b.requireNonNull(iterable, "sources is null");
        return a.onAssembly(new h(null, iterable));
    }

    public static <T> j<T> ambArray(b<? extends T>... bVarArr) {
        io.reactivex.internal.a.b.requireNonNull(bVarArr, "sources is null");
        int length = bVarArr.length;
        if (length == 0) {
            return empty();
        }
        if (length == 1) {
            return fromPublisher(bVarArr[0]);
        }
        return a.onAssembly(new h(bVarArr, null));
    }

    public static int bufferSize() {
        return f8648a;
    }

    public static <T, R> j<R> combineLatest(b<? extends T>[] bVarArr, io.reactivex.e.h<? super Object[], ? extends R> hVar) {
        return combineLatest(bVarArr, hVar, bufferSize());
    }

    public static <T, R> j<R> combineLatest(io.reactivex.e.h<? super Object[], ? extends R> hVar, b<? extends T>... bVarArr) {
        return combineLatest(bVarArr, hVar, bufferSize());
    }

    public static <T, R> j<R> combineLatest(b<? extends T>[] bVarArr, io.reactivex.e.h<? super Object[], ? extends R> hVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(bVarArr, "sources is null");
        if (bVarArr.length == 0) {
            return empty();
        }
        io.reactivex.internal.a.b.requireNonNull(hVar, "combiner is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return a.onAssembly(new u(bVarArr, hVar, i, false));
    }

    public static <T, R> j<R> combineLatest(Iterable<? extends b<? extends T>> iterable, io.reactivex.e.h<? super Object[], ? extends R> hVar) {
        return combineLatest(iterable, hVar, bufferSize());
    }

    public static <T, R> j<R> combineLatest(Iterable<? extends b<? extends T>> iterable, io.reactivex.e.h<? super Object[], ? extends R> hVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(iterable, "sources is null");
        io.reactivex.internal.a.b.requireNonNull(hVar, "combiner is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return a.onAssembly(new u(iterable, hVar, i, false));
    }

    public static <T, R> j<R> combineLatestDelayError(b<? extends T>[] bVarArr, io.reactivex.e.h<? super Object[], ? extends R> hVar) {
        return combineLatestDelayError(bVarArr, hVar, bufferSize());
    }

    public static <T, R> j<R> combineLatestDelayError(io.reactivex.e.h<? super Object[], ? extends R> hVar, b<? extends T>... bVarArr) {
        return combineLatestDelayError(bVarArr, hVar, bufferSize());
    }

    public static <T, R> j<R> combineLatestDelayError(io.reactivex.e.h<? super Object[], ? extends R> hVar, int i, b<? extends T>... bVarArr) {
        return combineLatestDelayError(bVarArr, hVar, i);
    }

    public static <T, R> j<R> combineLatestDelayError(b<? extends T>[] bVarArr, io.reactivex.e.h<? super Object[], ? extends R> hVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(bVarArr, "sources is null");
        io.reactivex.internal.a.b.requireNonNull(hVar, "combiner is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        if (bVarArr.length == 0) {
            return empty();
        }
        return a.onAssembly(new u(bVarArr, hVar, i, true));
    }

    public static <T, R> j<R> combineLatestDelayError(Iterable<? extends b<? extends T>> iterable, io.reactivex.e.h<? super Object[], ? extends R> hVar) {
        return combineLatestDelayError(iterable, hVar, bufferSize());
    }

    public static <T, R> j<R> combineLatestDelayError(Iterable<? extends b<? extends T>> iterable, io.reactivex.e.h<? super Object[], ? extends R> hVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(iterable, "sources is null");
        io.reactivex.internal.a.b.requireNonNull(hVar, "combiner is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return a.onAssembly(new u(iterable, hVar, i, true));
    }

    public static <T1, T2, R> j<R> combineLatest(b<? extends T1> bVar, b<? extends T2> bVar2, io.reactivex.e.c<? super T1, ? super T2, ? extends R> cVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        return combineLatest(io.reactivex.internal.a.a.toFunction(cVar), (b<? extends T>[]) new b[]{bVar, bVar2});
    }

    public static <T1, T2, T3, R> j<R> combineLatest(b<? extends T1> bVar, b<? extends T2> bVar2, b<? extends T3> bVar3, i<? super T1, ? super T2, ? super T3, ? extends R> iVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        return combineLatest(io.reactivex.internal.a.a.toFunction(iVar), (b<? extends T>[]) new b[]{bVar, bVar2, bVar3});
    }

    public static <T1, T2, T3, T4, R> j<R> combineLatest(b<? extends T1> bVar, b<? extends T2> bVar2, b<? extends T3> bVar3, b<? extends T4> bVar4, io.reactivex.e.j<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> jVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        return combineLatest(io.reactivex.internal.a.a.toFunction(jVar), (b<? extends T>[]) new b[]{bVar, bVar2, bVar3, bVar4});
    }

    public static <T1, T2, T3, T4, T5, R> j<R> combineLatest(b<? extends T1> bVar, b<? extends T2> bVar2, b<? extends T3> bVar3, b<? extends T4> bVar4, b<? extends T5> bVar5, k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> kVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar5, "source5 is null");
        return combineLatest(io.reactivex.internal.a.a.toFunction(kVar), (b<? extends T>[]) new b[]{bVar, bVar2, bVar3, bVar4, bVar5});
    }

    public static <T1, T2, T3, T4, T5, T6, R> j<R> combineLatest(b<? extends T1> bVar, b<? extends T2> bVar2, b<? extends T3> bVar3, b<? extends T4> bVar4, b<? extends T5> bVar5, b<? extends T6> bVar6, l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> lVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar5, "source5 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar6, "source6 is null");
        return combineLatest(io.reactivex.internal.a.a.toFunction(lVar), (b<? extends T>[]) new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6});
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> j<R> combineLatest(b<? extends T1> bVar, b<? extends T2> bVar2, b<? extends T3> bVar3, b<? extends T4> bVar4, b<? extends T5> bVar5, b<? extends T6> bVar6, b<? extends T7> bVar7, m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> mVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar5, "source5 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar6, "source6 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar7, "source7 is null");
        return combineLatest(io.reactivex.internal.a.a.toFunction(mVar), (b<? extends T>[]) new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7});
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> j<R> combineLatest(b<? extends T1> bVar, b<? extends T2> bVar2, b<? extends T3> bVar3, b<? extends T4> bVar4, b<? extends T5> bVar5, b<? extends T6> bVar6, b<? extends T7> bVar7, b<? extends T8> bVar8, n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> nVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar5, "source5 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar6, "source6 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar7, "source7 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar8, "source8 is null");
        return combineLatest(io.reactivex.internal.a.a.toFunction(nVar), (b<? extends T>[]) new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8});
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> j<R> combineLatest(b<? extends T1> bVar, b<? extends T2> bVar2, b<? extends T3> bVar3, b<? extends T4> bVar4, b<? extends T5> bVar5, b<? extends T6> bVar6, b<? extends T7> bVar7, b<? extends T8> bVar8, b<? extends T9> bVar9, o<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> oVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar5, "source5 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar6, "source6 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar7, "source7 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar8, "source8 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar9, "source9 is null");
        return combineLatest(io.reactivex.internal.a.a.toFunction(oVar), (b<? extends T>[]) new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8, bVar9});
    }

    public static <T> j<T> concat(Iterable<? extends b<? extends T>> iterable) {
        io.reactivex.internal.a.b.requireNonNull(iterable, "sources is null");
        return fromIterable(iterable).concatMapDelayError(io.reactivex.internal.a.a.identity(), 2, false);
    }

    public static <T> j<T> concat(b<? extends b<? extends T>> bVar) {
        return concat(bVar, bufferSize());
    }

    public static <T> j<T> concat(b<? extends b<? extends T>> bVar, int i) {
        return fromPublisher(bVar).concatMap(io.reactivex.internal.a.a.identity(), i);
    }

    public static <T> j<T> concat(b<? extends T> bVar, b<? extends T> bVar2) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        return concatArray(bVar, bVar2);
    }

    public static <T> j<T> concat(b<? extends T> bVar, b<? extends T> bVar2, b<? extends T> bVar3) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        return concatArray(bVar, bVar2, bVar3);
    }

    public static <T> j<T> concat(b<? extends T> bVar, b<? extends T> bVar2, b<? extends T> bVar3, b<? extends T> bVar4) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        return concatArray(bVar, bVar2, bVar3, bVar4);
    }

    public static <T> j<T> concatArray(b<? extends T>... bVarArr) {
        if (bVarArr.length == 0) {
            return empty();
        }
        if (bVarArr.length == 1) {
            return fromPublisher(bVarArr[0]);
        }
        return a.onAssembly(new v(bVarArr, false));
    }

    public static <T> j<T> concatArrayDelayError(b<? extends T>... bVarArr) {
        if (bVarArr.length == 0) {
            return empty();
        }
        if (bVarArr.length == 1) {
            return fromPublisher(bVarArr[0]);
        }
        return a.onAssembly(new v(bVarArr, true));
    }

    public static <T> j<T> concatArrayEager(b<? extends T>... bVarArr) {
        return concatArrayEager(bufferSize(), bufferSize(), bVarArr);
    }

    public static <T> j<T> concatArrayEager(int i, int i2, b<? extends T>... bVarArr) {
        io.reactivex.internal.a.b.requireNonNull(bVarArr, "sources is null");
        io.reactivex.internal.a.b.verifyPositive(i, "maxConcurrency");
        io.reactivex.internal.a.b.verifyPositive(i2, "prefetch");
        x xVar = new x(new bg(bVarArr), io.reactivex.internal.a.a.identity(), i, i2, ErrorMode.IMMEDIATE);
        return a.onAssembly(xVar);
    }

    public static <T> j<T> concatArrayEagerDelayError(b<? extends T>... bVarArr) {
        return concatArrayEagerDelayError(bufferSize(), bufferSize(), bVarArr);
    }

    public static <T> j<T> concatArrayEagerDelayError(int i, int i2, b<? extends T>... bVarArr) {
        return fromArray(bVarArr).concatMapEagerDelayError(io.reactivex.internal.a.a.identity(), i, i2, true);
    }

    public static <T> j<T> concatDelayError(Iterable<? extends b<? extends T>> iterable) {
        io.reactivex.internal.a.b.requireNonNull(iterable, "sources is null");
        return fromIterable(iterable).concatMapDelayError(io.reactivex.internal.a.a.identity());
    }

    public static <T> j<T> concatDelayError(b<? extends b<? extends T>> bVar) {
        return concatDelayError(bVar, bufferSize(), true);
    }

    public static <T> j<T> concatDelayError(b<? extends b<? extends T>> bVar, int i, boolean z) {
        return fromPublisher(bVar).concatMapDelayError(io.reactivex.internal.a.a.identity(), i, z);
    }

    public static <T> j<T> concatEager(b<? extends b<? extends T>> bVar) {
        return concatEager(bVar, bufferSize(), bufferSize());
    }

    public static <T> j<T> concatEager(b<? extends b<? extends T>> bVar, int i, int i2) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "sources is null");
        io.reactivex.internal.a.b.verifyPositive(i, "maxConcurrency");
        io.reactivex.internal.a.b.verifyPositive(i2, "prefetch");
        y yVar = new y(bVar, io.reactivex.internal.a.a.identity(), i, i2, ErrorMode.IMMEDIATE);
        return a.onAssembly(yVar);
    }

    public static <T> j<T> concatEager(Iterable<? extends b<? extends T>> iterable) {
        return concatEager(iterable, bufferSize(), bufferSize());
    }

    public static <T> j<T> concatEager(Iterable<? extends b<? extends T>> iterable, int i, int i2) {
        io.reactivex.internal.a.b.requireNonNull(iterable, "sources is null");
        io.reactivex.internal.a.b.verifyPositive(i, "maxConcurrency");
        io.reactivex.internal.a.b.verifyPositive(i2, "prefetch");
        x xVar = new x(new bj(iterable), io.reactivex.internal.a.a.identity(), i, i2, ErrorMode.IMMEDIATE);
        return a.onAssembly(xVar);
    }

    public static <T> j<T> create(m<T> mVar, BackpressureStrategy backpressureStrategy) {
        io.reactivex.internal.a.b.requireNonNull(mVar, "source is null");
        io.reactivex.internal.a.b.requireNonNull(backpressureStrategy, "mode is null");
        return a.onAssembly(new af(mVar, backpressureStrategy));
    }

    public static <T> j<T> defer(Callable<? extends b<? extends T>> callable) {
        io.reactivex.internal.a.b.requireNonNull(callable, "supplier is null");
        return a.onAssembly(new ai(callable));
    }

    public static <T> j<T> empty() {
        return a.onAssembly(aw.INSTANCE);
    }

    public static <T> j<T> error(Callable<? extends Throwable> callable) {
        io.reactivex.internal.a.b.requireNonNull(callable, "supplier is null");
        return a.onAssembly(new ax(callable));
    }

    public static <T> j<T> error(Throwable th) {
        io.reactivex.internal.a.b.requireNonNull(th, "throwable is null");
        return error((Callable<? extends Throwable>) io.reactivex.internal.a.a.justCallable(th));
    }

    public static <T> j<T> fromArray(T... tArr) {
        io.reactivex.internal.a.b.requireNonNull(tArr, "items is null");
        if (tArr.length == 0) {
            return empty();
        }
        if (tArr.length == 1) {
            return just(tArr[0]);
        }
        return a.onAssembly(new bg(tArr));
    }

    public static <T> j<T> fromCallable(Callable<? extends T> callable) {
        io.reactivex.internal.a.b.requireNonNull(callable, "supplier is null");
        return a.onAssembly(new bh(callable));
    }

    public static <T> j<T> fromFuture(Future<? extends T> future) {
        io.reactivex.internal.a.b.requireNonNull(future, "future is null");
        return a.onAssembly(new bi(future, 0, null));
    }

    public static <T> j<T> fromFuture(Future<? extends T> future, long j, TimeUnit timeUnit) {
        io.reactivex.internal.a.b.requireNonNull(future, "future is null");
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        return a.onAssembly(new bi(future, j, timeUnit));
    }

    public static <T> j<T> fromFuture(Future<? extends T> future, long j, TimeUnit timeUnit, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        return fromFuture(future, j, timeUnit).subscribeOn(ahVar);
    }

    public static <T> j<T> fromFuture(Future<? extends T> future, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        return fromFuture(future).subscribeOn(ahVar);
    }

    public static <T> j<T> fromIterable(Iterable<? extends T> iterable) {
        io.reactivex.internal.a.b.requireNonNull(iterable, "source is null");
        return a.onAssembly(new bj(iterable));
    }

    public static <T> j<T> fromPublisher(b<? extends T> bVar) {
        if (bVar instanceof j) {
            return a.onAssembly((j) bVar);
        }
        io.reactivex.internal.a.b.requireNonNull(bVar, "source is null");
        return a.onAssembly(new bl(bVar));
    }

    public static <T> j<T> generate(g<i<T>> gVar) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "generator is null");
        return generate(io.reactivex.internal.a.a.nullSupplier(), FlowableInternalHelper.simpleGenerator(gVar), io.reactivex.internal.a.a.emptyConsumer());
    }

    public static <T, S> j<T> generate(Callable<S> callable, io.reactivex.e.b<S, i<T>> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "generator is null");
        return generate(callable, FlowableInternalHelper.simpleBiGenerator(bVar), io.reactivex.internal.a.a.emptyConsumer());
    }

    public static <T, S> j<T> generate(Callable<S> callable, io.reactivex.e.b<S, i<T>> bVar, g<? super S> gVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "generator is null");
        return generate(callable, FlowableInternalHelper.simpleBiGenerator(bVar), gVar);
    }

    public static <T, S> j<T> generate(Callable<S> callable, io.reactivex.e.c<S, i<T>, S> cVar) {
        return generate(callable, cVar, io.reactivex.internal.a.a.emptyConsumer());
    }

    public static <T, S> j<T> generate(Callable<S> callable, io.reactivex.e.c<S, i<T>, S> cVar, g<? super S> gVar) {
        io.reactivex.internal.a.b.requireNonNull(callable, "initialState is null");
        io.reactivex.internal.a.b.requireNonNull(cVar, "generator is null");
        io.reactivex.internal.a.b.requireNonNull(gVar, "disposeState is null");
        return a.onAssembly(new bm(callable, cVar, gVar));
    }

    public static j<Long> interval(long j, long j2, TimeUnit timeUnit) {
        return interval(j, j2, timeUnit, io.reactivex.i.a.computation());
    }

    public static j<Long> interval(long j, long j2, TimeUnit timeUnit, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        bs bsVar = new bs(Math.max(0, j), Math.max(0, j2), timeUnit, ahVar);
        return a.onAssembly(bsVar);
    }

    public static j<Long> interval(long j, TimeUnit timeUnit) {
        return interval(j, j, timeUnit, io.reactivex.i.a.computation());
    }

    public static j<Long> interval(long j, TimeUnit timeUnit, ah ahVar) {
        return interval(j, j, timeUnit, ahVar);
    }

    public static j<Long> intervalRange(long j, long j2, long j3, long j4, TimeUnit timeUnit) {
        return intervalRange(j, j2, j3, j4, timeUnit, io.reactivex.i.a.computation());
    }

    public static j<Long> intervalRange(long j, long j2, long j3, long j4, TimeUnit timeUnit, ah ahVar) {
        long j5 = j3;
        TimeUnit timeUnit2 = timeUnit;
        ah ahVar2 = ahVar;
        if (j2 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was ".concat(String.valueOf(j2)));
        } else if (j2 == 0) {
            return empty().delay(j5, timeUnit2, ahVar2);
        } else {
            long j6 = (j2 - 1) + j;
            if (j <= 0 || j6 >= 0) {
                io.reactivex.internal.a.b.requireNonNull(timeUnit2, "unit is null");
                io.reactivex.internal.a.b.requireNonNull(ahVar2, "scheduler is null");
                bt btVar = new bt(j, j6, Math.max(0, j5), Math.max(0, j4), timeUnit, ahVar);
                return a.onAssembly(btVar);
            }
            throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
        }
    }

    public static <T> j<T> just(T t) {
        io.reactivex.internal.a.b.requireNonNull(t, "item is null");
        return a.onAssembly(new bv(t));
    }

    public static <T> j<T> just(T t, T t2) {
        io.reactivex.internal.a.b.requireNonNull(t, "item1 is null");
        io.reactivex.internal.a.b.requireNonNull(t2, "item2 is null");
        return fromArray(t, t2);
    }

    public static <T> j<T> just(T t, T t2, T t3) {
        io.reactivex.internal.a.b.requireNonNull(t, "item1 is null");
        io.reactivex.internal.a.b.requireNonNull(t2, "item2 is null");
        io.reactivex.internal.a.b.requireNonNull(t3, "item3 is null");
        return fromArray(t, t2, t3);
    }

    public static <T> j<T> just(T t, T t2, T t3, T t4) {
        io.reactivex.internal.a.b.requireNonNull(t, "item1 is null");
        io.reactivex.internal.a.b.requireNonNull(t2, "item2 is null");
        io.reactivex.internal.a.b.requireNonNull(t3, "item3 is null");
        io.reactivex.internal.a.b.requireNonNull(t4, "item4 is null");
        return fromArray(t, t2, t3, t4);
    }

    public static <T> j<T> just(T t, T t2, T t3, T t4, T t5) {
        io.reactivex.internal.a.b.requireNonNull(t, "item1 is null");
        io.reactivex.internal.a.b.requireNonNull(t2, "item2 is null");
        io.reactivex.internal.a.b.requireNonNull(t3, "item3 is null");
        io.reactivex.internal.a.b.requireNonNull(t4, "item4 is null");
        io.reactivex.internal.a.b.requireNonNull(t5, "item5 is null");
        return fromArray(t, t2, t3, t4, t5);
    }

    public static <T> j<T> just(T t, T t2, T t3, T t4, T t5, T t6) {
        io.reactivex.internal.a.b.requireNonNull(t, "item1 is null");
        io.reactivex.internal.a.b.requireNonNull(t2, "item2 is null");
        io.reactivex.internal.a.b.requireNonNull(t3, "item3 is null");
        io.reactivex.internal.a.b.requireNonNull(t4, "item4 is null");
        io.reactivex.internal.a.b.requireNonNull(t5, "item5 is null");
        io.reactivex.internal.a.b.requireNonNull(t6, "item6 is null");
        return fromArray(t, t2, t3, t4, t5, t6);
    }

    public static <T> j<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7) {
        io.reactivex.internal.a.b.requireNonNull(t, "item1 is null");
        io.reactivex.internal.a.b.requireNonNull(t2, "item2 is null");
        io.reactivex.internal.a.b.requireNonNull(t3, "item3 is null");
        io.reactivex.internal.a.b.requireNonNull(t4, "item4 is null");
        io.reactivex.internal.a.b.requireNonNull(t5, "item5 is null");
        io.reactivex.internal.a.b.requireNonNull(t6, "item6 is null");
        io.reactivex.internal.a.b.requireNonNull(t7, "item7 is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7);
    }

    public static <T> j<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8) {
        io.reactivex.internal.a.b.requireNonNull(t, "item1 is null");
        io.reactivex.internal.a.b.requireNonNull(t2, "item2 is null");
        io.reactivex.internal.a.b.requireNonNull(t3, "item3 is null");
        io.reactivex.internal.a.b.requireNonNull(t4, "item4 is null");
        io.reactivex.internal.a.b.requireNonNull(t5, "item5 is null");
        io.reactivex.internal.a.b.requireNonNull(t6, "item6 is null");
        io.reactivex.internal.a.b.requireNonNull(t7, "item7 is null");
        io.reactivex.internal.a.b.requireNonNull(t8, "item8 is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7, t8);
    }

    public static <T> j<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9) {
        io.reactivex.internal.a.b.requireNonNull(t, "item1 is null");
        io.reactivex.internal.a.b.requireNonNull(t2, "item2 is null");
        io.reactivex.internal.a.b.requireNonNull(t3, "item3 is null");
        io.reactivex.internal.a.b.requireNonNull(t4, "item4 is null");
        io.reactivex.internal.a.b.requireNonNull(t5, "item5 is null");
        io.reactivex.internal.a.b.requireNonNull(t6, "item6 is null");
        io.reactivex.internal.a.b.requireNonNull(t7, "item7 is null");
        io.reactivex.internal.a.b.requireNonNull(t8, "item8 is null");
        io.reactivex.internal.a.b.requireNonNull(t9, "item9 is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7, t8, t9);
    }

    public static <T> j<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9, T t10) {
        io.reactivex.internal.a.b.requireNonNull(t, "item1 is null");
        io.reactivex.internal.a.b.requireNonNull(t2, "item2 is null");
        io.reactivex.internal.a.b.requireNonNull(t3, "item3 is null");
        io.reactivex.internal.a.b.requireNonNull(t4, "item4 is null");
        io.reactivex.internal.a.b.requireNonNull(t5, "item5 is null");
        io.reactivex.internal.a.b.requireNonNull(t6, "item6 is null");
        io.reactivex.internal.a.b.requireNonNull(t7, "item7 is null");
        io.reactivex.internal.a.b.requireNonNull(t8, "item8 is null");
        io.reactivex.internal.a.b.requireNonNull(t9, "item9 is null");
        io.reactivex.internal.a.b.requireNonNull(t10, "item10 is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7, t8, t9, t10);
    }

    public static <T> j<T> merge(Iterable<? extends b<? extends T>> iterable, int i, int i2) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.a.a.identity(), false, i, i2);
    }

    public static <T> j<T> mergeArray(int i, int i2, b<? extends T>... bVarArr) {
        return fromArray(bVarArr).flatMap(io.reactivex.internal.a.a.identity(), false, i, i2);
    }

    public static <T> j<T> merge(Iterable<? extends b<? extends T>> iterable) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.a.a.identity());
    }

    public static <T> j<T> merge(Iterable<? extends b<? extends T>> iterable, int i) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.a.a.identity(), i);
    }

    public static <T> j<T> merge(b<? extends b<? extends T>> bVar) {
        return merge(bVar, bufferSize());
    }

    public static <T> j<T> merge(b<? extends b<? extends T>> bVar, int i) {
        return fromPublisher(bVar).flatMap(io.reactivex.internal.a.a.identity(), i);
    }

    public static <T> j<T> mergeArray(b<? extends T>... bVarArr) {
        return fromArray(bVarArr).flatMap(io.reactivex.internal.a.a.identity(), bVarArr.length);
    }

    public static <T> j<T> merge(b<? extends T> bVar, b<? extends T> bVar2) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        return fromArray(bVar, bVar2).flatMap(io.reactivex.internal.a.a.identity(), false, 2);
    }

    public static <T> j<T> merge(b<? extends T> bVar, b<? extends T> bVar2, b<? extends T> bVar3) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        return fromArray(bVar, bVar2, bVar3).flatMap(io.reactivex.internal.a.a.identity(), false, 3);
    }

    public static <T> j<T> merge(b<? extends T> bVar, b<? extends T> bVar2, b<? extends T> bVar3, b<? extends T> bVar4) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        return fromArray(bVar, bVar2, bVar3, bVar4).flatMap(io.reactivex.internal.a.a.identity(), false, 4);
    }

    public static <T> j<T> mergeDelayError(Iterable<? extends b<? extends T>> iterable) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.a.a.identity(), true);
    }

    public static <T> j<T> mergeDelayError(Iterable<? extends b<? extends T>> iterable, int i, int i2) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.a.a.identity(), true, i, i2);
    }

    public static <T> j<T> mergeArrayDelayError(int i, int i2, b<? extends T>... bVarArr) {
        return fromArray(bVarArr).flatMap(io.reactivex.internal.a.a.identity(), true, i, i2);
    }

    public static <T> j<T> mergeDelayError(Iterable<? extends b<? extends T>> iterable, int i) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.a.a.identity(), true, i);
    }

    public static <T> j<T> mergeDelayError(b<? extends b<? extends T>> bVar) {
        return mergeDelayError(bVar, bufferSize());
    }

    public static <T> j<T> mergeDelayError(b<? extends b<? extends T>> bVar, int i) {
        return fromPublisher(bVar).flatMap(io.reactivex.internal.a.a.identity(), true, i);
    }

    public static <T> j<T> mergeArrayDelayError(b<? extends T>... bVarArr) {
        return fromArray(bVarArr).flatMap(io.reactivex.internal.a.a.identity(), true, bVarArr.length);
    }

    public static <T> j<T> mergeDelayError(b<? extends T> bVar, b<? extends T> bVar2) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        return fromArray(bVar, bVar2).flatMap(io.reactivex.internal.a.a.identity(), true, 2);
    }

    public static <T> j<T> mergeDelayError(b<? extends T> bVar, b<? extends T> bVar2, b<? extends T> bVar3) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        return fromArray(bVar, bVar2, bVar3).flatMap(io.reactivex.internal.a.a.identity(), true, 3);
    }

    public static <T> j<T> mergeDelayError(b<? extends T> bVar, b<? extends T> bVar2, b<? extends T> bVar3, b<? extends T> bVar4) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        return fromArray(bVar, bVar2, bVar3, bVar4).flatMap(io.reactivex.internal.a.a.identity(), true, 4);
    }

    public static <T> j<T> never() {
        return a.onAssembly(ch.INSTANCE);
    }

    public static j<Integer> range(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was ".concat(String.valueOf(i2)));
        } else if (i2 == 0) {
            return empty();
        } else {
            if (i2 == 1) {
                return just(Integer.valueOf(i));
            }
            if (((long) i) + ((long) (i2 - 1)) <= 2147483647L) {
                return a.onAssembly(new cu(i, i2));
            }
            throw new IllegalArgumentException("Integer overflow");
        }
    }

    public static j<Long> rangeLong(long j, long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was ".concat(String.valueOf(j2)));
        } else if (j2 == 0) {
            return empty();
        } else {
            if (j2 == 1) {
                return just(Long.valueOf(j));
            }
            long j3 = (j2 - 1) + j;
            if (j <= 0 || j3 >= 0) {
                return a.onAssembly(new cv(j, j2));
            }
            throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
        }
    }

    public static <T> ai<Boolean> sequenceEqual(b<? extends T> bVar, b<? extends T> bVar2) {
        return sequenceEqual(bVar, bVar2, io.reactivex.internal.a.b.equalsPredicate(), bufferSize());
    }

    public static <T> ai<Boolean> sequenceEqual(b<? extends T> bVar, b<? extends T> bVar2, d<? super T, ? super T> dVar) {
        return sequenceEqual(bVar, bVar2, dVar, bufferSize());
    }

    public static <T> ai<Boolean> sequenceEqual(b<? extends T> bVar, b<? extends T> bVar2, d<? super T, ? super T> dVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(dVar, "isEqual is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return a.onAssembly(new Cdo(bVar, bVar2, dVar, i));
    }

    public static <T> ai<Boolean> sequenceEqual(b<? extends T> bVar, b<? extends T> bVar2, int i) {
        return sequenceEqual(bVar, bVar2, io.reactivex.internal.a.b.equalsPredicate(), i);
    }

    public static <T> j<T> switchOnNext(b<? extends b<? extends T>> bVar, int i) {
        return fromPublisher(bVar).switchMap(io.reactivex.internal.a.a.identity(), i);
    }

    public static <T> j<T> switchOnNext(b<? extends b<? extends T>> bVar) {
        return fromPublisher(bVar).switchMap(io.reactivex.internal.a.a.identity());
    }

    public static <T> j<T> switchOnNextDelayError(b<? extends b<? extends T>> bVar) {
        return switchOnNextDelayError(bVar, bufferSize());
    }

    public static <T> j<T> switchOnNextDelayError(b<? extends b<? extends T>> bVar, int i) {
        return fromPublisher(bVar).switchMapDelayError(io.reactivex.internal.a.a.identity(), i);
    }

    public static j<Long> timer(long j, TimeUnit timeUnit) {
        return timer(j, timeUnit, io.reactivex.i.a.computation());
    }

    public static j<Long> timer(long j, TimeUnit timeUnit, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        return a.onAssembly(new eo(Math.max(0, j), timeUnit, ahVar));
    }

    public static <T> j<T> unsafeCreate(b<T> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "onSubscribe is null");
        if (!(bVar instanceof j)) {
            return a.onAssembly(new bl(bVar));
        }
        throw new IllegalArgumentException("unsafeCreate(Flowable) should be upgraded");
    }

    public static <T, D> j<T> using(Callable<? extends D> callable, io.reactivex.e.h<? super D, ? extends b<? extends T>> hVar, g<? super D> gVar) {
        return using(callable, hVar, gVar, true);
    }

    public static <T, D> j<T> using(Callable<? extends D> callable, io.reactivex.e.h<? super D, ? extends b<? extends T>> hVar, g<? super D> gVar, boolean z) {
        io.reactivex.internal.a.b.requireNonNull(callable, "resourceSupplier is null");
        io.reactivex.internal.a.b.requireNonNull(hVar, "sourceSupplier is null");
        io.reactivex.internal.a.b.requireNonNull(gVar, "resourceDisposer is null");
        return a.onAssembly(new es(callable, hVar, gVar, z));
    }

    public static <T, R> j<R> zip(Iterable<? extends b<? extends T>> iterable, io.reactivex.e.h<? super Object[], ? extends R> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "zipper is null");
        io.reactivex.internal.a.b.requireNonNull(iterable, "sources is null");
        fa faVar = new fa(null, iterable, hVar, bufferSize(), false);
        return a.onAssembly(faVar);
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [io.reactivex.e.h<? super java.lang.Object[], ? extends R>, java.lang.Object, io.reactivex.e.h] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <T, R> io.reactivex.j<R> zip(org.b.b<? extends org.b.b<? extends T>> r1, io.reactivex.e.h<? super java.lang.Object[], ? extends R> r2) {
        /*
            java.lang.String r0 = "zipper is null"
            io.reactivex.internal.a.b.requireNonNull(r2, (java.lang.String) r0)
            io.reactivex.j r1 = fromPublisher(r1)
            io.reactivex.ai r1 = r1.toList()
            io.reactivex.e.h r2 = io.reactivex.internal.operators.flowable.FlowableInternalHelper.zipIterable(r2)
            io.reactivex.j r1 = r1.flatMapPublisher(r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.j.zip(org.b.b, io.reactivex.e.h):io.reactivex.j");
    }

    public static <T1, T2, R> j<R> zip(b<? extends T1> bVar, b<? extends T2> bVar2, io.reactivex.e.c<? super T1, ? super T2, ? extends R> cVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(cVar), false, bufferSize(), bVar, bVar2);
    }

    public static <T1, T2, R> j<R> zip(b<? extends T1> bVar, b<? extends T2> bVar2, io.reactivex.e.c<? super T1, ? super T2, ? extends R> cVar, boolean z) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(cVar), z, bufferSize(), bVar, bVar2);
    }

    public static <T1, T2, R> j<R> zip(b<? extends T1> bVar, b<? extends T2> bVar2, io.reactivex.e.c<? super T1, ? super T2, ? extends R> cVar, boolean z, int i) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(cVar), z, i, bVar, bVar2);
    }

    public static <T1, T2, T3, R> j<R> zip(b<? extends T1> bVar, b<? extends T2> bVar2, b<? extends T3> bVar3, i<? super T1, ? super T2, ? super T3, ? extends R> iVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(iVar), false, bufferSize(), bVar, bVar2, bVar3);
    }

    public static <T1, T2, T3, T4, R> j<R> zip(b<? extends T1> bVar, b<? extends T2> bVar2, b<? extends T3> bVar3, b<? extends T4> bVar4, io.reactivex.e.j<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> jVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(jVar), false, bufferSize(), bVar, bVar2, bVar3, bVar4);
    }

    public static <T1, T2, T3, T4, T5, R> j<R> zip(b<? extends T1> bVar, b<? extends T2> bVar2, b<? extends T3> bVar3, b<? extends T4> bVar4, b<? extends T5> bVar5, k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> kVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar5, "source5 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(kVar), false, bufferSize(), bVar, bVar2, bVar3, bVar4, bVar5);
    }

    public static <T1, T2, T3, T4, T5, T6, R> j<R> zip(b<? extends T1> bVar, b<? extends T2> bVar2, b<? extends T3> bVar3, b<? extends T4> bVar4, b<? extends T5> bVar5, b<? extends T6> bVar6, l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> lVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar5, "source5 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar6, "source6 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(lVar), false, bufferSize(), bVar, bVar2, bVar3, bVar4, bVar5, bVar6);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> j<R> zip(b<? extends T1> bVar, b<? extends T2> bVar2, b<? extends T3> bVar3, b<? extends T4> bVar4, b<? extends T5> bVar5, b<? extends T6> bVar6, b<? extends T7> bVar7, m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> mVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar5, "source5 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar6, "source6 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar7, "source7 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(mVar), false, bufferSize(), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> j<R> zip(b<? extends T1> bVar, b<? extends T2> bVar2, b<? extends T3> bVar3, b<? extends T4> bVar4, b<? extends T5> bVar5, b<? extends T6> bVar6, b<? extends T7> bVar7, b<? extends T8> bVar8, n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> nVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar5, "source5 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar6, "source6 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar7, "source7 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar8, "source8 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(nVar), false, bufferSize(), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> j<R> zip(b<? extends T1> bVar, b<? extends T2> bVar2, b<? extends T3> bVar3, b<? extends T4> bVar4, b<? extends T5> bVar5, b<? extends T6> bVar6, b<? extends T7> bVar7, b<? extends T8> bVar8, b<? extends T9> bVar9, o<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> oVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar5, "source5 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar6, "source6 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar7, "source7 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar8, "source8 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar9, "source9 is null");
        return zipArray(io.reactivex.internal.a.a.toFunction(oVar), false, bufferSize(), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8, bVar9);
    }

    public static <T, R> j<R> zipArray(io.reactivex.e.h<? super Object[], ? extends R> hVar, boolean z, int i, b<? extends T>... bVarArr) {
        if (bVarArr.length == 0) {
            return empty();
        }
        io.reactivex.internal.a.b.requireNonNull(hVar, "zipper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        fa faVar = new fa(bVarArr, null, hVar, i, z);
        return a.onAssembly(faVar);
    }

    public static <T, R> j<R> zipIterable(Iterable<? extends b<? extends T>> iterable, io.reactivex.e.h<? super Object[], ? extends R> hVar, boolean z, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "zipper is null");
        io.reactivex.internal.a.b.requireNonNull(iterable, "sources is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        fa faVar = new fa(null, iterable, hVar, i, z);
        return a.onAssembly(faVar);
    }

    public final ai<Boolean> all(q<? super T> qVar) {
        io.reactivex.internal.a.b.requireNonNull(qVar, "predicate is null");
        return a.onAssembly(new io.reactivex.internal.operators.flowable.g(this, qVar));
    }

    public final j<T> ambWith(b<? extends T> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "other is null");
        return ambArray(this, bVar);
    }

    public final ai<Boolean> any(q<? super T> qVar) {
        io.reactivex.internal.a.b.requireNonNull(qVar, "predicate is null");
        return a.onAssembly(new io.reactivex.internal.operators.flowable.j(this, qVar));
    }

    public final <R> R as(k<T, ? extends R> kVar) {
        return ((k) io.reactivex.internal.a.b.requireNonNull(kVar, "converter is null")).apply(this);
    }

    public final T blockingFirst() {
        io.reactivex.internal.f.d dVar = new io.reactivex.internal.f.d();
        subscribe(dVar);
        T blockingGet = dVar.blockingGet();
        if (blockingGet != null) {
            return blockingGet;
        }
        throw new NoSuchElementException();
    }

    public final T blockingFirst(T t) {
        io.reactivex.internal.f.d dVar = new io.reactivex.internal.f.d();
        subscribe(dVar);
        T blockingGet = dVar.blockingGet();
        return blockingGet != null ? blockingGet : t;
    }

    public final void blockingForEach(g<? super T> gVar) {
        Iterator it = blockingIterable().iterator();
        while (it.hasNext()) {
            try {
                gVar.accept(it.next());
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                ((io.reactivex.b.c) it).dispose();
                throw io.reactivex.internal.util.h.wrapOrThrow(th);
            }
        }
    }

    public final Iterable<T> blockingIterable() {
        return blockingIterable(bufferSize());
    }

    public final Iterable<T> blockingIterable(int i) {
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return new io.reactivex.internal.operators.flowable.b(this, i);
    }

    public final T blockingLast() {
        e eVar = new e();
        subscribe(eVar);
        T blockingGet = eVar.blockingGet();
        if (blockingGet != null) {
            return blockingGet;
        }
        throw new NoSuchElementException();
    }

    public final T blockingLast(T t) {
        e eVar = new e();
        subscribe(eVar);
        T blockingGet = eVar.blockingGet();
        return blockingGet != null ? blockingGet : t;
    }

    public final Iterable<T> blockingLatest() {
        return new io.reactivex.internal.operators.flowable.c(this);
    }

    public final Iterable<T> blockingMostRecent(T t) {
        return new io.reactivex.internal.operators.flowable.d(this, t);
    }

    public final Iterable<T> blockingNext() {
        return new io.reactivex.internal.operators.flowable.e(this);
    }

    public final T blockingSingle() {
        return singleOrError().blockingGet();
    }

    public final T blockingSingle(T t) {
        return single(t).blockingGet();
    }

    public final Future<T> toFuture() {
        return (Future) subscribeWith(new io.reactivex.internal.f.j());
    }

    public final void blockingSubscribe() {
        io.reactivex.internal.operators.flowable.l.subscribe(this);
    }

    public final void blockingSubscribe(g<? super T> gVar) {
        io.reactivex.internal.operators.flowable.l.subscribe(this, gVar, io.reactivex.internal.a.a.ON_ERROR_MISSING, io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    public final void blockingSubscribe(g<? super T> gVar, int i) {
        io.reactivex.internal.operators.flowable.l.subscribe(this, gVar, io.reactivex.internal.a.a.ON_ERROR_MISSING, io.reactivex.internal.a.a.EMPTY_ACTION, i);
    }

    public final void blockingSubscribe(g<? super T> gVar, g<? super Throwable> gVar2) {
        io.reactivex.internal.operators.flowable.l.subscribe(this, gVar, gVar2, io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    public final void blockingSubscribe(g<? super T> gVar, g<? super Throwable> gVar2, int i) {
        io.reactivex.internal.operators.flowable.l.subscribe(this, gVar, gVar2, io.reactivex.internal.a.a.EMPTY_ACTION, i);
    }

    public final void blockingSubscribe(g<? super T> gVar, g<? super Throwable> gVar2, io.reactivex.e.a aVar) {
        io.reactivex.internal.operators.flowable.l.subscribe(this, gVar, gVar2, aVar);
    }

    public final void blockingSubscribe(g<? super T> gVar, g<? super Throwable> gVar2, io.reactivex.e.a aVar, int i) {
        io.reactivex.internal.operators.flowable.l.subscribe(this, gVar, gVar2, aVar, i);
    }

    public final void blockingSubscribe(c<? super T> cVar) {
        io.reactivex.internal.operators.flowable.l.subscribe(this, cVar);
    }

    public final j<List<T>> buffer(int i) {
        return buffer(i, i);
    }

    public final j<List<T>> buffer(int i, int i2) {
        return buffer(i, i2, ArrayListSupplier.asCallable());
    }

    public final <U extends Collection<? super T>> j<U> buffer(int i, int i2, Callable<U> callable) {
        io.reactivex.internal.a.b.verifyPositive(i, "count");
        io.reactivex.internal.a.b.verifyPositive(i2, "skip");
        io.reactivex.internal.a.b.requireNonNull(callable, "bufferSupplier is null");
        return a.onAssembly(new io.reactivex.internal.operators.flowable.m(this, i, i2, callable));
    }

    public final <U extends Collection<? super T>> j<U> buffer(int i, Callable<U> callable) {
        return buffer(i, i, callable);
    }

    public final j<List<T>> buffer(long j, long j2, TimeUnit timeUnit) {
        return buffer(j, j2, timeUnit, io.reactivex.i.a.computation(), ArrayListSupplier.asCallable());
    }

    public final j<List<T>> buffer(long j, long j2, TimeUnit timeUnit, ah ahVar) {
        return buffer(j, j2, timeUnit, ahVar, ArrayListSupplier.asCallable());
    }

    public final <U extends Collection<? super T>> j<U> buffer(long j, long j2, TimeUnit timeUnit, ah ahVar, Callable<U> callable) {
        TimeUnit timeUnit2 = timeUnit;
        io.reactivex.internal.a.b.requireNonNull(timeUnit2, "unit is null");
        ah ahVar2 = ahVar;
        io.reactivex.internal.a.b.requireNonNull(ahVar2, "scheduler is null");
        Callable<U> callable2 = callable;
        io.reactivex.internal.a.b.requireNonNull(callable2, "bufferSupplier is null");
        io.reactivex.internal.operators.flowable.q qVar = new io.reactivex.internal.operators.flowable.q(this, j, j2, timeUnit2, ahVar2, callable2, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, false);
        return a.onAssembly(qVar);
    }

    public final j<List<T>> buffer(long j, TimeUnit timeUnit) {
        return buffer(j, timeUnit, io.reactivex.i.a.computation(), (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public final j<List<T>> buffer(long j, TimeUnit timeUnit, int i) {
        return buffer(j, timeUnit, io.reactivex.i.a.computation(), i);
    }

    public final j<List<T>> buffer(long j, TimeUnit timeUnit, ah ahVar, int i) {
        return buffer(j, timeUnit, ahVar, i, ArrayListSupplier.asCallable(), false);
    }

    public final <U extends Collection<? super T>> j<U> buffer(long j, TimeUnit timeUnit, ah ahVar, int i, Callable<U> callable, boolean z) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        ah ahVar2 = ahVar;
        io.reactivex.internal.a.b.requireNonNull(ahVar2, "scheduler is null");
        Callable<U> callable2 = callable;
        io.reactivex.internal.a.b.requireNonNull(callable2, "bufferSupplier is null");
        int i2 = i;
        io.reactivex.internal.a.b.verifyPositive(i2, "count");
        io.reactivex.internal.operators.flowable.q qVar = new io.reactivex.internal.operators.flowable.q(this, j, j, timeUnit, ahVar2, callable2, i2, z);
        return a.onAssembly(qVar);
    }

    public final j<List<T>> buffer(long j, TimeUnit timeUnit, ah ahVar) {
        return buffer(j, timeUnit, ahVar, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ArrayListSupplier.asCallable(), false);
    }

    public final <TOpening, TClosing> j<List<T>> buffer(j<? extends TOpening> jVar, io.reactivex.e.h<? super TOpening, ? extends b<? extends TClosing>> hVar) {
        return buffer(jVar, hVar, ArrayListSupplier.asCallable());
    }

    public final <TOpening, TClosing, U extends Collection<? super T>> j<U> buffer(j<? extends TOpening> jVar, io.reactivex.e.h<? super TOpening, ? extends b<? extends TClosing>> hVar, Callable<U> callable) {
        io.reactivex.internal.a.b.requireNonNull(jVar, "openingIndicator is null");
        io.reactivex.internal.a.b.requireNonNull(hVar, "closingIndicator is null");
        io.reactivex.internal.a.b.requireNonNull(callable, "bufferSupplier is null");
        return a.onAssembly(new io.reactivex.internal.operators.flowable.n(this, jVar, hVar, callable));
    }

    public final <B> j<List<T>> buffer(b<B> bVar) {
        return buffer(bVar, ArrayListSupplier.asCallable());
    }

    public final <B> j<List<T>> buffer(b<B> bVar, int i) {
        io.reactivex.internal.a.b.verifyPositive(i, "initialCapacity");
        return buffer(bVar, io.reactivex.internal.a.a.createArrayList(i));
    }

    public final <B, U extends Collection<? super T>> j<U> buffer(b<B> bVar, Callable<U> callable) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "boundaryIndicator is null");
        io.reactivex.internal.a.b.requireNonNull(callable, "bufferSupplier is null");
        return a.onAssembly(new p(this, bVar, callable));
    }

    public final <B> j<List<T>> buffer(Callable<? extends b<B>> callable) {
        return buffer(callable, ArrayListSupplier.asCallable());
    }

    public final <B, U extends Collection<? super T>> j<U> buffer(Callable<? extends b<B>> callable, Callable<U> callable2) {
        io.reactivex.internal.a.b.requireNonNull(callable, "boundaryIndicatorSupplier is null");
        io.reactivex.internal.a.b.requireNonNull(callable2, "bufferSupplier is null");
        return a.onAssembly(new io.reactivex.internal.operators.flowable.o(this, callable, callable2));
    }

    public final j<T> cache() {
        return cacheWithInitialCapacity(16);
    }

    public final j<T> cacheWithInitialCapacity(int i) {
        io.reactivex.internal.a.b.verifyPositive(i, "initialCapacity");
        return a.onAssembly(new r(this, i));
    }

    public final <U> j<U> cast(Class<U> cls) {
        io.reactivex.internal.a.b.requireNonNull(cls, "clazz is null");
        return map(io.reactivex.internal.a.a.castFunction(cls));
    }

    public final <U> ai<U> collect(Callable<? extends U> callable, io.reactivex.e.b<? super U, ? super T> bVar) {
        io.reactivex.internal.a.b.requireNonNull(callable, "initialItemSupplier is null");
        io.reactivex.internal.a.b.requireNonNull(bVar, "collector is null");
        return a.onAssembly(new t(this, callable, bVar));
    }

    public final <U> ai<U> collectInto(U u, io.reactivex.e.b<? super U, ? super T> bVar) {
        io.reactivex.internal.a.b.requireNonNull(u, "initialItem is null");
        return collect(io.reactivex.internal.a.a.justCallable(u), bVar);
    }

    public final <R> j<R> compose(p<? super T, ? extends R> pVar) {
        return fromPublisher(((p) io.reactivex.internal.a.b.requireNonNull(pVar, "composer is null")).apply(this));
    }

    public final <R> j<R> concatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar) {
        return concatMap(hVar, 2);
    }

    public final <R> j<R> concatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        if (!(this instanceof io.reactivex.internal.b.h)) {
            return a.onAssembly(new w(this, hVar, i, ErrorMode.IMMEDIATE));
        }
        Object call = ((io.reactivex.internal.b.h) this).call();
        if (call == null) {
            return empty();
        }
        return dk.scalarXMap(call, hVar);
    }

    public final a concatMapCompletable(io.reactivex.e.h<? super T, ? extends g> hVar) {
        return concatMapCompletable(hVar, 2);
    }

    public final a concatMapCompletable(io.reactivex.e.h<? super T, ? extends g> hVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        return a.onAssembly((a) new io.reactivex.internal.operators.b.c(this, hVar, ErrorMode.IMMEDIATE, i));
    }

    public final a concatMapCompletableDelayError(io.reactivex.e.h<? super T, ? extends g> hVar) {
        return concatMapCompletableDelayError(hVar, true, 2);
    }

    public final a concatMapCompletableDelayError(io.reactivex.e.h<? super T, ? extends g> hVar, boolean z) {
        return concatMapCompletableDelayError(hVar, z, 2);
    }

    public final a concatMapCompletableDelayError(io.reactivex.e.h<? super T, ? extends g> hVar, boolean z, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        return a.onAssembly((a) new io.reactivex.internal.operators.b.c(this, hVar, z ? ErrorMode.END : ErrorMode.BOUNDARY, i));
    }

    public final <R> j<R> concatMapDelayError(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar) {
        return concatMapDelayError(hVar, 2, true);
    }

    public final <R> j<R> concatMapDelayError(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, int i, boolean z) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        if (this instanceof io.reactivex.internal.b.h) {
            Object call = ((io.reactivex.internal.b.h) this).call();
            if (call == null) {
                return empty();
            }
            return dk.scalarXMap(call, hVar);
        }
        return a.onAssembly(new w(this, hVar, i, z ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    public final <R> j<R> concatMapEager(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar) {
        return concatMapEager(hVar, bufferSize(), bufferSize());
    }

    public final <R> j<R> concatMapEager(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, int i, int i2) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "maxConcurrency");
        io.reactivex.internal.a.b.verifyPositive(i2, "prefetch");
        x xVar = new x(this, hVar, i, i2, ErrorMode.IMMEDIATE);
        return a.onAssembly(xVar);
    }

    public final <R> j<R> concatMapEagerDelayError(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, boolean z) {
        return concatMapEagerDelayError(hVar, bufferSize(), bufferSize(), z);
    }

    public final <R> j<R> concatMapEagerDelayError(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, int i, int i2, boolean z) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "maxConcurrency");
        io.reactivex.internal.a.b.verifyPositive(i2, "prefetch");
        x xVar = new x(this, hVar, i, i2, z ? ErrorMode.END : ErrorMode.BOUNDARY);
        return a.onAssembly(xVar);
    }

    public final <U> j<U> concatMapIterable(io.reactivex.e.h<? super T, ? extends Iterable<? extends U>> hVar) {
        return concatMapIterable(hVar, 2);
    }

    public final <U> j<U> concatMapIterable(io.reactivex.e.h<? super T, ? extends Iterable<? extends U>> hVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        return a.onAssembly(new bf(this, hVar, i));
    }

    public final <R> j<R> concatMapMaybe(io.reactivex.e.h<? super T, ? extends w<? extends R>> hVar) {
        return concatMapMaybe(hVar, 2);
    }

    public final <R> j<R> concatMapMaybe(io.reactivex.e.h<? super T, ? extends w<? extends R>> hVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        return a.onAssembly(new io.reactivex.internal.operators.b.d(this, hVar, ErrorMode.IMMEDIATE, i));
    }

    public final <R> j<R> concatMapMaybeDelayError(io.reactivex.e.h<? super T, ? extends w<? extends R>> hVar) {
        return concatMapMaybeDelayError(hVar, true, 2);
    }

    public final <R> j<R> concatMapMaybeDelayError(io.reactivex.e.h<? super T, ? extends w<? extends R>> hVar, boolean z) {
        return concatMapMaybeDelayError(hVar, z, 2);
    }

    public final <R> j<R> concatMapMaybeDelayError(io.reactivex.e.h<? super T, ? extends w<? extends R>> hVar, boolean z, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        return a.onAssembly(new io.reactivex.internal.operators.b.d(this, hVar, z ? ErrorMode.END : ErrorMode.BOUNDARY, i));
    }

    public final <R> j<R> concatMapSingle(io.reactivex.e.h<? super T, ? extends ao<? extends R>> hVar) {
        return concatMapSingle(hVar, 2);
    }

    public final <R> j<R> concatMapSingle(io.reactivex.e.h<? super T, ? extends ao<? extends R>> hVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        return a.onAssembly(new io.reactivex.internal.operators.b.e(this, hVar, ErrorMode.IMMEDIATE, i));
    }

    public final <R> j<R> concatMapSingleDelayError(io.reactivex.e.h<? super T, ? extends ao<? extends R>> hVar) {
        return concatMapSingleDelayError(hVar, true, 2);
    }

    public final <R> j<R> concatMapSingleDelayError(io.reactivex.e.h<? super T, ? extends ao<? extends R>> hVar, boolean z) {
        return concatMapSingleDelayError(hVar, z, 2);
    }

    public final <R> j<R> concatMapSingleDelayError(io.reactivex.e.h<? super T, ? extends ao<? extends R>> hVar, boolean z, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        return a.onAssembly(new io.reactivex.internal.operators.b.e(this, hVar, z ? ErrorMode.END : ErrorMode.BOUNDARY, i));
    }

    public final j<T> concatWith(b<? extends T> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "other is null");
        return concat(this, (j) bVar);
    }

    public final j<T> concatWith(ao<? extends T> aoVar) {
        io.reactivex.internal.a.b.requireNonNull(aoVar, "other is null");
        return a.onAssembly(new ac(this, aoVar));
    }

    public final j<T> concatWith(w<? extends T> wVar) {
        io.reactivex.internal.a.b.requireNonNull(wVar, "other is null");
        return a.onAssembly(new ab(this, wVar));
    }

    public final j<T> concatWith(g gVar) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "other is null");
        return a.onAssembly(new aa(this, gVar));
    }

    public final ai<Boolean> contains(Object obj) {
        io.reactivex.internal.a.b.requireNonNull(obj, "item is null");
        return any(io.reactivex.internal.a.a.equalsWith(obj));
    }

    public final ai<Long> count() {
        return a.onAssembly(new ae(this));
    }

    public final <U> j<T> debounce(io.reactivex.e.h<? super T, ? extends b<U>> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "debounceIndicator is null");
        return a.onAssembly(new ag(this, hVar));
    }

    public final j<T> debounce(long j, TimeUnit timeUnit) {
        return debounce(j, timeUnit, io.reactivex.i.a.computation());
    }

    public final j<T> debounce(long j, TimeUnit timeUnit, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        ah ahVar2 = new ah(this, j, timeUnit, ahVar);
        return a.onAssembly(ahVar2);
    }

    public final j<T> defaultIfEmpty(T t) {
        io.reactivex.internal.a.b.requireNonNull(t, "defaultItem is null");
        return switchIfEmpty(just(t));
    }

    public final <U> j<T> delay(io.reactivex.e.h<? super T, ? extends b<U>> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "itemDelayIndicator is null");
        return flatMap(FlowableInternalHelper.itemDelay(hVar));
    }

    public final j<T> delay(long j, TimeUnit timeUnit) {
        return delay(j, timeUnit, io.reactivex.i.a.computation(), false);
    }

    public final j<T> delay(long j, TimeUnit timeUnit, boolean z) {
        return delay(j, timeUnit, io.reactivex.i.a.computation(), z);
    }

    public final j<T> delay(long j, TimeUnit timeUnit, ah ahVar) {
        return delay(j, timeUnit, ahVar, false);
    }

    public final j<T> delay(long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        aj ajVar = new aj(this, Math.max(0, j), timeUnit, ahVar, z);
        return a.onAssembly(ajVar);
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [io.reactivex.e.h<? super T, ? extends org.b.b<V>>, io.reactivex.e.h] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final <U, V> io.reactivex.j<T> delay(org.b.b<U> r1, io.reactivex.e.h<? super T, ? extends org.b.b<V>> r2) {
        /*
            r0 = this;
            io.reactivex.j r1 = r0.delaySubscription(r1)
            io.reactivex.j r1 = r1.delay(r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.j.delay(org.b.b, io.reactivex.e.h):io.reactivex.j");
    }

    public final <U> j<T> delaySubscription(b<U> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "subscriptionIndicator is null");
        return a.onAssembly(new ak(this, bVar));
    }

    public final j<T> delaySubscription(long j, TimeUnit timeUnit) {
        return delaySubscription(j, timeUnit, io.reactivex.i.a.computation());
    }

    public final j<T> delaySubscription(long j, TimeUnit timeUnit, ah ahVar) {
        return delaySubscription(timer(j, timeUnit, ahVar));
    }

    @Deprecated
    public final <T2> j<T2> dematerialize() {
        return a.onAssembly(new al(this, io.reactivex.internal.a.a.identity()));
    }

    public final <R> j<R> dematerialize(io.reactivex.e.h<? super T, y<R>> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "selector is null");
        return a.onAssembly(new al(this, hVar));
    }

    public final j<T> distinct() {
        return distinct(io.reactivex.internal.a.a.identity(), io.reactivex.internal.a.a.createHashSet());
    }

    public final <K> j<T> distinct(io.reactivex.e.h<? super T, K> hVar) {
        return distinct(hVar, io.reactivex.internal.a.a.createHashSet());
    }

    public final <K> j<T> distinct(io.reactivex.e.h<? super T, K> hVar, Callable<? extends Collection<? super K>> callable) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "keySelector is null");
        io.reactivex.internal.a.b.requireNonNull(callable, "collectionSupplier is null");
        return a.onAssembly(new an(this, hVar, callable));
    }

    public final j<T> distinctUntilChanged() {
        return distinctUntilChanged(io.reactivex.internal.a.a.identity());
    }

    public final <K> j<T> distinctUntilChanged(io.reactivex.e.h<? super T, K> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "keySelector is null");
        return a.onAssembly(new ao(this, hVar, io.reactivex.internal.a.b.equalsPredicate()));
    }

    public final j<T> distinctUntilChanged(d<? super T, ? super T> dVar) {
        io.reactivex.internal.a.b.requireNonNull(dVar, "comparer is null");
        return a.onAssembly(new ao(this, io.reactivex.internal.a.a.identity(), dVar));
    }

    public final j<T> doFinally(io.reactivex.e.a aVar) {
        io.reactivex.internal.a.b.requireNonNull(aVar, "onFinally is null");
        return a.onAssembly(new aq(this, aVar));
    }

    public final j<T> doAfterNext(g<? super T> gVar) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "onAfterNext is null");
        return a.onAssembly(new ap(this, gVar));
    }

    public final j<T> doAfterTerminate(io.reactivex.e.a aVar) {
        return a(io.reactivex.internal.a.a.emptyConsumer(), (g<? super Throwable>) io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.EMPTY_ACTION, aVar);
    }

    public final j<T> doOnCancel(io.reactivex.e.a aVar) {
        return doOnLifecycle(io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.EMPTY_LONG_CONSUMER, aVar);
    }

    public final j<T> doOnComplete(io.reactivex.e.a aVar) {
        return a(io.reactivex.internal.a.a.emptyConsumer(), (g<? super Throwable>) io.reactivex.internal.a.a.emptyConsumer(), aVar, io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    private j<T> a(g<? super T> gVar, g<? super Throwable> gVar2, io.reactivex.e.a aVar, io.reactivex.e.a aVar2) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "onNext is null");
        io.reactivex.internal.a.b.requireNonNull(gVar2, "onError is null");
        io.reactivex.internal.a.b.requireNonNull(aVar, "onComplete is null");
        io.reactivex.internal.a.b.requireNonNull(aVar2, "onAfterTerminate is null");
        ar arVar = new ar(this, gVar, gVar2, aVar, aVar2);
        return a.onAssembly(arVar);
    }

    public final j<T> doOnEach(g<? super y<T>> gVar) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "onNotification is null");
        return a(io.reactivex.internal.a.a.notificationOnNext(gVar), (g<? super Throwable>) io.reactivex.internal.a.a.notificationOnError(gVar), io.reactivex.internal.a.a.notificationOnComplete(gVar), io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    public final j<T> doOnEach(c<? super T> cVar) {
        io.reactivex.internal.a.b.requireNonNull(cVar, "subscriber is null");
        return a(FlowableInternalHelper.subscriberOnNext(cVar), (g<? super Throwable>) FlowableInternalHelper.subscriberOnError(cVar), FlowableInternalHelper.subscriberOnComplete(cVar), io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    public final j<T> doOnError(g<? super Throwable> gVar) {
        g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar = io.reactivex.internal.a.a.EMPTY_ACTION;
        return a(emptyConsumer, gVar, aVar, aVar);
    }

    public final j<T> doOnLifecycle(g<? super org.b.d> gVar, io.reactivex.e.p pVar, io.reactivex.e.a aVar) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "onSubscribe is null");
        io.reactivex.internal.a.b.requireNonNull(pVar, "onRequest is null");
        io.reactivex.internal.a.b.requireNonNull(aVar, "onCancel is null");
        return a.onAssembly(new as(this, gVar, pVar, aVar));
    }

    public final j<T> doOnNext(g<? super T> gVar) {
        g emptyConsumer = io.reactivex.internal.a.a.emptyConsumer();
        io.reactivex.e.a aVar = io.reactivex.internal.a.a.EMPTY_ACTION;
        return a(gVar, (g<? super Throwable>) emptyConsumer, aVar, aVar);
    }

    public final j<T> doOnRequest(io.reactivex.e.p pVar) {
        return doOnLifecycle(io.reactivex.internal.a.a.emptyConsumer(), pVar, io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    public final j<T> doOnSubscribe(g<? super org.b.d> gVar) {
        return doOnLifecycle(gVar, io.reactivex.internal.a.a.EMPTY_LONG_CONSUMER, io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    public final j<T> doOnTerminate(io.reactivex.e.a aVar) {
        return a(io.reactivex.internal.a.a.emptyConsumer(), (g<? super Throwable>) io.reactivex.internal.a.a.actionConsumer(aVar), aVar, io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    public final q<T> elementAt(long j) {
        if (j >= 0) {
            return a.onAssembly(new au(this, j));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was ".concat(String.valueOf(j)));
    }

    public final ai<T> elementAt(long j, T t) {
        if (j >= 0) {
            io.reactivex.internal.a.b.requireNonNull(t, "defaultItem is null");
            return a.onAssembly(new av(this, j, t));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was ".concat(String.valueOf(j)));
    }

    public final ai<T> elementAtOrError(long j) {
        if (j >= 0) {
            return a.onAssembly(new av(this, j, null));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was ".concat(String.valueOf(j)));
    }

    public final j<T> filter(q<? super T> qVar) {
        io.reactivex.internal.a.b.requireNonNull(qVar, "predicate is null");
        return a.onAssembly(new ay(this, qVar));
    }

    public final q<T> firstElement() {
        return elementAt(0);
    }

    public final ai<T> first(T t) {
        return elementAt(0, t);
    }

    public final ai<T> firstOrError() {
        return elementAtOrError(0);
    }

    public final <R> j<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar) {
        return flatMap(hVar, false, bufferSize(), bufferSize());
    }

    public final <R> j<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, boolean z) {
        return flatMap(hVar, z, bufferSize(), bufferSize());
    }

    public final <R> j<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, int i) {
        return flatMap(hVar, false, i, bufferSize());
    }

    public final <R> j<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, boolean z, int i) {
        return flatMap(hVar, z, i, bufferSize());
    }

    public final <R> j<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, boolean z, int i, int i2) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "maxConcurrency");
        io.reactivex.internal.a.b.verifyPositive(i2, "bufferSize");
        if (this instanceof io.reactivex.internal.b.h) {
            Object call = ((io.reactivex.internal.b.h) this).call();
            if (call == null) {
                return empty();
            }
            return dk.scalarXMap(call, hVar);
        }
        az azVar = new az(this, hVar, z, i, i2);
        return a.onAssembly(azVar);
    }

    public final <R> j<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, io.reactivex.e.h<? super Throwable, ? extends b<? extends R>> hVar2, Callable<? extends b<? extends R>> callable) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "onNextMapper is null");
        io.reactivex.internal.a.b.requireNonNull(hVar2, "onErrorMapper is null");
        io.reactivex.internal.a.b.requireNonNull(callable, "onCompleteSupplier is null");
        return merge(new cb(this, hVar, hVar2, callable));
    }

    public final <R> j<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, io.reactivex.e.h<Throwable, ? extends b<? extends R>> hVar2, Callable<? extends b<? extends R>> callable, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "onNextMapper is null");
        io.reactivex.internal.a.b.requireNonNull(hVar2, "onErrorMapper is null");
        io.reactivex.internal.a.b.requireNonNull(callable, "onCompleteSupplier is null");
        return merge(new cb(this, hVar, hVar2, callable), i);
    }

    public final <U, R> j<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends U>> hVar, io.reactivex.e.c<? super T, ? super U, ? extends R> cVar) {
        return flatMap(hVar, cVar, false, bufferSize(), bufferSize());
    }

    public final <U, R> j<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends U>> hVar, io.reactivex.e.c<? super T, ? super U, ? extends R> cVar, boolean z) {
        return flatMap(hVar, cVar, z, bufferSize(), bufferSize());
    }

    public final <U, R> j<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends U>> hVar, io.reactivex.e.c<? super T, ? super U, ? extends R> cVar, boolean z, int i) {
        return flatMap(hVar, cVar, z, i, bufferSize());
    }

    public final <U, R> j<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends U>> hVar, io.reactivex.e.c<? super T, ? super U, ? extends R> cVar, boolean z, int i, int i2) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.requireNonNull(cVar, "combiner is null");
        io.reactivex.internal.a.b.verifyPositive(i, "maxConcurrency");
        io.reactivex.internal.a.b.verifyPositive(i2, "bufferSize");
        return flatMap(FlowableInternalHelper.flatMapWithCombiner(hVar, cVar), z, i, i2);
    }

    public final <U, R> j<R> flatMap(io.reactivex.e.h<? super T, ? extends b<? extends U>> hVar, io.reactivex.e.c<? super T, ? super U, ? extends R> cVar, int i) {
        return flatMap(hVar, cVar, false, i, bufferSize());
    }

    public final a flatMapCompletable(io.reactivex.e.h<? super T, ? extends g> hVar) {
        return flatMapCompletable(hVar, false, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public final a flatMapCompletable(io.reactivex.e.h<? super T, ? extends g> hVar, boolean z, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "maxConcurrency");
        return a.onAssembly((a) new bb(this, hVar, z, i));
    }

    public final <U> j<U> flatMapIterable(io.reactivex.e.h<? super T, ? extends Iterable<? extends U>> hVar) {
        return flatMapIterable(hVar, bufferSize());
    }

    public final <U> j<U> flatMapIterable(io.reactivex.e.h<? super T, ? extends Iterable<? extends U>> hVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return a.onAssembly(new bf(this, hVar, i));
    }

    public final <U, V> j<V> flatMapIterable(io.reactivex.e.h<? super T, ? extends Iterable<? extends U>> hVar, io.reactivex.e.c<? super T, ? super U, ? extends V> cVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.requireNonNull(cVar, "resultSelector is null");
        return flatMap(FlowableInternalHelper.flatMapIntoIterable(hVar), cVar, false, bufferSize(), bufferSize());
    }

    public final <U, V> j<V> flatMapIterable(io.reactivex.e.h<? super T, ? extends Iterable<? extends U>> hVar, io.reactivex.e.c<? super T, ? super U, ? extends V> cVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.requireNonNull(cVar, "resultSelector is null");
        return flatMap(FlowableInternalHelper.flatMapIntoIterable(hVar), cVar, false, bufferSize(), i);
    }

    public final <R> j<R> flatMapMaybe(io.reactivex.e.h<? super T, ? extends w<? extends R>> hVar) {
        return flatMapMaybe(hVar, false, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public final <R> j<R> flatMapMaybe(io.reactivex.e.h<? super T, ? extends w<? extends R>> hVar, boolean z, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "maxConcurrency");
        return a.onAssembly(new bc(this, hVar, z, i));
    }

    public final <R> j<R> flatMapSingle(io.reactivex.e.h<? super T, ? extends ao<? extends R>> hVar) {
        return flatMapSingle(hVar, false, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public final <R> j<R> flatMapSingle(io.reactivex.e.h<? super T, ? extends ao<? extends R>> hVar, boolean z, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "maxConcurrency");
        return a.onAssembly(new be(this, hVar, z, i));
    }

    public final io.reactivex.b.c forEach(g<? super T> gVar) {
        return subscribe(gVar);
    }

    public final io.reactivex.b.c forEachWhile(q<? super T> qVar) {
        return forEachWhile(qVar, io.reactivex.internal.a.a.ON_ERROR_MISSING, io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    public final io.reactivex.b.c forEachWhile(q<? super T> qVar, g<? super Throwable> gVar) {
        return forEachWhile(qVar, gVar, io.reactivex.internal.a.a.EMPTY_ACTION);
    }

    public final io.reactivex.b.c forEachWhile(q<? super T> qVar, g<? super Throwable> gVar, io.reactivex.e.a aVar) {
        io.reactivex.internal.a.b.requireNonNull(qVar, "onNext is null");
        io.reactivex.internal.a.b.requireNonNull(gVar, "onError is null");
        io.reactivex.internal.a.b.requireNonNull(aVar, "onComplete is null");
        io.reactivex.internal.f.i iVar = new io.reactivex.internal.f.i(qVar, gVar, aVar);
        subscribe(iVar);
        return iVar;
    }

    public final <K> j<io.reactivex.d.b<K, T>> groupBy(io.reactivex.e.h<? super T, ? extends K> hVar) {
        return groupBy(hVar, io.reactivex.internal.a.a.identity(), false, bufferSize());
    }

    public final <K> j<io.reactivex.d.b<K, T>> groupBy(io.reactivex.e.h<? super T, ? extends K> hVar, boolean z) {
        return groupBy(hVar, io.reactivex.internal.a.a.identity(), z, bufferSize());
    }

    public final <K, V> j<io.reactivex.d.b<K, V>> groupBy(io.reactivex.e.h<? super T, ? extends K> hVar, io.reactivex.e.h<? super T, ? extends V> hVar2) {
        return groupBy(hVar, hVar2, false, bufferSize());
    }

    public final <K, V> j<io.reactivex.d.b<K, V>> groupBy(io.reactivex.e.h<? super T, ? extends K> hVar, io.reactivex.e.h<? super T, ? extends V> hVar2, boolean z) {
        return groupBy(hVar, hVar2, z, bufferSize());
    }

    public final <K, V> j<io.reactivex.d.b<K, V>> groupBy(io.reactivex.e.h<? super T, ? extends K> hVar, io.reactivex.e.h<? super T, ? extends V> hVar2, boolean z, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "keySelector is null");
        io.reactivex.internal.a.b.requireNonNull(hVar2, "valueSelector is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        bn bnVar = new bn(this, hVar, hVar2, i, z, null);
        return a.onAssembly(bnVar);
    }

    public final <K, V> j<io.reactivex.d.b<K, V>> groupBy(io.reactivex.e.h<? super T, ? extends K> hVar, io.reactivex.e.h<? super T, ? extends V> hVar2, boolean z, int i, io.reactivex.e.h<? super g<Object>, ? extends Map<K, Object>> hVar3) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "keySelector is null");
        io.reactivex.internal.a.b.requireNonNull(hVar2, "valueSelector is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        io.reactivex.internal.a.b.requireNonNull(hVar3, "evictingMapFactory is null");
        bn bnVar = new bn(this, hVar, hVar2, i, z, hVar3);
        return a.onAssembly(bnVar);
    }

    public final <TRight, TLeftEnd, TRightEnd, R> j<R> groupJoin(b<? extends TRight> bVar, io.reactivex.e.h<? super T, ? extends b<TLeftEnd>> hVar, io.reactivex.e.h<? super TRight, ? extends b<TRightEnd>> hVar2, io.reactivex.e.c<? super T, ? super j<TRight>, ? extends R> cVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "other is null");
        io.reactivex.internal.a.b.requireNonNull(hVar, "leftEnd is null");
        io.reactivex.internal.a.b.requireNonNull(hVar2, "rightEnd is null");
        io.reactivex.internal.a.b.requireNonNull(cVar, "resultSelector is null");
        bo boVar = new bo(this, bVar, hVar, hVar2, cVar);
        return a.onAssembly(boVar);
    }

    public final j<T> hide() {
        return a.onAssembly(new bp(this));
    }

    public final a ignoreElements() {
        return a.onAssembly((a) new br(this));
    }

    public final ai<Boolean> isEmpty() {
        return all(io.reactivex.internal.a.a.alwaysFalse());
    }

    public final <TRight, TLeftEnd, TRightEnd, R> j<R> join(b<? extends TRight> bVar, io.reactivex.e.h<? super T, ? extends b<TLeftEnd>> hVar, io.reactivex.e.h<? super TRight, ? extends b<TRightEnd>> hVar2, io.reactivex.e.c<? super T, ? super TRight, ? extends R> cVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "other is null");
        io.reactivex.internal.a.b.requireNonNull(hVar, "leftEnd is null");
        io.reactivex.internal.a.b.requireNonNull(hVar2, "rightEnd is null");
        io.reactivex.internal.a.b.requireNonNull(cVar, "resultSelector is null");
        bu buVar = new bu(this, bVar, hVar, hVar2, cVar);
        return a.onAssembly(buVar);
    }

    public final q<T> lastElement() {
        return a.onAssembly(new bw(this));
    }

    public final ai<T> last(T t) {
        io.reactivex.internal.a.b.requireNonNull(t, "defaultItem");
        return a.onAssembly(new bx(this, t));
    }

    public final ai<T> lastOrError() {
        return a.onAssembly(new bx(this, null));
    }

    public final <R> j<R> lift(n<? extends R, ? super T> nVar) {
        io.reactivex.internal.a.b.requireNonNull(nVar, "lifter is null");
        return a.onAssembly(new by(this, nVar));
    }

    public final j<T> limit(long j) {
        if (j >= 0) {
            return a.onAssembly(new bz(this, j));
        }
        throw new IllegalArgumentException("count >= 0 required but it was ".concat(String.valueOf(j)));
    }

    public final <R> j<R> map(io.reactivex.e.h<? super T, ? extends R> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new ca(this, hVar));
    }

    public final j<y<T>> materialize() {
        return a.onAssembly(new cd(this));
    }

    public final j<T> mergeWith(b<? extends T> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "other is null");
        return merge(this, (j) bVar);
    }

    public final j<T> mergeWith(ao<? extends T> aoVar) {
        io.reactivex.internal.a.b.requireNonNull(aoVar, "other is null");
        return a.onAssembly(new cg(this, aoVar));
    }

    public final j<T> mergeWith(w<? extends T> wVar) {
        io.reactivex.internal.a.b.requireNonNull(wVar, "other is null");
        return a.onAssembly(new cf(this, wVar));
    }

    public final j<T> mergeWith(g gVar) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "other is null");
        return a.onAssembly(new ce(this, gVar));
    }

    public final j<T> observeOn(ah ahVar) {
        return observeOn(ahVar, false, bufferSize());
    }

    public final j<T> observeOn(ah ahVar, boolean z) {
        return observeOn(ahVar, z, bufferSize());
    }

    public final j<T> observeOn(ah ahVar, boolean z, int i) {
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return a.onAssembly(new ci(this, ahVar, z, i));
    }

    public final <U> j<U> ofType(Class<U> cls) {
        io.reactivex.internal.a.b.requireNonNull(cls, "clazz is null");
        return filter(io.reactivex.internal.a.a.isInstanceOf(cls)).cast(cls);
    }

    public final j<T> onBackpressureBuffer() {
        return onBackpressureBuffer(bufferSize(), false, true);
    }

    public final j<T> onBackpressureBuffer(boolean z) {
        return onBackpressureBuffer(bufferSize(), z, true);
    }

    public final j<T> onBackpressureBuffer(int i) {
        return onBackpressureBuffer(i, false, false);
    }

    public final j<T> onBackpressureBuffer(int i, boolean z) {
        return onBackpressureBuffer(i, z, false);
    }

    public final j<T> onBackpressureBuffer(int i, boolean z, boolean z2) {
        io.reactivex.internal.a.b.verifyPositive(i, "capacity");
        cj cjVar = new cj(this, i, z2, z, io.reactivex.internal.a.a.EMPTY_ACTION);
        return a.onAssembly(cjVar);
    }

    public final j<T> onBackpressureBuffer(int i, boolean z, boolean z2, io.reactivex.e.a aVar) {
        io.reactivex.internal.a.b.requireNonNull(aVar, "onOverflow is null");
        io.reactivex.internal.a.b.verifyPositive(i, "capacity");
        cj cjVar = new cj(this, i, z2, z, aVar);
        return a.onAssembly(cjVar);
    }

    public final j<T> onBackpressureBuffer(int i, io.reactivex.e.a aVar) {
        return onBackpressureBuffer(i, false, false, aVar);
    }

    public final j<T> onBackpressureBuffer(long j, io.reactivex.e.a aVar, BackpressureOverflowStrategy backpressureOverflowStrategy) {
        io.reactivex.internal.a.b.requireNonNull(backpressureOverflowStrategy, "overflowStrategy is null");
        io.reactivex.internal.a.b.verifyPositive(j, "capacity");
        ck ckVar = new ck(this, j, aVar, backpressureOverflowStrategy);
        return a.onAssembly(ckVar);
    }

    public final j<T> onBackpressureDrop() {
        return a.onAssembly(new cl(this));
    }

    public final j<T> onBackpressureDrop(g<? super T> gVar) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "onDrop is null");
        return a.onAssembly(new cl(this, gVar));
    }

    public final j<T> onBackpressureLatest() {
        return a.onAssembly(new cn(this));
    }

    public final j<T> onErrorResumeNext(io.reactivex.e.h<? super Throwable, ? extends b<? extends T>> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "resumeFunction is null");
        return a.onAssembly(new co(this, hVar, false));
    }

    public final j<T> onErrorResumeNext(b<? extends T> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "next is null");
        return onErrorResumeNext(io.reactivex.internal.a.a.justFunction(bVar));
    }

    public final j<T> onErrorReturn(io.reactivex.e.h<? super Throwable, ? extends T> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "valueSupplier is null");
        return a.onAssembly(new cp(this, hVar));
    }

    public final j<T> onErrorReturnItem(T t) {
        io.reactivex.internal.a.b.requireNonNull(t, "item is null");
        return onErrorReturn(io.reactivex.internal.a.a.justFunction(t));
    }

    public final j<T> onExceptionResumeNext(b<? extends T> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "next is null");
        return a.onAssembly(new co(this, io.reactivex.internal.a.a.justFunction(bVar), true));
    }

    public final j<T> onTerminateDetach() {
        return a.onAssembly(new am(this));
    }

    public final io.reactivex.parallel.a<T> parallel() {
        return io.reactivex.parallel.a.from(this);
    }

    public final io.reactivex.parallel.a<T> parallel(int i) {
        io.reactivex.internal.a.b.verifyPositive(i, "parallelism");
        return io.reactivex.parallel.a.from(this, i);
    }

    public final io.reactivex.parallel.a<T> parallel(int i, int i2) {
        io.reactivex.internal.a.b.verifyPositive(i, "parallelism");
        io.reactivex.internal.a.b.verifyPositive(i2, "prefetch");
        return io.reactivex.parallel.a.from(this, i, i2);
    }

    public final io.reactivex.d.a<T> publish() {
        return publish(bufferSize());
    }

    public final <R> j<R> publish(io.reactivex.e.h<? super j<T>, ? extends b<R>> hVar) {
        return publish(hVar, bufferSize());
    }

    public final <R> j<R> publish(io.reactivex.e.h<? super j<T>, ? extends b<? extends R>> hVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "selector is null");
        io.reactivex.internal.a.b.verifyPositive(i, "prefetch");
        return a.onAssembly(new ct(this, hVar, i, false));
    }

    public final io.reactivex.d.a<T> publish(int i) {
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return cq.create(this, i);
    }

    public final j<T> rebatchRequests(int i) {
        return observeOn(io.reactivex.internal.e.e.INSTANCE, true, i);
    }

    public final q<T> reduce(io.reactivex.e.c<T, T, T> cVar) {
        io.reactivex.internal.a.b.requireNonNull(cVar, "reducer is null");
        return a.onAssembly(new cx(this, cVar));
    }

    public final <R> ai<R> reduce(R r, io.reactivex.e.c<R, ? super T, R> cVar) {
        io.reactivex.internal.a.b.requireNonNull(r, "seed is null");
        io.reactivex.internal.a.b.requireNonNull(cVar, "reducer is null");
        return a.onAssembly(new cy(this, r, cVar));
    }

    public final <R> ai<R> reduceWith(Callable<R> callable, io.reactivex.e.c<R, ? super T, R> cVar) {
        io.reactivex.internal.a.b.requireNonNull(callable, "seedSupplier is null");
        io.reactivex.internal.a.b.requireNonNull(cVar, "reducer is null");
        return a.onAssembly(new cz(this, callable, cVar));
    }

    public final j<T> repeat() {
        return repeat(Long.MAX_VALUE);
    }

    public final j<T> repeat(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("times >= 0 required but it was ".concat(String.valueOf(j)));
        } else if (j == 0) {
            return empty();
        } else {
            return a.onAssembly(new db(this, j));
        }
    }

    public final j<T> repeatUntil(io.reactivex.e.e eVar) {
        io.reactivex.internal.a.b.requireNonNull(eVar, "stop is null");
        return a.onAssembly(new dc(this, eVar));
    }

    public final j<T> repeatWhen(io.reactivex.e.h<? super j<Object>, ? extends b<?>> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "handler is null");
        return a.onAssembly(new dd(this, hVar));
    }

    public final io.reactivex.d.a<T> replay() {
        return de.createFrom(this);
    }

    public final <R> j<R> replay(io.reactivex.e.h<? super j<T>, ? extends b<R>> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "selector is null");
        return de.multicastSelector(FlowableInternalHelper.replayCallable(this), hVar);
    }

    public final <R> j<R> replay(io.reactivex.e.h<? super j<T>, ? extends b<R>> hVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "selector is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return de.multicastSelector(FlowableInternalHelper.replayCallable(this, i), hVar);
    }

    public final <R> j<R> replay(io.reactivex.e.h<? super j<T>, ? extends b<R>> hVar, int i, long j, TimeUnit timeUnit) {
        return replay(hVar, i, j, timeUnit, io.reactivex.i.a.computation());
    }

    public final <R> j<R> replay(io.reactivex.e.h<? super j<T>, ? extends b<R>> hVar, int i, long j, TimeUnit timeUnit, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "selector is null");
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        return de.multicastSelector(FlowableInternalHelper.replayCallable(this, i, j, timeUnit, ahVar), hVar);
    }

    public final <R> j<R> replay(io.reactivex.e.h<? super j<T>, ? extends b<R>> hVar, int i, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "selector is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return de.multicastSelector(FlowableInternalHelper.replayCallable(this, i), FlowableInternalHelper.replayFunction(hVar, ahVar));
    }

    public final <R> j<R> replay(io.reactivex.e.h<? super j<T>, ? extends b<R>> hVar, long j, TimeUnit timeUnit) {
        return replay(hVar, j, timeUnit, io.reactivex.i.a.computation());
    }

    public final <R> j<R> replay(io.reactivex.e.h<? super j<T>, ? extends b<R>> hVar, long j, TimeUnit timeUnit, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "selector is null");
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        return de.multicastSelector(FlowableInternalHelper.replayCallable(this, j, timeUnit, ahVar), hVar);
    }

    public final <R> j<R> replay(io.reactivex.e.h<? super j<T>, ? extends b<R>> hVar, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "selector is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        return de.multicastSelector(FlowableInternalHelper.replayCallable(this), FlowableInternalHelper.replayFunction(hVar, ahVar));
    }

    public final io.reactivex.d.a<T> replay(int i) {
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return de.create(this, i);
    }

    public final io.reactivex.d.a<T> replay(int i, long j, TimeUnit timeUnit) {
        return replay(i, j, timeUnit, io.reactivex.i.a.computation());
    }

    public final io.reactivex.d.a<T> replay(int i, long j, TimeUnit timeUnit, ah ahVar) {
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return de.create(this, j, timeUnit, ahVar, i);
    }

    public final io.reactivex.d.a<T> replay(int i, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        return de.observeOn(replay(i), ahVar);
    }

    public final io.reactivex.d.a<T> replay(long j, TimeUnit timeUnit) {
        return replay(j, timeUnit, io.reactivex.i.a.computation());
    }

    public final io.reactivex.d.a<T> replay(long j, TimeUnit timeUnit, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        return de.create(this, j, timeUnit, ahVar);
    }

    public final io.reactivex.d.a<T> replay(ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        return de.observeOn(replay(), ahVar);
    }

    public final j<T> retry() {
        return retry(Long.MAX_VALUE, io.reactivex.internal.a.a.alwaysTrue());
    }

    public final j<T> retry(d<? super Integer, ? super Throwable> dVar) {
        io.reactivex.internal.a.b.requireNonNull(dVar, "predicate is null");
        return a.onAssembly(new df(this, dVar));
    }

    public final j<T> retry(long j) {
        return retry(j, io.reactivex.internal.a.a.alwaysTrue());
    }

    public final j<T> retry(long j, q<? super Throwable> qVar) {
        if (j >= 0) {
            io.reactivex.internal.a.b.requireNonNull(qVar, "predicate is null");
            return a.onAssembly(new dg(this, j, qVar));
        }
        throw new IllegalArgumentException("times >= 0 required but it was ".concat(String.valueOf(j)));
    }

    public final j<T> retry(q<? super Throwable> qVar) {
        return retry(Long.MAX_VALUE, qVar);
    }

    public final j<T> retryUntil(io.reactivex.e.e eVar) {
        io.reactivex.internal.a.b.requireNonNull(eVar, "stop is null");
        return retry(Long.MAX_VALUE, io.reactivex.internal.a.a.predicateReverseFor(eVar));
    }

    public final j<T> retryWhen(io.reactivex.e.h<? super j<Throwable>, ? extends b<?>> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "handler is null");
        return a.onAssembly(new dh(this, hVar));
    }

    public final void safeSubscribe(c<? super T> cVar) {
        io.reactivex.internal.a.b.requireNonNull(cVar, "s is null");
        if (cVar instanceof io.reactivex.k.c) {
            subscribe((io.reactivex.k.c) cVar);
        } else {
            subscribe(new io.reactivex.k.c(cVar));
        }
    }

    public final j<T> sample(long j, TimeUnit timeUnit) {
        return sample(j, timeUnit, io.reactivex.i.a.computation());
    }

    public final j<T> sample(long j, TimeUnit timeUnit, boolean z) {
        return sample(j, timeUnit, io.reactivex.i.a.computation(), z);
    }

    public final j<T> sample(long j, TimeUnit timeUnit, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        dj djVar = new dj(this, j, timeUnit, ahVar, false);
        return a.onAssembly(djVar);
    }

    public final j<T> sample(long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        dj djVar = new dj(this, j, timeUnit, ahVar, z);
        return a.onAssembly(djVar);
    }

    public final <U> j<T> sample(b<U> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "sampler is null");
        return a.onAssembly(new di(this, bVar, false));
    }

    public final <U> j<T> sample(b<U> bVar, boolean z) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "sampler is null");
        return a.onAssembly(new di(this, bVar, z));
    }

    public final j<T> scan(io.reactivex.e.c<T, T, T> cVar) {
        io.reactivex.internal.a.b.requireNonNull(cVar, "accumulator is null");
        return a.onAssembly(new dl(this, cVar));
    }

    public final <R> j<R> scan(R r, io.reactivex.e.c<R, ? super T, R> cVar) {
        io.reactivex.internal.a.b.requireNonNull(r, "initialValue is null");
        return scanWith(io.reactivex.internal.a.a.justCallable(r), cVar);
    }

    public final <R> j<R> scanWith(Callable<R> callable, io.reactivex.e.c<R, ? super T, R> cVar) {
        io.reactivex.internal.a.b.requireNonNull(callable, "seedSupplier is null");
        io.reactivex.internal.a.b.requireNonNull(cVar, "accumulator is null");
        return a.onAssembly(new dm(this, callable, cVar));
    }

    public final j<T> serialize() {
        return a.onAssembly(new dp(this));
    }

    public final j<T> share() {
        return publish().refCount();
    }

    public final q<T> singleElement() {
        return a.onAssembly(new dr(this));
    }

    public final ai<T> single(T t) {
        io.reactivex.internal.a.b.requireNonNull(t, "defaultItem is null");
        return a.onAssembly(new ds(this, t));
    }

    public final ai<T> singleOrError() {
        return a.onAssembly(new ds(this, null));
    }

    public final j<T> skip(long j) {
        if (j <= 0) {
            return a.onAssembly(this);
        }
        return a.onAssembly(new dt(this, j));
    }

    public final j<T> skip(long j, TimeUnit timeUnit) {
        return skipUntil(timer(j, timeUnit));
    }

    public final j<T> skip(long j, TimeUnit timeUnit, ah ahVar) {
        return skipUntil(timer(j, timeUnit, ahVar));
    }

    public final j<T> skipLast(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("count >= 0 required but it was ".concat(String.valueOf(i)));
        } else if (i == 0) {
            return a.onAssembly(this);
        } else {
            return a.onAssembly(new du(this, i));
        }
    }

    public final j<T> skipLast(long j, TimeUnit timeUnit) {
        return skipLast(j, timeUnit, io.reactivex.i.a.computation(), false, bufferSize());
    }

    public final j<T> skipLast(long j, TimeUnit timeUnit, boolean z) {
        return skipLast(j, timeUnit, io.reactivex.i.a.computation(), z, bufferSize());
    }

    public final j<T> skipLast(long j, TimeUnit timeUnit, ah ahVar) {
        return skipLast(j, timeUnit, ahVar, false, bufferSize());
    }

    public final j<T> skipLast(long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        return skipLast(j, timeUnit, ahVar, z, bufferSize());
    }

    public final j<T> skipLast(long j, TimeUnit timeUnit, ah ahVar, boolean z, int i) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        dv dvVar = new dv(this, j, timeUnit, ahVar, i << 1, z);
        return a.onAssembly(dvVar);
    }

    public final <U> j<T> skipUntil(b<U> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "other is null");
        return a.onAssembly(new dw(this, bVar));
    }

    public final j<T> skipWhile(q<? super T> qVar) {
        io.reactivex.internal.a.b.requireNonNull(qVar, "predicate is null");
        return a.onAssembly(new dx(this, qVar));
    }

    public final j<T> sorted() {
        return toList().toFlowable().map(io.reactivex.internal.a.a.listSorter(io.reactivex.internal.a.a.naturalComparator())).flatMapIterable(io.reactivex.internal.a.a.identity());
    }

    public final j<T> sorted(Comparator<? super T> comparator) {
        io.reactivex.internal.a.b.requireNonNull(comparator, "sortFunction");
        return toList().toFlowable().map(io.reactivex.internal.a.a.listSorter(comparator)).flatMapIterable(io.reactivex.internal.a.a.identity());
    }

    public final j<T> startWith(Iterable<? extends T> iterable) {
        return concatArray(fromIterable(iterable), this);
    }

    public final j<T> startWith(b<? extends T> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "other is null");
        return concatArray(bVar, this);
    }

    public final j<T> startWith(T t) {
        io.reactivex.internal.a.b.requireNonNull(t, "value is null");
        return concatArray(just(t), this);
    }

    public final j<T> startWithArray(T... tArr) {
        j fromArray = fromArray(tArr);
        if (fromArray == empty()) {
            return a.onAssembly(this);
        }
        return concatArray(fromArray, this);
    }

    public final io.reactivex.b.c subscribe() {
        return subscribe(io.reactivex.internal.a.a.emptyConsumer(), io.reactivex.internal.a.a.ON_ERROR_MISSING, io.reactivex.internal.a.a.EMPTY_ACTION, FlowableInternalHelper.RequestMax.INSTANCE);
    }

    public final io.reactivex.b.c subscribe(g<? super T> gVar) {
        return subscribe(gVar, io.reactivex.internal.a.a.ON_ERROR_MISSING, io.reactivex.internal.a.a.EMPTY_ACTION, FlowableInternalHelper.RequestMax.INSTANCE);
    }

    public final io.reactivex.b.c subscribe(g<? super T> gVar, g<? super Throwable> gVar2) {
        return subscribe(gVar, gVar2, io.reactivex.internal.a.a.EMPTY_ACTION, FlowableInternalHelper.RequestMax.INSTANCE);
    }

    public final io.reactivex.b.c subscribe(g<? super T> gVar, g<? super Throwable> gVar2, io.reactivex.e.a aVar) {
        return subscribe(gVar, gVar2, aVar, FlowableInternalHelper.RequestMax.INSTANCE);
    }

    public final io.reactivex.b.c subscribe(g<? super T> gVar, g<? super Throwable> gVar2, io.reactivex.e.a aVar, g<? super org.b.d> gVar3) {
        io.reactivex.internal.a.b.requireNonNull(gVar, "onNext is null");
        io.reactivex.internal.a.b.requireNonNull(gVar2, "onError is null");
        io.reactivex.internal.a.b.requireNonNull(aVar, "onComplete is null");
        io.reactivex.internal.a.b.requireNonNull(gVar3, "onSubscribe is null");
        io.reactivex.internal.f.m mVar = new io.reactivex.internal.f.m(gVar, gVar2, aVar, gVar3);
        subscribe(mVar);
        return mVar;
    }

    public final void subscribe(c<? super T> cVar) {
        if (cVar instanceof o) {
            subscribe((o) cVar);
            return;
        }
        io.reactivex.internal.a.b.requireNonNull(cVar, "s is null");
        subscribe(new io.reactivex.internal.f.u(cVar));
    }

    public final void subscribe(o<? super T> oVar) {
        io.reactivex.internal.a.b.requireNonNull(oVar, "s is null");
        try {
            c<? super Object> onSubscribe = a.onSubscribe(this, oVar);
            io.reactivex.internal.a.b.requireNonNull(onSubscribe, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            subscribeActual(onSubscribe);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            a.onError(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final <E extends c<? super T>> E subscribeWith(E e) {
        subscribe(e);
        return e;
    }

    public final j<T> subscribeOn(ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        return subscribeOn(ahVar, !(this instanceof af));
    }

    public final j<T> subscribeOn(ah ahVar, boolean z) {
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        return a.onAssembly(new dy(this, ahVar, z));
    }

    public final j<T> switchIfEmpty(b<? extends T> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "other is null");
        return a.onAssembly(new dz(this, bVar));
    }

    public final <R> j<R> switchMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar) {
        return switchMap(hVar, bufferSize());
    }

    public final <R> j<R> switchMap(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, int i) {
        return a(hVar, i, false);
    }

    public final a switchMapCompletable(io.reactivex.e.h<? super T, ? extends g> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly((a) new f(this, hVar, false));
    }

    public final a switchMapCompletableDelayError(io.reactivex.e.h<? super T, ? extends g> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly((a) new f(this, hVar, true));
    }

    public final <R> j<R> switchMapDelayError(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar) {
        return switchMapDelayError(hVar, bufferSize());
    }

    public final <R> j<R> switchMapDelayError(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, int i) {
        return a(hVar, i, true);
    }

    private <R> j<R> a(io.reactivex.e.h<? super T, ? extends b<? extends R>> hVar, int i, boolean z) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        if (!(this instanceof io.reactivex.internal.b.h)) {
            return a.onAssembly(new ea(this, hVar, i, z));
        }
        Object call = ((io.reactivex.internal.b.h) this).call();
        if (call == null) {
            return empty();
        }
        return dk.scalarXMap(call, hVar);
    }

    public final <R> j<R> switchMapMaybe(io.reactivex.e.h<? super T, ? extends w<? extends R>> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new io.reactivex.internal.operators.b.g(this, hVar, false));
    }

    public final <R> j<R> switchMapMaybeDelayError(io.reactivex.e.h<? super T, ? extends w<? extends R>> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new io.reactivex.internal.operators.b.g(this, hVar, true));
    }

    public final <R> j<R> switchMapSingle(io.reactivex.e.h<? super T, ? extends ao<? extends R>> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new io.reactivex.internal.operators.b.h(this, hVar, false));
    }

    public final <R> j<R> switchMapSingleDelayError(io.reactivex.e.h<? super T, ? extends ao<? extends R>> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "mapper is null");
        return a.onAssembly(new io.reactivex.internal.operators.b.h(this, hVar, true));
    }

    public final j<T> take(long j) {
        if (j >= 0) {
            return a.onAssembly(new eb(this, j));
        }
        throw new IllegalArgumentException("count >= 0 required but it was ".concat(String.valueOf(j)));
    }

    public final j<T> take(long j, TimeUnit timeUnit) {
        return takeUntil(timer(j, timeUnit));
    }

    public final j<T> take(long j, TimeUnit timeUnit, ah ahVar) {
        return takeUntil(timer(j, timeUnit, ahVar));
    }

    public final j<T> takeLast(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("count >= 0 required but it was ".concat(String.valueOf(i)));
        } else if (i == 0) {
            return a.onAssembly(new bq(this));
        } else {
            if (i == 1) {
                return a.onAssembly(new ed(this));
            }
            return a.onAssembly(new ec(this, i));
        }
    }

    public final j<T> takeLast(long j, long j2, TimeUnit timeUnit) {
        return takeLast(j, j2, timeUnit, io.reactivex.i.a.computation(), false, bufferSize());
    }

    public final j<T> takeLast(long j, long j2, TimeUnit timeUnit, ah ahVar) {
        return takeLast(j, j2, timeUnit, ahVar, false, bufferSize());
    }

    public final j<T> takeLast(long j, long j2, TimeUnit timeUnit, ah ahVar, boolean z, int i) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        if (j >= 0) {
            ee eeVar = new ee(this, j, j2, timeUnit, ahVar, i, z);
            return a.onAssembly(eeVar);
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was ".concat(String.valueOf(j)));
    }

    public final j<T> takeLast(long j, TimeUnit timeUnit) {
        return takeLast(j, timeUnit, io.reactivex.i.a.computation(), false, bufferSize());
    }

    public final j<T> takeLast(long j, TimeUnit timeUnit, boolean z) {
        return takeLast(j, timeUnit, io.reactivex.i.a.computation(), z, bufferSize());
    }

    public final j<T> takeLast(long j, TimeUnit timeUnit, ah ahVar) {
        return takeLast(j, timeUnit, ahVar, false, bufferSize());
    }

    public final j<T> takeLast(long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        return takeLast(j, timeUnit, ahVar, z, bufferSize());
    }

    public final j<T> takeLast(long j, TimeUnit timeUnit, ah ahVar, boolean z, int i) {
        return takeLast(Long.MAX_VALUE, j, timeUnit, ahVar, z, i);
    }

    public final j<T> takeUntil(q<? super T> qVar) {
        io.reactivex.internal.a.b.requireNonNull(qVar, "stopPredicate is null");
        return a.onAssembly(new eh(this, qVar));
    }

    public final <U> j<T> takeUntil(b<U> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "other is null");
        return a.onAssembly(new eg(this, bVar));
    }

    public final j<T> takeWhile(q<? super T> qVar) {
        io.reactivex.internal.a.b.requireNonNull(qVar, "predicate is null");
        return a.onAssembly(new ei(this, qVar));
    }

    public final j<T> throttleFirst(long j, TimeUnit timeUnit) {
        return throttleFirst(j, timeUnit, io.reactivex.i.a.computation());
    }

    public final j<T> throttleFirst(long j, TimeUnit timeUnit, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        ej ejVar = new ej(this, j, timeUnit, ahVar);
        return a.onAssembly(ejVar);
    }

    public final j<T> throttleLast(long j, TimeUnit timeUnit) {
        return sample(j, timeUnit);
    }

    public final j<T> throttleLast(long j, TimeUnit timeUnit, ah ahVar) {
        return sample(j, timeUnit, ahVar);
    }

    public final j<T> throttleLatest(long j, TimeUnit timeUnit) {
        return throttleLatest(j, timeUnit, io.reactivex.i.a.computation(), false);
    }

    public final j<T> throttleLatest(long j, TimeUnit timeUnit, boolean z) {
        return throttleLatest(j, timeUnit, io.reactivex.i.a.computation(), z);
    }

    public final j<T> throttleLatest(long j, TimeUnit timeUnit, ah ahVar) {
        return throttleLatest(j, timeUnit, ahVar, false);
    }

    public final j<T> throttleLatest(long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        ek ekVar = new ek(this, j, timeUnit, ahVar, z);
        return a.onAssembly(ekVar);
    }

    public final j<T> throttleWithTimeout(long j, TimeUnit timeUnit) {
        return debounce(j, timeUnit);
    }

    public final j<T> throttleWithTimeout(long j, TimeUnit timeUnit, ah ahVar) {
        return debounce(j, timeUnit, ahVar);
    }

    public final j<io.reactivex.i.b<T>> timeInterval() {
        return timeInterval(TimeUnit.MILLISECONDS, io.reactivex.i.a.computation());
    }

    public final j<io.reactivex.i.b<T>> timeInterval(ah ahVar) {
        return timeInterval(TimeUnit.MILLISECONDS, ahVar);
    }

    public final j<io.reactivex.i.b<T>> timeInterval(TimeUnit timeUnit) {
        return timeInterval(timeUnit, io.reactivex.i.a.computation());
    }

    public final j<io.reactivex.i.b<T>> timeInterval(TimeUnit timeUnit, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        return a.onAssembly(new el(this, timeUnit, ahVar));
    }

    public final <V> j<T> timeout(io.reactivex.e.h<? super T, ? extends b<V>> hVar) {
        return a((b) null, hVar, (b) null);
    }

    public final <V> j<T> timeout(io.reactivex.e.h<? super T, ? extends b<V>> hVar, j<? extends T> jVar) {
        io.reactivex.internal.a.b.requireNonNull(jVar, "other is null");
        return a((b) null, hVar, jVar);
    }

    public final j<T> timeout(long j, TimeUnit timeUnit) {
        return a(j, timeUnit, (b) null, io.reactivex.i.a.computation());
    }

    public final j<T> timeout(long j, TimeUnit timeUnit, b<? extends T> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "other is null");
        return a(j, timeUnit, bVar, io.reactivex.i.a.computation());
    }

    public final j<T> timeout(long j, TimeUnit timeUnit, ah ahVar, b<? extends T> bVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "other is null");
        return a(j, timeUnit, bVar, ahVar);
    }

    public final j<T> timeout(long j, TimeUnit timeUnit, ah ahVar) {
        return a(j, timeUnit, (b) null, ahVar);
    }

    public final <U, V> j<T> timeout(b<U> bVar, io.reactivex.e.h<? super T, ? extends b<V>> hVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "firstTimeoutIndicator is null");
        return a(bVar, hVar, (b) null);
    }

    public final <U, V> j<T> timeout(b<U> bVar, io.reactivex.e.h<? super T, ? extends b<V>> hVar, b<? extends T> bVar2) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "firstTimeoutSelector is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "other is null");
        return a(bVar, hVar, bVar2);
    }

    private j<T> a(long j, TimeUnit timeUnit, b<? extends T> bVar, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "timeUnit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        en enVar = new en(this, j, timeUnit, ahVar, bVar);
        return a.onAssembly(enVar);
    }

    private <U, V> j<T> a(b<U> bVar, io.reactivex.e.h<? super T, ? extends b<V>> hVar, b<? extends T> bVar2) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "itemTimeoutIndicator is null");
        return a.onAssembly(new em(this, bVar, hVar, bVar2));
    }

    public final j<io.reactivex.i.b<T>> timestamp() {
        return timestamp(TimeUnit.MILLISECONDS, io.reactivex.i.a.computation());
    }

    public final j<io.reactivex.i.b<T>> timestamp(ah ahVar) {
        return timestamp(TimeUnit.MILLISECONDS, ahVar);
    }

    public final j<io.reactivex.i.b<T>> timestamp(TimeUnit timeUnit) {
        return timestamp(timeUnit, io.reactivex.i.a.computation());
    }

    public final j<io.reactivex.i.b<T>> timestamp(TimeUnit timeUnit, ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        return map(io.reactivex.internal.a.a.timestampWith(timeUnit, ahVar));
    }

    public final <R> R to(io.reactivex.e.h<? super j<T>, R> hVar) {
        try {
            return ((io.reactivex.e.h) io.reactivex.internal.a.b.requireNonNull(hVar, "converter is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            throw io.reactivex.internal.util.h.wrapOrThrow(th);
        }
    }

    public final ai<List<T>> toList() {
        return a.onAssembly(new eq(this));
    }

    public final ai<List<T>> toList(int i) {
        io.reactivex.internal.a.b.verifyPositive(i, "capacityHint");
        return a.onAssembly(new eq(this, io.reactivex.internal.a.a.createArrayList(i)));
    }

    public final <U extends Collection<? super T>> ai<U> toList(Callable<U> callable) {
        io.reactivex.internal.a.b.requireNonNull(callable, "collectionSupplier is null");
        return a.onAssembly(new eq(this, callable));
    }

    public final <K> ai<Map<K, T>> toMap(io.reactivex.e.h<? super T, ? extends K> hVar) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "keySelector is null");
        return collect(HashMapSupplier.asCallable(), io.reactivex.internal.a.a.toMapKeySelector(hVar));
    }

    public final <K, V> ai<Map<K, V>> toMap(io.reactivex.e.h<? super T, ? extends K> hVar, io.reactivex.e.h<? super T, ? extends V> hVar2) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "keySelector is null");
        io.reactivex.internal.a.b.requireNonNull(hVar2, "valueSelector is null");
        return collect(HashMapSupplier.asCallable(), io.reactivex.internal.a.a.toMapKeyValueSelector(hVar, hVar2));
    }

    public final <K, V> ai<Map<K, V>> toMap(io.reactivex.e.h<? super T, ? extends K> hVar, io.reactivex.e.h<? super T, ? extends V> hVar2, Callable<? extends Map<K, V>> callable) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "keySelector is null");
        io.reactivex.internal.a.b.requireNonNull(hVar2, "valueSelector is null");
        return collect(callable, io.reactivex.internal.a.a.toMapKeyValueSelector(hVar, hVar2));
    }

    public final <K> ai<Map<K, Collection<T>>> toMultimap(io.reactivex.e.h<? super T, ? extends K> hVar) {
        return toMultimap(hVar, io.reactivex.internal.a.a.identity(), HashMapSupplier.asCallable(), ArrayListSupplier.asFunction());
    }

    public final <K, V> ai<Map<K, Collection<V>>> toMultimap(io.reactivex.e.h<? super T, ? extends K> hVar, io.reactivex.e.h<? super T, ? extends V> hVar2) {
        return toMultimap(hVar, hVar2, HashMapSupplier.asCallable(), ArrayListSupplier.asFunction());
    }

    public final <K, V> ai<Map<K, Collection<V>>> toMultimap(io.reactivex.e.h<? super T, ? extends K> hVar, io.reactivex.e.h<? super T, ? extends V> hVar2, Callable<? extends Map<K, Collection<V>>> callable, io.reactivex.e.h<? super K, ? extends Collection<? super V>> hVar3) {
        io.reactivex.internal.a.b.requireNonNull(hVar, "keySelector is null");
        io.reactivex.internal.a.b.requireNonNull(hVar2, "valueSelector is null");
        io.reactivex.internal.a.b.requireNonNull(callable, "mapSupplier is null");
        io.reactivex.internal.a.b.requireNonNull(hVar3, "collectionFactory is null");
        return collect(callable, io.reactivex.internal.a.a.toMultimapKeyValueSelector(hVar, hVar2, hVar3));
    }

    public final <K, V> ai<Map<K, Collection<V>>> toMultimap(io.reactivex.e.h<? super T, ? extends K> hVar, io.reactivex.e.h<? super T, ? extends V> hVar2, Callable<Map<K, Collection<V>>> callable) {
        return toMultimap(hVar, hVar2, callable, ArrayListSupplier.asFunction());
    }

    public final z<T> toObservable() {
        return a.onAssembly(new io.reactivex.internal.operators.c.bg(this));
    }

    public final ai<List<T>> toSortedList() {
        return toSortedList(io.reactivex.internal.a.a.naturalComparator());
    }

    public final ai<List<T>> toSortedList(Comparator<? super T> comparator) {
        io.reactivex.internal.a.b.requireNonNull(comparator, "comparator is null");
        return toList().map(io.reactivex.internal.a.a.listSorter(comparator));
    }

    public final ai<List<T>> toSortedList(Comparator<? super T> comparator, int i) {
        io.reactivex.internal.a.b.requireNonNull(comparator, "comparator is null");
        return toList(i).map(io.reactivex.internal.a.a.listSorter(comparator));
    }

    public final ai<List<T>> toSortedList(int i) {
        return toSortedList(io.reactivex.internal.a.a.naturalComparator(), i);
    }

    public final j<T> unsubscribeOn(ah ahVar) {
        io.reactivex.internal.a.b.requireNonNull(ahVar, "scheduler is null");
        return a.onAssembly(new er(this, ahVar));
    }

    public final j<j<T>> window(long j) {
        return window(j, j, bufferSize());
    }

    public final j<j<T>> window(long j, long j2) {
        return window(j, j2, bufferSize());
    }

    public final j<j<T>> window(long j, long j2, int i) {
        io.reactivex.internal.a.b.verifyPositive(j2, "skip");
        io.reactivex.internal.a.b.verifyPositive(j, "count");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        et etVar = new et(this, j, j2, i);
        return a.onAssembly(etVar);
    }

    public final j<j<T>> window(long j, long j2, TimeUnit timeUnit) {
        return window(j, j2, timeUnit, io.reactivex.i.a.computation(), bufferSize());
    }

    public final j<j<T>> window(long j, long j2, TimeUnit timeUnit, ah ahVar) {
        return window(j, j2, timeUnit, ahVar, bufferSize());
    }

    public final j<j<T>> window(long j, long j2, TimeUnit timeUnit, ah ahVar, int i) {
        int i2 = i;
        io.reactivex.internal.a.b.verifyPositive(i2, "bufferSize");
        io.reactivex.internal.a.b.verifyPositive(j, "timespan");
        long j3 = j2;
        io.reactivex.internal.a.b.verifyPositive(j3, "timeskip");
        ah ahVar2 = ahVar;
        io.reactivex.internal.a.b.requireNonNull(ahVar2, "scheduler is null");
        TimeUnit timeUnit2 = timeUnit;
        io.reactivex.internal.a.b.requireNonNull(timeUnit2, "unit is null");
        ex exVar = new ex(this, j, j3, timeUnit2, ahVar2, Long.MAX_VALUE, i2, false);
        return a.onAssembly(exVar);
    }

    public final j<j<T>> window(long j, TimeUnit timeUnit) {
        return window(j, timeUnit, io.reactivex.i.a.computation(), Long.MAX_VALUE, false);
    }

    public final j<j<T>> window(long j, TimeUnit timeUnit, long j2) {
        return window(j, timeUnit, io.reactivex.i.a.computation(), j2, false);
    }

    public final j<j<T>> window(long j, TimeUnit timeUnit, long j2, boolean z) {
        return window(j, timeUnit, io.reactivex.i.a.computation(), j2, z);
    }

    public final j<j<T>> window(long j, TimeUnit timeUnit, ah ahVar) {
        return window(j, timeUnit, ahVar, Long.MAX_VALUE, false);
    }

    public final j<j<T>> window(long j, TimeUnit timeUnit, ah ahVar, long j2) {
        return window(j, timeUnit, ahVar, j2, false);
    }

    public final j<j<T>> window(long j, TimeUnit timeUnit, ah ahVar, long j2, boolean z) {
        return window(j, timeUnit, ahVar, j2, z, bufferSize());
    }

    public final j<j<T>> window(long j, TimeUnit timeUnit, ah ahVar, long j2, boolean z, int i) {
        int i2 = i;
        io.reactivex.internal.a.b.verifyPositive(i2, "bufferSize");
        ah ahVar2 = ahVar;
        io.reactivex.internal.a.b.requireNonNull(ahVar2, "scheduler is null");
        TimeUnit timeUnit2 = timeUnit;
        io.reactivex.internal.a.b.requireNonNull(timeUnit2, "unit is null");
        long j3 = j2;
        io.reactivex.internal.a.b.verifyPositive(j3, "count");
        ex exVar = new ex(this, j, j, timeUnit2, ahVar2, j3, i2, z);
        return a.onAssembly(exVar);
    }

    public final <B> j<j<T>> window(b<B> bVar) {
        return window(bVar, bufferSize());
    }

    public final <B> j<j<T>> window(b<B> bVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "boundaryIndicator is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return a.onAssembly(new eu(this, bVar, i));
    }

    public final <U, V> j<j<T>> window(b<U> bVar, io.reactivex.e.h<? super U, ? extends b<V>> hVar) {
        return window(bVar, hVar, bufferSize());
    }

    public final <U, V> j<j<T>> window(b<U> bVar, io.reactivex.e.h<? super U, ? extends b<V>> hVar, int i) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "openingIndicator is null");
        io.reactivex.internal.a.b.requireNonNull(hVar, "closingIndicator is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return a.onAssembly(new ev(this, bVar, hVar, i));
    }

    public final <B> j<j<T>> window(Callable<? extends b<B>> callable) {
        return window(callable, bufferSize());
    }

    public final <B> j<j<T>> window(Callable<? extends b<B>> callable, int i) {
        io.reactivex.internal.a.b.requireNonNull(callable, "boundaryIndicatorSupplier is null");
        io.reactivex.internal.a.b.verifyPositive(i, "bufferSize");
        return a.onAssembly(new ew(this, callable, i));
    }

    public final <U, R> j<R> withLatestFrom(b<? extends U> bVar, io.reactivex.e.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "other is null");
        io.reactivex.internal.a.b.requireNonNull(cVar, "combiner is null");
        return a.onAssembly(new ey(this, cVar, bVar));
    }

    public final <T1, T2, R> j<R> withLatestFrom(b<T1> bVar, b<T2> bVar2, i<? super T, ? super T1, ? super T2, R> iVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        return withLatestFrom((b<?>[]) new b[]{bVar, bVar2}, io.reactivex.internal.a.a.toFunction(iVar));
    }

    public final <T1, T2, T3, R> j<R> withLatestFrom(b<T1> bVar, b<T2> bVar2, b<T3> bVar3, io.reactivex.e.j<? super T, ? super T1, ? super T2, ? super T3, R> jVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        return withLatestFrom((b<?>[]) new b[]{bVar, bVar2, bVar3}, io.reactivex.internal.a.a.toFunction(jVar));
    }

    public final <T1, T2, T3, T4, R> j<R> withLatestFrom(b<T1> bVar, b<T2> bVar2, b<T3> bVar3, b<T4> bVar4, k<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> kVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "source1 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar2, "source2 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar3, "source3 is null");
        io.reactivex.internal.a.b.requireNonNull(bVar4, "source4 is null");
        return withLatestFrom((b<?>[]) new b[]{bVar, bVar2, bVar3, bVar4}, io.reactivex.internal.a.a.toFunction(kVar));
    }

    public final <R> j<R> withLatestFrom(b<?>[] bVarArr, io.reactivex.e.h<? super Object[], R> hVar) {
        io.reactivex.internal.a.b.requireNonNull(bVarArr, "others is null");
        io.reactivex.internal.a.b.requireNonNull(hVar, "combiner is null");
        return a.onAssembly(new ez(this, bVarArr, hVar));
    }

    public final <R> j<R> withLatestFrom(Iterable<? extends b<?>> iterable, io.reactivex.e.h<? super Object[], R> hVar) {
        io.reactivex.internal.a.b.requireNonNull(iterable, "others is null");
        io.reactivex.internal.a.b.requireNonNull(hVar, "combiner is null");
        return a.onAssembly(new ez(this, iterable, hVar));
    }

    public final <U, R> j<R> zipWith(Iterable<U> iterable, io.reactivex.e.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.a.b.requireNonNull(iterable, "other is null");
        io.reactivex.internal.a.b.requireNonNull(cVar, "zipper is null");
        return a.onAssembly(new fb(this, iterable, cVar));
    }

    public final <U, R> j<R> zipWith(b<? extends U> bVar, io.reactivex.e.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.a.b.requireNonNull(bVar, "other is null");
        return zip(this, bVar, cVar);
    }

    public final <U, R> j<R> zipWith(b<? extends U> bVar, io.reactivex.e.c<? super T, ? super U, ? extends R> cVar, boolean z) {
        return zip(this, bVar, cVar, z);
    }

    public final <U, R> j<R> zipWith(b<? extends U> bVar, io.reactivex.e.c<? super T, ? super U, ? extends R> cVar, boolean z, int i) {
        return zip(this, bVar, cVar, z, i);
    }

    public final io.reactivex.k.e<T> test() {
        io.reactivex.k.e<T> eVar = new io.reactivex.k.e<>();
        subscribe(eVar);
        return eVar;
    }

    public final io.reactivex.k.e<T> test(long j) {
        io.reactivex.k.e<T> eVar = new io.reactivex.k.e<>(j);
        subscribe(eVar);
        return eVar;
    }

    public final io.reactivex.k.e<T> test(long j, boolean z) {
        io.reactivex.k.e<T> eVar = new io.reactivex.k.e<>(j);
        if (z) {
            eVar.cancel();
        }
        subscribe(eVar);
        return eVar;
    }
}
