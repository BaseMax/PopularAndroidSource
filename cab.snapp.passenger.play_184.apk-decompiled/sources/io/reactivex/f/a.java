package io.reactivex.f;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.e.g;
import io.reactivex.internal.a.b;
import io.reactivex.internal.operators.c.ch;
import io.reactivex.internal.operators.c.ci;
import io.reactivex.internal.operators.c.cp;
import io.reactivex.internal.operators.c.k;
import io.reactivex.internal.util.f;
import io.reactivex.z;
import java.util.concurrent.TimeUnit;

public abstract class a<T> extends z<T> {
    public abstract void connect(g<? super c> gVar);

    public final c connect() {
        f fVar = new f();
        connect(fVar);
        return fVar.disposable;
    }

    private a<T> a() {
        return this instanceof ci ? io.reactivex.g.a.onAssembly(new ch(((ci) this).publishSource())) : this;
    }

    public z<T> refCount() {
        return io.reactivex.g.a.onAssembly(new cp(a()));
    }

    public final z<T> refCount(int i) {
        return refCount(i, 0, TimeUnit.NANOSECONDS, io.reactivex.i.a.trampoline());
    }

    public final z<T> refCount(long j, TimeUnit timeUnit) {
        return refCount(1, j, timeUnit, io.reactivex.i.a.computation());
    }

    public final z<T> refCount(long j, TimeUnit timeUnit, ah ahVar) {
        return refCount(1, j, timeUnit, ahVar);
    }

    public final z<T> refCount(int i, long j, TimeUnit timeUnit) {
        return refCount(i, j, timeUnit, io.reactivex.i.a.computation());
    }

    public final z<T> refCount(int i, long j, TimeUnit timeUnit, ah ahVar) {
        b.verifyPositive(i, "subscriberCount");
        b.requireNonNull(timeUnit, "unit is null");
        b.requireNonNull(ahVar, "scheduler is null");
        cp cpVar = new cp(a(), i, j, timeUnit, ahVar);
        return io.reactivex.g.a.onAssembly(cpVar);
    }

    public z<T> autoConnect() {
        return autoConnect(1);
    }

    public z<T> autoConnect(int i) {
        return autoConnect(i, io.reactivex.internal.a.a.emptyConsumer());
    }

    public z<T> autoConnect(int i, g<? super c> gVar) {
        if (i > 0) {
            return io.reactivex.g.a.onAssembly(new k(this, i, gVar));
        }
        connect(gVar);
        return io.reactivex.g.a.onAssembly(this);
    }
}
