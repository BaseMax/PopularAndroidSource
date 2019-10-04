package io.reactivex.internal.util;

import io.reactivex.e.h;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public enum ArrayListSupplier implements h<Object, List<Object>>, Callable<List<Object>> {
    ;

    private ArrayListSupplier(String str) {
    }

    public static <T> Callable<List<T>> asCallable() {
        return INSTANCE;
    }

    public static <T, O> h<O, List<T>> asFunction() {
        return INSTANCE;
    }

    public final List<Object> call() throws Exception {
        return new ArrayList();
    }

    public final List<Object> apply(Object obj) throws Exception {
        return new ArrayList();
    }
}
