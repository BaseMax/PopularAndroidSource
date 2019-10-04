package io.reactivex.internal.f;

import io.reactivex.internal.b.i;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import org.b.c;

public abstract class n<T, U, V> extends r implements io.reactivex.internal.util.n<U, V>, o<T> {
    public volatile boolean cancelled;
    protected final c<? super V> n;
    protected volatile boolean o;
    protected Throwable p;
    public final i<U> queue;

    public boolean accept(c<? super V> cVar, U u) {
        return false;
    }

    public n(c<? super V> cVar, i<U> iVar) {
        this.n = cVar;
        this.queue = iVar;
    }

    public final boolean cancelled() {
        return this.cancelled;
    }

    public final boolean done() {
        return this.o;
    }

    public final boolean enter() {
        return this.r.getAndIncrement() == 0;
    }

    public final boolean fastEnter() {
        return this.r.get() == 0 && this.r.compareAndSet(0, 1);
    }

    /* access modifiers changed from: protected */
    public final void a(U u, io.reactivex.b.c cVar) {
        c<? super V> cVar2 = this.n;
        i<U> iVar = this.queue;
        if (fastEnter()) {
            long j = this.q.get();
            if (j != 0) {
                if (accept(cVar2, u) && j != Long.MAX_VALUE) {
                    produced(1);
                }
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                cVar.dispose();
                cVar2.onError(new io.reactivex.c.c("Could not emit buffer due to lack of requests"));
                return;
            }
        } else {
            iVar.offer(u);
            if (!enter()) {
                return;
            }
        }
        io.reactivex.internal.util.o.drainMaxLoop(iVar, cVar2, false, cVar, this);
    }

    public final void fastPathOrderedEmitMax(U u, boolean z, io.reactivex.b.c cVar) {
        c<? super V> cVar2 = this.n;
        i<U> iVar = this.queue;
        if (fastEnter()) {
            long j = this.q.get();
            if (j == 0) {
                this.cancelled = true;
                cVar.dispose();
                cVar2.onError(new io.reactivex.c.c("Could not emit buffer due to lack of requests"));
                return;
            } else if (iVar.isEmpty()) {
                if (accept(cVar2, u) && j != Long.MAX_VALUE) {
                    produced(1);
                }
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                iVar.offer(u);
            }
        } else {
            iVar.offer(u);
            if (!enter()) {
                return;
            }
        }
        io.reactivex.internal.util.o.drainMaxLoop(iVar, cVar2, z, cVar, this);
    }

    public final Throwable error() {
        return this.p;
    }

    public final int leave(int i) {
        return this.r.addAndGet(i);
    }

    public final long requested() {
        return this.q.get();
    }

    public final long produced(long j) {
        return this.q.addAndGet(-j);
    }

    public final void requested(long j) {
        if (SubscriptionHelper.validate(j)) {
            io.reactivex.internal.util.c.add(this.q, j);
        }
    }
}
