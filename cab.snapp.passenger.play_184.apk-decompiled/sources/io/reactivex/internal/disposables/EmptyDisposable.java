package io.reactivex.internal.disposables;

import io.reactivex.ag;
import io.reactivex.al;
import io.reactivex.d;
import io.reactivex.internal.b.e;
import io.reactivex.t;

public enum EmptyDisposable implements e<Object> {
    INSTANCE,
    NEVER;

    public final void clear() {
    }

    public final void dispose() {
    }

    public final boolean isEmpty() {
        return true;
    }

    public final Object poll() throws Exception {
        return null;
    }

    public final int requestFusion(int i) {
        return i & 2;
    }

    public final boolean isDisposed() {
        return this == INSTANCE;
    }

    public static void complete(ag<?> agVar) {
        agVar.onSubscribe(INSTANCE);
        agVar.onComplete();
    }

    public static void complete(t<?> tVar) {
        tVar.onSubscribe(INSTANCE);
        tVar.onComplete();
    }

    public static void error(Throwable th, ag<?> agVar) {
        agVar.onSubscribe(INSTANCE);
        agVar.onError(th);
    }

    public static void complete(d dVar) {
        dVar.onSubscribe(INSTANCE);
        dVar.onComplete();
    }

    public static void error(Throwable th, d dVar) {
        dVar.onSubscribe(INSTANCE);
        dVar.onError(th);
    }

    public static void error(Throwable th, al<?> alVar) {
        alVar.onSubscribe(INSTANCE);
        alVar.onError(th);
    }

    public static void error(Throwable th, t<?> tVar) {
        tVar.onSubscribe(INSTANCE);
        tVar.onError(th);
    }

    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public final boolean offer(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
