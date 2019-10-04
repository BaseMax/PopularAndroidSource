package io.reactivex.internal.util;

import io.reactivex.ag;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g.a;
import io.reactivex.o;
import io.reactivex.t;

public enum EmptyComponent implements ag<Object>, al<Object>, c, d, o<Object>, t<Object>, org.b.d {
    ;

    public final void cancel() {
    }

    public final void dispose() {
    }

    public final boolean isDisposed() {
        return true;
    }

    public final void onComplete() {
    }

    public final void onNext(Object obj) {
    }

    public final void onSuccess(Object obj) {
    }

    public final void request(long j) {
    }

    private EmptyComponent(String str) {
    }

    public static <T> org.b.c<T> asSubscriber() {
        return INSTANCE;
    }

    public static <T> ag<T> asObserver() {
        return INSTANCE;
    }

    public final void onSubscribe(c cVar) {
        cVar.dispose();
    }

    public final void onSubscribe(org.b.d dVar) {
        dVar.cancel();
    }

    public final void onError(Throwable th) {
        a.onError(th);
    }
}
