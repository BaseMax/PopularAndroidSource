package com.raizlabs.android.dbflow.sql.c;

import android.content.ContentValues;
import com.raizlabs.android.dbflow.annotation.ConflictAction;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.structure.BaseModel;
import com.raizlabs.android.dbflow.structure.b.g;
import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.f;

public final class b<TModel> {
    public static final int INSERT_FAILED = -1;

    /* renamed from: a  reason: collision with root package name */
    private f<TModel> f5143a;

    public final void setModelAdapter(f<TModel> fVar) {
        this.f5143a = fVar;
    }

    public final synchronized boolean save(TModel tmodel) {
        return save(tmodel, a(), this.f5143a.getInsertStatement(), this.f5143a.getUpdateStatement());
    }

    public final synchronized boolean save(TModel tmodel, i iVar) {
        return save(tmodel, iVar, this.f5143a.getInsertStatement(iVar), this.f5143a.getUpdateStatement(iVar));
    }

    public final synchronized boolean save(TModel tmodel, i iVar, g gVar, g gVar2) {
        boolean exists;
        exists = this.f5143a.exists(tmodel, iVar);
        if (exists) {
            exists = update(tmodel, iVar, gVar2);
        }
        if (!exists) {
            exists = insert(tmodel, gVar, iVar) > -1;
        }
        if (exists) {
            com.raizlabs.android.dbflow.d.f.get().notifyModelChanged(tmodel, this.f5143a, BaseModel.Action.SAVE);
        }
        return exists;
    }

    public final synchronized boolean update(TModel tmodel) {
        return update(tmodel, a(), this.f5143a.getUpdateStatement());
    }

    public final synchronized boolean update(TModel tmodel, i iVar) {
        g updateStatement;
        updateStatement = this.f5143a.getUpdateStatement(iVar);
        try {
        } finally {
            updateStatement.close();
        }
        return update(tmodel, iVar, updateStatement);
    }

    public final synchronized boolean update(TModel tmodel, i iVar, g gVar) {
        boolean z;
        this.f5143a.saveForeignKeys(tmodel, iVar);
        this.f5143a.bindToUpdateStatement(gVar, tmodel);
        z = gVar.executeUpdateDelete() != 0;
        if (z) {
            com.raizlabs.android.dbflow.d.f.get().notifyModelChanged(tmodel, this.f5143a, BaseModel.Action.UPDATE);
        }
        return z;
    }

    public final synchronized long insert(TModel tmodel) {
        return insert(tmodel, this.f5143a.getInsertStatement(), a());
    }

    public final synchronized long insert(TModel tmodel, i iVar) {
        g insertStatement;
        insertStatement = this.f5143a.getInsertStatement(iVar);
        try {
        } finally {
            insertStatement.close();
        }
        return insert(tmodel, insertStatement, iVar);
    }

    public final synchronized long insert(TModel tmodel, g gVar, i iVar) {
        long executeInsert;
        this.f5143a.saveForeignKeys(tmodel, iVar);
        this.f5143a.bindToInsertStatement(gVar, tmodel);
        executeInsert = gVar.executeInsert();
        if (executeInsert > -1) {
            this.f5143a.updateAutoIncrement(tmodel, Long.valueOf(executeInsert));
            com.raizlabs.android.dbflow.d.f.get().notifyModelChanged(tmodel, this.f5143a, BaseModel.Action.INSERT);
        }
        return executeInsert;
    }

    public final synchronized boolean delete(TModel tmodel) {
        return delete(tmodel, this.f5143a.getDeleteStatement(), a());
    }

    public final synchronized boolean delete(TModel tmodel, i iVar) {
        g deleteStatement;
        deleteStatement = this.f5143a.getDeleteStatement(iVar);
        try {
        } finally {
            deleteStatement.close();
        }
        return delete(tmodel, deleteStatement, iVar);
    }

    public final synchronized boolean delete(TModel tmodel, g gVar, i iVar) {
        boolean z;
        this.f5143a.deleteForeignKeys(tmodel, iVar);
        this.f5143a.bindToDeleteStatement(gVar, tmodel);
        z = gVar.executeUpdateDelete() != 0;
        if (z) {
            com.raizlabs.android.dbflow.d.f.get().notifyModelChanged(tmodel, this.f5143a, BaseModel.Action.DELETE);
        }
        this.f5143a.updateAutoIncrement(tmodel, 0);
        return z;
    }

    /* access modifiers changed from: protected */
    public final i a() {
        return FlowManager.getDatabaseForTable(this.f5143a.getModelClass()).getWritableDatabase();
    }

    public final f<TModel> getModelAdapter() {
        return this.f5143a;
    }

    @Deprecated
    public final synchronized boolean save(TModel tmodel, i iVar, g gVar, ContentValues contentValues) {
        boolean exists;
        exists = this.f5143a.exists(tmodel, iVar);
        if (exists) {
            exists = update(tmodel, iVar, contentValues);
        }
        if (!exists) {
            exists = insert(tmodel, gVar, iVar) > -1;
        }
        if (exists) {
            com.raizlabs.android.dbflow.d.f.get().notifyModelChanged(tmodel, this.f5143a, BaseModel.Action.SAVE);
        }
        return exists;
    }

    @Deprecated
    public final synchronized boolean update(TModel tmodel, i iVar, ContentValues contentValues) {
        boolean z;
        this.f5143a.saveForeignKeys(tmodel, iVar);
        this.f5143a.bindToContentValues(contentValues, tmodel);
        z = iVar.updateWithOnConflict(this.f5143a.getTableName(), contentValues, this.f5143a.getPrimaryConditionClause(tmodel).getQuery(), null, ConflictAction.getSQLiteDatabaseAlgorithmInt(this.f5143a.getUpdateOnConflictAction())) != 0;
        if (z) {
            com.raizlabs.android.dbflow.d.f.get().notifyModelChanged(tmodel, this.f5143a, BaseModel.Action.UPDATE);
        }
        return z;
    }
}
