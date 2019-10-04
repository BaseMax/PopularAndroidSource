package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.annotation.ConflictAction;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.c;

public final class ac<TModel> implements b {

    /* renamed from: a  reason: collision with root package name */
    private ConflictAction f5154a = ConflictAction.NONE;

    /* renamed from: b  reason: collision with root package name */
    private final Class<TModel> f5155b;

    public ac(Class<TModel> cls) {
        this.f5155b = cls;
    }

    public final ac<TModel> conflictAction(ConflictAction conflictAction) {
        this.f5154a = conflictAction;
        return this;
    }

    public final ac<TModel> or(ConflictAction conflictAction) {
        return conflictAction(conflictAction);
    }

    public final ac<TModel> orRollback() {
        return conflictAction(ConflictAction.ROLLBACK);
    }

    public final ac<TModel> orAbort() {
        return conflictAction(ConflictAction.ABORT);
    }

    public final ac<TModel> orReplace() {
        return conflictAction(ConflictAction.REPLACE);
    }

    public final ac<TModel> orFail() {
        return conflictAction(ConflictAction.FAIL);
    }

    public final ac<TModel> orIgnore() {
        return conflictAction(ConflictAction.IGNORE);
    }

    public final z<TModel> set(w... wVarArr) {
        return new z(this, this.f5155b).conditions(wVarArr);
    }

    public final String getQuery() {
        c cVar = new c("UPDATE ");
        ConflictAction conflictAction = this.f5154a;
        if (conflictAction != null && !conflictAction.equals(ConflictAction.NONE)) {
            cVar.append("OR").appendSpaceSeparated(this.f5154a.name());
        }
        cVar.append(FlowManager.getTableName(this.f5155b)).appendSpace();
        return cVar.getQuery();
    }

    public final Class<TModel> getTable() {
        return this.f5155b;
    }
}
