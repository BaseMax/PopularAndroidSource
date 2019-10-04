package io.reactivex.internal.util;

import io.reactivex.e.c;
import java.util.List;

public enum ListAddBiConsumer implements c<List, Object, List> {
    ;

    private ListAddBiConsumer(String str) {
    }

    public static <T> c<List<T>, T, List<T>> instance() {
        return INSTANCE;
    }

    public final List apply(List list, Object obj) throws Exception {
        list.add(obj);
        return list;
    }
}
