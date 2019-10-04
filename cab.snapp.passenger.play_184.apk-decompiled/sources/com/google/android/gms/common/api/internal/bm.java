package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.p;
import com.google.android.gms.common.api.q;
import java.util.concurrent.TimeUnit;

public final class bm<R extends m> extends g<R> {

    /* renamed from: a  reason: collision with root package name */
    private final BasePendingResult<R> f2798a;

    public bm(h<R> hVar) {
        if (hVar instanceof BasePendingResult) {
            this.f2798a = (BasePendingResult) hVar;
            return;
        }
        throw new IllegalArgumentException("OptionalPendingResult can only wrap PendingResults generated by an API call.");
    }

    public final R await() {
        return this.f2798a.await();
    }

    public final R await(long j, TimeUnit timeUnit) {
        return this.f2798a.await(j, timeUnit);
    }

    public final void cancel() {
        this.f2798a.cancel();
    }

    public final R get() {
        if (isDone()) {
            return await(0, TimeUnit.MILLISECONDS);
        }
        throw new IllegalStateException("Result is not available. Check that isDone() returns true before calling get().");
    }

    public final boolean isCanceled() {
        return this.f2798a.isCanceled();
    }

    public final boolean isDone() {
        return this.f2798a.isReady();
    }

    public final void setResultCallback(n<? super R> nVar) {
        this.f2798a.setResultCallback(nVar);
    }

    public final void setResultCallback(n<? super R> nVar, long j, TimeUnit timeUnit) {
        this.f2798a.setResultCallback(nVar, j, timeUnit);
    }

    public final <S extends m> q<S> then(p<? super R, ? extends S> pVar) {
        return this.f2798a.then(pVar);
    }

    public final void zza(h.a aVar) {
        this.f2798a.zza(aVar);
    }

    public final Integer zzagv() {
        return this.f2798a.zzagv();
    }
}
