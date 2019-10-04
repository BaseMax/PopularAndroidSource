package io.reactivex.internal.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.internal.b.e;
import io.reactivex.internal.disposables.DisposableHelper;

public abstract class a<T, R> implements ag<T>, e<R> {

    /* renamed from: a  reason: collision with root package name */
    protected final ag<? super R> f6762a;

    /* renamed from: b  reason: collision with root package name */
    protected c f6763b;
    protected e<T> c;
    protected boolean d;
    protected int e;

    public a(ag<? super R> agVar) {
        this.f6762a = agVar;
    }

    public final void onSubscribe(c cVar) {
        if (DisposableHelper.validate(this.f6763b, cVar)) {
            this.f6763b = cVar;
            if (cVar instanceof e) {
                this.c = (e) cVar;
            }
            this.f6762a.onSubscribe(this);
        }
    }

    public void onError(Throwable th) {
        if (this.d) {
            io.reactivex.g.a.onError(th);
            return;
        }
        this.d = true;
        this.f6762a.onError(th);
    }

    /* access modifiers changed from: protected */
    public final void a(Throwable th) {
        b.throwIfFatal(th);
        this.f6763b.dispose();
        onError(th);
    }

    public void onComplete() {
        if (!this.d) {
            this.d = true;
            this.f6762a.onComplete();
        }
    }

    /* access modifiers changed from: protected */
    public final int a(int i) {
        e<T> eVar = this.c;
        if (eVar == null || (i & 4) != 0) {
            return 0;
        }
        int requestFusion = eVar.requestFusion(i);
        if (requestFusion != 0) {
            this.e = requestFusion;
        }
        return requestFusion;
    }

    public void dispose() {
        this.f6763b.dispose();
    }

    public boolean isDisposed() {
        return this.f6763b.isDisposed();
    }

    public boolean isEmpty() {
        return this.c.isEmpty();
    }

    public void clear() {
        this.c.clear();
    }

    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public final boolean offer(R r, R r2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
