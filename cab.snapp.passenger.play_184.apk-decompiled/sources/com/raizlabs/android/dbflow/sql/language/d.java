package com.raizlabs.android.dbflow.sql.language;

import android.database.sqlite.SQLiteDoneException;
import com.raizlabs.android.dbflow.config.FlowLog;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.d.f;
import com.raizlabs.android.dbflow.sql.b.e;
import com.raizlabs.android.dbflow.structure.BaseModel;
import com.raizlabs.android.dbflow.structure.b.g;
import com.raizlabs.android.dbflow.structure.b.h;
import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.b.j;

public abstract class d<TModel> implements e, a {

    /* renamed from: a  reason: collision with root package name */
    private final Class<TModel> f5162a;

    public abstract BaseModel.Action getPrimaryAction();

    protected d(Class<TModel> cls) {
        this.f5162a = cls;
    }

    public Class<TModel> getTable() {
        return this.f5162a;
    }

    public long count(i iVar) {
        return longValue(iVar);
    }

    public long count() {
        return longValue();
    }

    public long longValue() {
        return longValue(FlowManager.getWritableDatabaseForTable(this.f5162a));
    }

    public long longValue(i iVar) {
        try {
            String query = getQuery();
            FlowLog.log(FlowLog.Level.V, "Executing query: ".concat(String.valueOf(query)));
            return com.raizlabs.android.dbflow.sql.d.longForQuery(iVar, query);
        } catch (SQLiteDoneException e) {
            FlowLog.log(FlowLog.Level.W, (Throwable) e);
            return 0;
        }
    }

    public boolean hasData() {
        return count() > 0;
    }

    public boolean hasData(i iVar) {
        return count(iVar) > 0;
    }

    public j query() {
        query(FlowManager.getWritableDatabaseForTable(this.f5162a));
        return null;
    }

    public j query(i iVar) {
        if (getPrimaryAction().equals(BaseModel.Action.INSERT)) {
            g compileStatement = compileStatement(iVar);
            compileStatement.executeInsert();
            compileStatement.close();
        } else {
            String query = getQuery();
            FlowLog.log(FlowLog.Level.V, "Executing query: ".concat(String.valueOf(query)));
            iVar.execSQL(query);
        }
        return null;
    }

    public long executeInsert() {
        return executeInsert(FlowManager.getWritableDatabaseForTable(this.f5162a));
    }

    public long executeInsert(i iVar) {
        return compileStatement().executeInsert();
    }

    public void execute() {
        j query = query();
        if (query != null) {
            query.close();
        } else {
            f.get().notifyTableChanged(getTable(), getPrimaryAction());
        }
    }

    public void execute(i iVar) {
        j query = query(iVar);
        if (query != null) {
            query.close();
        } else {
            f.get().notifyTableChanged(getTable(), getPrimaryAction());
        }
    }

    public g compileStatement() {
        return compileStatement(FlowManager.getWritableDatabaseForTable(this.f5162a));
    }

    public g compileStatement(i iVar) {
        String query = getQuery();
        FlowLog.log(FlowLog.Level.V, "Compiling Query Into Statement: ".concat(String.valueOf(query)));
        return new h(iVar.compileStatement(query), this);
    }

    public String toString() {
        return getQuery();
    }
}
