package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.language.t;

public interface m extends b {
    t.a between(b bVar);

    t.a between(m mVar);

    t concatenate(m mVar);

    t div(b bVar);

    t eq(b bVar);

    t eq(m mVar);

    t glob(b bVar);

    t glob(m mVar);

    t glob(String str);

    t greaterThan(b bVar);

    t greaterThan(m mVar);

    t greaterThanOrEq(b bVar);

    t greaterThanOrEq(m mVar);

    t.b in(b bVar, b... bVarArr);

    t.b in(m mVar, m... mVarArr);

    t is(b bVar);

    t is(m mVar);

    t isNot(b bVar);

    t isNot(m mVar);

    t isNotNull();

    t isNull();

    t lessThan(b bVar);

    t lessThan(m mVar);

    t lessThanOrEq(b bVar);

    t lessThanOrEq(m mVar);

    t like(b bVar);

    t like(m mVar);

    t like(String str);

    t minus(b bVar);

    t notEq(b bVar);

    t notEq(m mVar);

    t.b notIn(b bVar, b... bVarArr);

    t.b notIn(m mVar, m... mVarArr);

    t notLike(b bVar);

    t notLike(m mVar);

    t notLike(String str);

    t plus(b bVar);

    t rem(b bVar);

    t times(b bVar);
}
