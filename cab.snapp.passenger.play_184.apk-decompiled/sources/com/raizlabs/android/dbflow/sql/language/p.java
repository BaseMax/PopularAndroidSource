package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.c;
import com.raizlabs.android.dbflow.sql.language.a.b;
import com.raizlabs.android.dbflow.structure.BaseModel;

public final class p<TModel> extends e<TModel> {

    /* renamed from: a  reason: collision with root package name */
    private final b<TModel> f5176a;

    /* renamed from: b  reason: collision with root package name */
    private final ae<TModel> f5177b;

    public p(b<TModel> bVar, ae<TModel> aeVar) {
        super(aeVar.getTable());
        this.f5176a = bVar;
        this.f5177b = aeVar;
    }

    public final com.raizlabs.android.dbflow.sql.b getQueryBuilderBase() {
        return this.f5177b.getQueryBuilderBase();
    }

    public final String getQuery() {
        return new c(this.f5177b.getQuery()).append(" INDEXED BY ").append(c.quoteIfNeeded(this.f5176a.getIndexName())).appendSpace().getQuery();
    }

    public final BaseModel.Action getPrimaryAction() {
        return this.f5177b.getPrimaryAction();
    }
}
