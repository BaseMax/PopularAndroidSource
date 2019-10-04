package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.b;

public interface ae<TModel> extends b, a {
    b getQueryBuilderBase();

    Class<TModel> getTable();
}
