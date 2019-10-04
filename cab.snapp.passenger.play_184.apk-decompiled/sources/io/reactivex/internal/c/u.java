package io.reactivex.internal.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.b.i;
import io.reactivex.internal.util.k;
import io.reactivex.internal.util.o;

public abstract class u<T, U, V> extends w implements ag<T>, k<U, V> {

    /* renamed from: a  reason: collision with root package name */
    protected final ag<? super V> f6788a;

    /* renamed from: b  reason: collision with root package name */
    protected volatile boolean f6789b;
    protected Throwable c;
    public volatile boolean cancelled;
    public final i<U> queue;

    public void accept(ag<? super V> agVar, U u) {
    }

    public u(ag<? super V> agVar, i<U> iVar) {
        this.f6788a = agVar;
        this.queue = iVar;
    }

    public final boolean cancelled() {
        return this.cancelled;
    }

    public final boolean done() {
        return this.f6789b;
    }

    public final boolean enter() {
        return this.d.getAndIncrement() == 0;
    }

    public final boolean fastEnter() {
        return this.d.get() == 0 && this.d.compareAndSet(0, 1);
    }

    /* access modifiers changed from: protected */
    public final void a(U u, c cVar) {
        ag<? super V> agVar = this.f6788a;
        i<U> iVar = this.queue;
        if (this.d.get() != 0 || !this.d.compareAndSet(0, 1)) {
            iVar.offer(u);
            if (!enter()) {
                return;
            }
        } else {
            accept(agVar, u);
            if (leave(-1) == 0) {
                return;
            }
        }
        o.drainLoop(iVar, agVar, false, cVar, this);
    }

    public final void fastPathOrderedEmit(U u, boolean z, c cVar) {
        ag<? super V> agVar = this.f6788a;
        i<U> iVar = this.queue;
        if (this.d.get() != 0 || !this.d.compareAndSet(0, 1)) {
            iVar.offer(u);
            if (!enter()) {
                return;
            }
        } else if (iVar.isEmpty()) {
            accept(agVar, u);
            if (leave(-1) == 0) {
                return;
            }
        } else {
            iVar.offer(u);
        }
        o.drainLoop(iVar, agVar, z, cVar, this);
    }

    public final Throwable error() {
        return this.c;
    }

    public final int leave(int i) {
        return this.d.addAndGet(i);
    }
}
