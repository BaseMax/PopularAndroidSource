package com.raizlabs.android.dbflow.sql.language;

import android.content.ContentValues;
import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.c;
import com.raizlabs.android.dbflow.sql.d;
import com.raizlabs.android.dbflow.structure.BaseModel;

public final class z<TModel> extends e<TModel> implements ae<TModel> {

    /* renamed from: a  reason: collision with root package name */
    private u f5189a = u.nonGroupingClause().setAllCommaSeparated(true);

    /* renamed from: b  reason: collision with root package name */
    private b f5190b;

    public z(b bVar, Class<TModel> cls) {
        super(cls);
        this.f5190b = bVar;
    }

    public final z<TModel> conditions(w... wVarArr) {
        this.f5189a.andAll(wVarArr);
        return this;
    }

    public final z<TModel> conditionValues(ContentValues contentValues) {
        d.addContentValues(contentValues, this.f5189a);
        return this;
    }

    public final String getQuery() {
        return new c(this.f5190b.getQuery()).append("SET ").append(this.f5189a.getQuery()).appendSpace().getQuery();
    }

    public final b getQueryBuilderBase() {
        return this.f5190b;
    }

    public final BaseModel.Action getPrimaryAction() {
        return BaseModel.Action.UPDATE;
    }
}
