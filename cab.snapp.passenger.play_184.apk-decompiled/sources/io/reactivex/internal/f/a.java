package io.reactivex.internal.f;

import io.reactivex.c.b;
import io.reactivex.internal.b.g;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.b.d;

public abstract class a<T, R> implements io.reactivex.internal.b.a<T>, g<R> {
    protected final io.reactivex.internal.b.a<? super R> e;
    protected d f;
    protected g<T> g;
    protected boolean h;
    protected int i;

    public a(io.reactivex.internal.b.a<? super R> aVar) {
        this.e = aVar;
    }

    public final void onSubscribe(d dVar) {
        if (SubscriptionHelper.validate(this.f, dVar)) {
            this.f = dVar;
            if (dVar instanceof g) {
                this.g = (g) dVar;
            }
            this.e.onSubscribe(this);
        }
    }

    public void onError(Throwable th) {
        if (this.h) {
            io.reactivex.g.a.onError(th);
            return;
        }
        this.h = true;
        this.e.onError(th);
    }

    /* access modifiers changed from: protected */
    public final void a(Throwable th) {
        b.throwIfFatal(th);
        this.f.cancel();
        onError(th);
    }

    public void onComplete() {
        if (!this.h) {
            this.h = true;
            this.e.onComplete();
        }
    }

    /* access modifiers changed from: protected */
    public final int a(int i2) {
        g<T> gVar = this.g;
        if (gVar == null || (i2 & 4) != 0) {
            return 0;
        }
        int requestFusion = gVar.requestFusion(i2);
        if (requestFusion != 0) {
            this.i = requestFusion;
        }
        return requestFusion;
    }

    public void request(long j) {
        this.f.request(j);
    }

    public void cancel() {
        this.f.cancel();
    }

    public boolean isEmpty() {
        return this.g.isEmpty();
    }

    public void clear() {
        this.g.clear();
    }

    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public final boolean offer(R r, R r2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}