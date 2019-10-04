package com.google.android.gms.c;

import java.util.concurrent.Executor;

final class j<TResult, TContinuationResult> implements t<TResult> {

    /* renamed from: a  reason: collision with root package name */
    final a<TResult, TContinuationResult> f2692a;

    /* renamed from: b  reason: collision with root package name */
    final w<TContinuationResult> f2693b;
    private final Executor c;

    public j(Executor executor, a<TResult, TContinuationResult> aVar, w<TContinuationResult> wVar) {
        this.c = executor;
        this.f2692a = aVar;
        this.f2693b = wVar;
    }

    public final void cancel() {
        throw new UnsupportedOperationException();
    }

    public final void onComplete(f<TResult> fVar) {
        this.c.execute(new k(this, fVar));
    }
}
