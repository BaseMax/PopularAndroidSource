package io.reactivex.internal.util;

import io.reactivex.e.h;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public final class p<T> implements h<List<T>, List<T>> {

    /* renamed from: a  reason: collision with root package name */
    final Comparator<? super T> f8646a;

    public p(Comparator<? super T> comparator) {
        this.f8646a = comparator;
    }

    public final List<T> apply(List<T> list) throws Exception {
        Collections.sort(list, this.f8646a);
        return list;
    }
}
