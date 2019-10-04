package com.google.android.gms.c;

import java.util.concurrent.Executor;

final class l<TResult, TContinuationResult> implements c, d<TContinuationResult>, t<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f2696a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final a<TResult, f<TContinuationResult>> f2697b;
    /* access modifiers changed from: private */
    public final w<TContinuationResult> c;

    public l(Executor executor, a<TResult, f<TContinuationResult>> aVar, w<TContinuationResult> wVar) {
        this.f2696a = executor;
        this.f2697b = aVar;
        this.c = wVar;
    }

    public final void cancel() {
        throw new UnsupportedOperationException();
    }

    public final void onComplete(f<TResult> fVar) {
        this.f2696a.execute(new m(this, fVar));
    }

    public final void onFailure(Exception exc) {
        this.c.setException(exc);
    }

    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.c.setResult(tcontinuationresult);
    }
}
