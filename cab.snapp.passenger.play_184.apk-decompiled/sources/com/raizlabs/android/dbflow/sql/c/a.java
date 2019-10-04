package com.raizlabs.android.dbflow.sql.c;

import com.raizlabs.android.dbflow.structure.b.g;
import com.raizlabs.android.dbflow.structure.b.i;
import java.util.Collection;

public final class a<TModel> {

    /* renamed from: a  reason: collision with root package name */
    private final b<TModel> f5142a;

    public a(b<TModel> bVar) {
        this.f5142a = bVar;
    }

    public final synchronized void saveAll(Collection<TModel> collection) {
        saveAll(collection, this.f5142a.a());
    }

    public final synchronized void saveAll(Collection<TModel> collection, i iVar) {
        if (!collection.isEmpty()) {
            g insertStatement = this.f5142a.getModelAdapter().getInsertStatement(iVar);
            g updateStatement = this.f5142a.getModelAdapter().getUpdateStatement(iVar);
            try {
                for (TModel save : collection) {
                    this.f5142a.save(save, iVar, insertStatement, updateStatement);
                }
            } finally {
                insertStatement.close();
                updateStatement.close();
            }
        }
    }

    public final synchronized void insertAll(Collection<TModel> collection) {
        insertAll(collection, this.f5142a.a());
    }

    public final synchronized void insertAll(Collection<TModel> collection, i iVar) {
        if (!collection.isEmpty()) {
            g insertStatement = this.f5142a.getModelAdapter().getInsertStatement(iVar);
            try {
                for (TModel insert : collection) {
                    this.f5142a.insert(insert, insertStatement, iVar);
                }
            } finally {
                insertStatement.close();
            }
        }
    }

    public final synchronized void updateAll(Collection<TModel> collection) {
        updateAll(collection, this.f5142a.a());
    }

    public final synchronized void updateAll(Collection<TModel> collection, i iVar) {
        if (!collection.isEmpty()) {
            g updateStatement = this.f5142a.getModelAdapter().getUpdateStatement(iVar);
            try {
                for (TModel update : collection) {
                    this.f5142a.update(update, iVar, updateStatement);
                }
            } finally {
                updateStatement.close();
            }
        }
    }

    public final synchronized void deleteAll(Collection<TModel> collection) {
        deleteAll(collection, this.f5142a.a());
    }

    public final synchronized void deleteAll(Collection<TModel> collection, i iVar) {
        if (!collection.isEmpty()) {
            g deleteStatement = this.f5142a.getModelAdapter().getDeleteStatement(iVar);
            try {
                for (TModel delete : collection) {
                    this.f5142a.delete(delete, deleteStatement, iVar);
                }
            } finally {
                deleteStatement.close();
            }
        }
    }

    public final b<TModel> getModelSaver() {
        return this.f5142a;
    }
}
