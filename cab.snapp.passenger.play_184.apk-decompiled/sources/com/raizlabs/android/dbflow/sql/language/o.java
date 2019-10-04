package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.c;
import com.raizlabs.android.dbflow.sql.d;
import com.raizlabs.android.dbflow.sql.language.a.a;
import com.raizlabs.android.dbflow.structure.b.i;
import java.util.ArrayList;
import java.util.List;

public final class o<TModel> implements b {

    /* renamed from: a  reason: collision with root package name */
    private final String f5174a;

    /* renamed from: b  reason: collision with root package name */
    private Class<TModel> f5175b;
    private List<s> c;
    private boolean d = false;

    public o(String str) {
        this.f5174a = str;
        this.c = new ArrayList();
    }

    public final o<TModel> unique(boolean z) {
        this.d = z;
        return this;
    }

    public final o<TModel> on(Class<TModel> cls, a... aVarArr) {
        this.f5175b = cls;
        for (a and : aVarArr) {
            and(and);
        }
        return this;
    }

    public final o<TModel> on(Class<TModel> cls, s sVar, s... sVarArr) {
        this.f5175b = cls;
        and(sVar);
        for (s and : sVarArr) {
            and(and);
        }
        return this;
    }

    public final o<TModel> and(a aVar) {
        if (!this.c.contains(aVar.getNameAlias())) {
            this.c.add(aVar.getNameAlias());
        }
        return this;
    }

    public final o<TModel> and(s sVar) {
        if (!this.c.contains(sVar)) {
            this.c.add(sVar);
        }
        return this;
    }

    public final String getIndexName() {
        return this.f5174a;
    }

    public final Class<TModel> getTable() {
        return this.f5175b;
    }

    public final boolean isUnique() {
        return this.d;
    }

    public final void enable(i iVar) {
        if (this.f5175b != null) {
            List<s> list = this.c;
            if (list == null || list.isEmpty()) {
                throw new IllegalStateException("There should be at least one column in this index");
            }
            iVar.execSQL(getQuery());
            return;
        }
        throw new IllegalStateException("Please call on() to set a table to use this index on.");
    }

    public final void enable() {
        enable(FlowManager.getDatabaseForTable(this.f5175b).getWritableDatabase());
    }

    public final void disable() {
        d.dropIndex(FlowManager.getDatabaseForTable(this.f5175b).getWritableDatabase(), this.f5174a);
    }

    public final void disable(i iVar) {
        d.dropIndex(iVar, this.f5174a);
    }

    public final String getQuery() {
        return new c("CREATE ").append(this.d ? "UNIQUE " : "").append("INDEX IF NOT EXISTS ").appendQuotedIfNeeded(this.f5174a).append(" ON ").append(FlowManager.getTableName(this.f5175b)).append("(").appendList(this.c).append(")").getQuery();
    }
}
