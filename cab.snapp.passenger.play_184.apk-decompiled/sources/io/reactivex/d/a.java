package io.reactivex.d;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.e.g;
import io.reactivex.internal.a.b;
import io.reactivex.internal.operators.flowable.cr;
import io.reactivex.internal.operators.flowable.cs;
import io.reactivex.internal.operators.flowable.da;
import io.reactivex.internal.operators.flowable.k;
import io.reactivex.internal.util.f;
import io.reactivex.j;
import java.util.concurrent.TimeUnit;

public abstract class a<T> extends j<T> {
    public abstract void connect(g<? super c> gVar);

    public final c connect() {
        f fVar = new f();
        connect(fVar);
        return fVar.disposable;
    }

    private a<T> a() {
        if (!(this instanceof cs)) {
            return this;
        }
        cs csVar = (cs) this;
        return io.reactivex.g.a.onAssembly(new cr(csVar.publishSource(), csVar.publishBufferSize()));
    }

    public j<T> refCount() {
        return io.reactivex.g.a.onAssembly(new da(a()));
    }

    public final j<T> refCount(int i) {
        return refCount(i, 0, TimeUnit.NANOSECONDS, io.reactivex.i.a.trampoline());
    }

    public final j<T> refCount(long j, TimeUnit timeUnit) {
        return refCount(1, j, timeUnit, io.reactivex.i.a.computation());
    }

    public final j<T> refCount(long j, TimeUnit timeUnit, ah ahVar) {
        return refCount(1, j, timeUnit, ahVar);
    }

    public final j<T> refCount(int i, long j, TimeUnit timeUnit) {
        return refCount(i, j, timeUnit, io.reactivex.i.a.computation());
    }

    public final j<T> refCount(int i, long j, TimeUnit timeUnit, ah ahVar) {
        b.verifyPositive(i, "subscriberCount");
        b.requireNonNull(timeUnit, "unit is null");
        b.requireNonNull(ahVar, "scheduler is null");
        da daVar = new da(a(), i, j, timeUnit, ahVar);
        return io.reactivex.g.a.onAssembly(daVar);
    }

    public j<T> autoConnect() {
        return autoConnect(1);
    }

    public j<T> autoConnect(int i) {
        return autoConnect(i, io.reactivex.internal.a.a.emptyConsumer());
    }

    public j<T> autoConnect(int i, g<? super c> gVar) {
        if (i > 0) {
            return io.reactivex.g.a.onAssembly(new k(this, i, gVar));
        }
        connect(gVar);
        return io.reactivex.g.a.onAssembly(this);
    }
}
