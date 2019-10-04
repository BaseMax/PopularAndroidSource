package io.reactivex.internal.util;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

public enum HashMapSupplier implements Callable<Map<Object, Object>> {
    ;

    private HashMapSupplier(String str) {
    }

    public static <K, V> Callable<Map<K, V>> asCallable() {
        return INSTANCE;
    }

    public final Map<Object, Object> call() throws Exception {
        return new HashMap();
    }
}
