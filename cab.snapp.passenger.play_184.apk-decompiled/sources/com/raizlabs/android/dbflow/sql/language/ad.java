package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.b.d;
import com.raizlabs.android.dbflow.sql.c;
import com.raizlabs.android.dbflow.sql.language.a.a;
import com.raizlabs.android.dbflow.structure.BaseModel;
import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.b.j;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class ad<TModel> extends b<TModel> implements d<TModel> {

    /* renamed from: a  reason: collision with root package name */
    private final ae<TModel> f5156a;

    /* renamed from: b  reason: collision with root package name */
    private u f5157b;
    private final List<s> c = new ArrayList();
    private final List<v> d = new ArrayList();
    private u e;
    private int f = -1;
    private int g = -1;

    public ad(ae<TModel> aeVar, w... wVarArr) {
        super(aeVar.getTable());
        this.f5156a = aeVar;
        this.f5157b = u.nonGroupingClause();
        this.e = u.nonGroupingClause();
        this.f5157b.andAll(wVarArr);
    }

    public final ad<TModel> and(w wVar) {
        this.f5157b.and(wVar);
        return this;
    }

    public final ad<TModel> or(w wVar) {
        this.f5157b.or(wVar);
        return this;
    }

    public final ad<TModel> andAll(List<w> list) {
        this.f5157b.andAll((Collection<w>) list);
        return this;
    }

    public final ad<TModel> andAll(w... wVarArr) {
        this.f5157b.andAll(wVarArr);
        return this;
    }

    public final ad<TModel> groupBy(s... sVarArr) {
        Collections.addAll(this.c, sVarArr);
        return this;
    }

    public final ad<TModel> groupBy(a... aVarArr) {
        for (a nameAlias : aVarArr) {
            this.c.add(nameAlias.getNameAlias());
        }
        return this;
    }

    public final ad<TModel> having(w... wVarArr) {
        this.e.andAll(wVarArr);
        return this;
    }

    public final ad<TModel> orderBy(s sVar, boolean z) {
        this.d.add(new v(sVar, z));
        return this;
    }

    public final ad<TModel> orderBy(a aVar, boolean z) {
        this.d.add(new v(aVar.getNameAlias(), z));
        return this;
    }

    public final ad<TModel> orderBy(v vVar) {
        this.d.add(vVar);
        return this;
    }

    public final ad<TModel> orderByAll(List<v> list) {
        this.d.addAll(list);
        return this;
    }

    public final ad<TModel> limit(int i) {
        this.f = i;
        return this;
    }

    public final ad<TModel> offset(int i) {
        this.g = i;
        return this;
    }

    public final ad<TModel> exists(ad adVar) {
        this.f5157b.and(new k().where(adVar));
        return this;
    }

    public final BaseModel.Action getPrimaryAction() {
        return this.f5156a.getPrimaryAction();
    }

    public final String getQuery() {
        c appendQualifier = new c().append(this.f5156a.getQuery().trim()).appendSpace().appendQualifier("WHERE", this.f5157b.getQuery()).appendQualifier("GROUP BY", c.join((CharSequence) ",", (Iterable) this.c)).appendQualifier("HAVING", this.e.getQuery()).appendQualifier("ORDER BY", c.join((CharSequence) ",", (Iterable) this.d));
        int i = this.f;
        if (i >= 0) {
            appendQualifier.appendQualifier("LIMIT", String.valueOf(i));
        }
        int i2 = this.g;
        if (i2 >= 0) {
            appendQualifier.appendQualifier("OFFSET", String.valueOf(i2));
        }
        return appendQualifier.getQuery();
    }

    public final j query(i iVar) {
        if (this.f5156a.getQueryBuilderBase() instanceof y) {
            return iVar.rawQuery(getQuery(), null);
        }
        return super.query(iVar);
    }

    public final j query() {
        return query(FlowManager.getDatabaseForTable(getTable()).getWritableDatabase());
    }

    public final List<TModel> queryList() {
        a("query");
        return super.queryList();
    }

    public final TModel querySingle() {
        a("query");
        limit(1);
        return super.querySingle();
    }

    public final ae<TModel> getWhereBase() {
        return this.f5156a;
    }

    private void a(String str) {
        if (!(this.f5156a.getQueryBuilderBase() instanceof y)) {
            throw new IllegalArgumentException("Please use " + str + "(). The beginning is not a ISelect");
        }
    }
}
