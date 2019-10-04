package io.reactivex.internal.e;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

final class c implements Future<Object> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.b.c f6810a;

    public final Object get() throws InterruptedException, ExecutionException {
        return null;
    }

    public final Object get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return null;
    }

    public final boolean isCancelled() {
        return false;
    }

    public final boolean isDone() {
        return false;
    }

    c(io.reactivex.b.c cVar) {
        this.f6810a = cVar;
    }

    public final boolean cancel(boolean z) {
        this.f6810a.dispose();
        return false;
    }
}
