package com.google.android.gms.c;

import java.util.concurrent.Executor;

final class n<TResult> implements t<TResult> {

    /* renamed from: a  reason: collision with root package name */
    final Object f2700a = new Object();

    /* renamed from: b  reason: collision with root package name */
    b<TResult> f2701b;
    private final Executor c;

    public n(Executor executor, b<TResult> bVar) {
        this.c = executor;
        this.f2701b = bVar;
    }

    public final void cancel() {
        synchronized (this.f2700a) {
            this.f2701b = null;
        }
    }

    public final void onComplete(f<TResult> fVar) {
        synchronized (this.f2700a) {
            if (this.f2701b != null) {
                this.c.execute(new o(this, fVar));
            }
        }
    }
}
