package com.google.android.gms.c;

public final class g<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final w<TResult> f2686a = new w<>();

    public final f<TResult> getTask() {
        return this.f2686a;
    }

    public final void setException(Exception exc) {
        this.f2686a.setException(exc);
    }

    public final void setResult(TResult tresult) {
        this.f2686a.setResult(tresult);
    }

    public final boolean trySetException(Exception exc) {
        return this.f2686a.trySetException(exc);
    }

    public final boolean trySetResult(TResult tresult) {
        return this.f2686a.trySetResult(tresult);
    }
}
