package io.reactivex.internal.f;

import io.reactivex.internal.b.g;
import io.reactivex.internal.b.j;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class k<T> extends AtomicReference<d> implements o<T>, d {

    /* renamed from: a  reason: collision with root package name */
    final l<T> f6875a;

    /* renamed from: b  reason: collision with root package name */
    final int f6876b;
    final int c;
    volatile j<T> d;
    volatile boolean e;
    long f;
    int g;

    public k(l<T> lVar, int i) {
        this.f6875a = lVar;
        this.f6876b = i;
        this.c = i - (i >> 2);
    }

    public final void onSubscribe(d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            if (dVar instanceof g) {
                g gVar = (g) dVar;
                int requestFusion = gVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.g = requestFusion;
                    this.d = gVar;
                    this.e = true;
                    this.f6875a.innerComplete(this);
                    return;
                } else if (requestFusion == 2) {
                    this.g = requestFusion;
                    this.d = gVar;
                    io.reactivex.internal.util.o.request(dVar, this.f6876b);
                    return;
                }
            }
            this.d = io.reactivex.internal.util.o.createQueue(this.f6876b);
            io.reactivex.internal.util.o.request(dVar, this.f6876b);
        }
    }

    public final void onNext(T t) {
        if (this.g == 0) {
            this.f6875a.innerNext(this, t);
        } else {
            this.f6875a.drain();
        }
    }

    public final void onError(Throwable th) {
        this.f6875a.innerError(this, th);
    }

    public final void onComplete() {
        this.f6875a.innerComplete(this);
    }

    public final void request(long j) {
        if (this.g != 1) {
            long j2 = this.f + j;
            if (j2 >= ((long) this.c)) {
                this.f = 0;
                ((d) get()).request(j2);
                return;
            }
            this.f = j2;
        }
    }

    public final void requestOne() {
        if (this.g != 1) {
            long j = this.f + 1;
            if (j == ((long) this.c)) {
                this.f = 0;
                ((d) get()).request(j);
                return;
            }
            this.f = j;
        }
    }

    public final void cancel() {
        SubscriptionHelper.cancel(this);
    }

    public final boolean isDone() {
        return this.e;
    }

    public final void setDone() {
        this.e = true;
    }

    public final j<T> queue() {
        return this.d;
    }
}
