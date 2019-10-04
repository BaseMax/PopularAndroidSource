package io.reactivex.internal.operators.maybe;

import io.reactivex.e.h;
import io.reactivex.w;
import org.b.b;

public enum MaybeToPublisher implements h<w<Object>, b<Object>> {
    ;

    private MaybeToPublisher(String str) {
    }

    public static <T> h<w<T>, b<T>> instance() {
        return INSTANCE;
    }

    public final b<Object> apply(w<Object> wVar) throws Exception {
        return new bm(wVar);
    }
}
