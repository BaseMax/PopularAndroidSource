package io.reactivex.internal.subscriptions;

import io.reactivex.internal.a.b;
import io.reactivex.internal.util.c;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public class e extends AtomicInteger implements d {
    d j;
    long k;
    final AtomicReference<d> l = new AtomicReference<>();
    final AtomicLong m = new AtomicLong();
    final AtomicLong n = new AtomicLong();
    final boolean o;
    volatile boolean p;
    protected boolean q;

    public e(boolean z) {
        this.o = z;
    }

    public final void setSubscription(d dVar) {
        if (this.p) {
            dVar.cancel();
            return;
        }
        b.requireNonNull(dVar, "s is null");
        if (get() != 0 || !compareAndSet(0, 1)) {
            d andSet = this.l.getAndSet(dVar);
            if (andSet != null && this.o) {
                andSet.cancel();
            }
            a();
            return;
        }
        d dVar2 = this.j;
        if (dVar2 != null && this.o) {
            dVar2.cancel();
        }
        this.j = dVar;
        long j2 = this.k;
        if (decrementAndGet() != 0) {
            b();
        }
        if (j2 != 0) {
            dVar.request(j2);
        }
    }

    public final void request(long j2) {
        if (SubscriptionHelper.validate(j2) && !this.q) {
            if (get() != 0 || !compareAndSet(0, 1)) {
                c.add(this.m, j2);
                a();
                return;
            }
            long j3 = this.k;
            if (j3 != Long.MAX_VALUE) {
                long addCap = c.addCap(j3, j2);
                this.k = addCap;
                if (addCap == Long.MAX_VALUE) {
                    this.q = true;
                }
            }
            d dVar = this.j;
            if (decrementAndGet() != 0) {
                b();
            }
            if (dVar != null) {
                dVar.request(j2);
            }
        }
    }

    public final void produced(long j2) {
        if (!this.q) {
            if (get() != 0 || !compareAndSet(0, 1)) {
                c.add(this.n, j2);
                a();
                return;
            }
            long j3 = this.k;
            if (j3 != Long.MAX_VALUE) {
                long j4 = j3 - j2;
                long j5 = 0;
                if (j4 < 0) {
                    SubscriptionHelper.reportMoreProduced(j4);
                } else {
                    j5 = j4;
                }
                this.k = j5;
            }
            if (decrementAndGet() != 0) {
                b();
            }
        }
    }

    public void cancel() {
        if (!this.p) {
            this.p = true;
            a();
        }
    }

    private void a() {
        if (getAndIncrement() == 0) {
            b();
        }
    }

    private void b() {
        d dVar = null;
        long j2 = 0;
        int i = 1;
        do {
            d dVar2 = this.l.get();
            if (dVar2 != null) {
                dVar2 = this.l.getAndSet(null);
            }
            long j3 = this.m.get();
            if (j3 != 0) {
                j3 = this.m.getAndSet(0);
            }
            long j4 = this.n.get();
            if (j4 != 0) {
                j4 = this.n.getAndSet(0);
            }
            d dVar3 = this.j;
            if (this.p) {
                if (dVar3 != null) {
                    dVar3.cancel();
                    this.j = null;
                }
                if (dVar2 != null) {
                    dVar2.cancel();
                }
            } else {
                long j5 = this.k;
                if (j5 != Long.MAX_VALUE) {
                    j5 = c.addCap(j5, j3);
                    if (j5 != Long.MAX_VALUE) {
                        long j6 = j5 - j4;
                        if (j6 < 0) {
                            SubscriptionHelper.reportMoreProduced(j6);
                            j6 = 0;
                        }
                        j5 = j6;
                    }
                    this.k = j5;
                }
                if (dVar2 != null) {
                    if (dVar3 != null && this.o) {
                        dVar3.cancel();
                    }
                    this.j = dVar2;
                    if (j5 != 0) {
                        j2 = c.addCap(j2, j5);
                        dVar = dVar2;
                    }
                } else if (!(dVar3 == null || j3 == 0)) {
                    j2 = c.addCap(j2, j3);
                    dVar = dVar3;
                }
            }
            i = addAndGet(-i);
        } while (i != 0);
        if (j2 != 0) {
            dVar.request(j2);
        }
    }

    public final boolean isUnbounded() {
        return this.q;
    }

    public final boolean isCancelled() {
        return this.p;
    }
}
