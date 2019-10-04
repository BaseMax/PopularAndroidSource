package com.raizlabs.android.dbflow.sql.language.a;

import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.language.a.a;
import com.raizlabs.android.dbflow.sql.language.s;
import com.raizlabs.android.dbflow.sql.language.v;

public interface a<P extends a> extends b {
    P as(String str);

    v asc();

    P concatenate(a aVar);

    v desc();

    P distinct();

    P div(a aVar);

    String getCursorKey();

    s getNameAlias();

    Class<?> getTable();

    P minus(a aVar);

    P plus(a aVar);

    P rem(a aVar);

    P times(a aVar);

    P withTable();

    P withTable(s sVar);
}
