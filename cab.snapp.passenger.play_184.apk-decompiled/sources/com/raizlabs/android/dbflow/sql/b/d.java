package com.raizlabs.android.dbflow.sql.b;

import com.raizlabs.android.dbflow.c.b;
import com.raizlabs.android.dbflow.c.c;
import com.raizlabs.android.dbflow.structure.b.i;
import java.util.List;

public interface d<TModel> extends e {
    a<TModel> async();

    b<TModel> cursorList();

    d<TModel> disableCaching();

    c<TModel> flowQueryList();

    Class<TModel> getTable();

    <TQueryModel> List<TQueryModel> queryCustomList(Class<TQueryModel> cls);

    <TQueryModel> TQueryModel queryCustomSingle(Class<TQueryModel> cls);

    List<TModel> queryList();

    List<TModel> queryList(i iVar);

    com.raizlabs.android.dbflow.sql.language.i<TModel> queryResults();

    TModel querySingle();

    TModel querySingle(i iVar);
}
