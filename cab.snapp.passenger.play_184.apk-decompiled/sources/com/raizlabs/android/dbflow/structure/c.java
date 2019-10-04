package com.raizlabs.android.dbflow.structure;

import android.content.ContentValues;
import com.raizlabs.android.dbflow.structure.b.g;
import com.raizlabs.android.dbflow.structure.b.i;
import java.util.Collection;

public interface c<TModel> {
    void bindToContentValues(ContentValues contentValues, TModel tmodel);

    void bindToDeleteStatement(g gVar, TModel tmodel);

    void bindToInsertStatement(g gVar, TModel tmodel);

    void bindToInsertStatement(g gVar, TModel tmodel, int i);

    void bindToInsertValues(ContentValues contentValues, TModel tmodel);

    void bindToStatement(g gVar, TModel tmodel);

    void bindToUpdateStatement(g gVar, TModel tmodel);

    boolean cachingEnabled();

    boolean delete(TModel tmodel);

    boolean delete(TModel tmodel, i iVar);

    void deleteAll(Collection<TModel> collection);

    void deleteAll(Collection<TModel> collection, i iVar);

    Number getAutoIncrementingId(TModel tmodel);

    String getTableName();

    long insert(TModel tmodel);

    long insert(TModel tmodel, i iVar);

    void insertAll(Collection<TModel> collection);

    void insertAll(Collection<TModel> collection, i iVar);

    boolean save(TModel tmodel);

    boolean save(TModel tmodel, i iVar);

    void saveAll(Collection<TModel> collection);

    void saveAll(Collection<TModel> collection, i iVar);

    boolean update(TModel tmodel);

    boolean update(TModel tmodel, i iVar);

    void updateAll(Collection<TModel> collection);

    void updateAll(Collection<TModel> collection, i iVar);

    void updateAutoIncrement(TModel tmodel, Number number);
}
