package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.language.t;
import java.util.Collection;

public interface n<T> extends b, m {
    t.a<T> between(T t);

    t<T> concatenate(T t);

    t<T> div(T t);

    t<T> eq(T t);

    t<T> greaterThan(T t);

    t<T> greaterThanOrEq(T t);

    t.b<T> in(T t, T... tArr);

    t.b<T> in(Collection<T> collection);

    t<T> is(T t);

    t<T> isNot(T t);

    t<T> lessThan(T t);

    t<T> lessThanOrEq(T t);

    t<T> minus(T t);

    t<T> notEq(T t);

    t.b<T> notIn(T t, T... tArr);

    t.b<T> notIn(Collection<T> collection);

    t<T> plus(T t);

    t<T> rem(T t);

    t<T> times(T t);
}
