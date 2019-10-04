package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.language.a.a;
import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.b.j;
import java.util.List;

public abstract class e<TModel> extends b<TModel> implements ae<TModel> {
    protected e(Class<TModel> cls) {
        super(cls);
    }

    public ad<TModel> where(w... wVarArr) {
        return new ad<>(this, wVarArr);
    }

    public j query() {
        return where(new w[0]).query();
    }

    public j query(i iVar) {
        return where(new w[0]).query(iVar);
    }

    public ad<TModel> groupBy(s... sVarArr) {
        return where(new w[0]).groupBy(sVarArr);
    }

    public ad<TModel> groupBy(a... aVarArr) {
        return where(new w[0]).groupBy(aVarArr);
    }

    public ad<TModel> orderBy(s sVar, boolean z) {
        return where(new w[0]).orderBy(sVar, z);
    }

    public ad<TModel> orderBy(a aVar, boolean z) {
        return where(new w[0]).orderBy(aVar, z);
    }

    public ad<TModel> orderByAll(List<v> list) {
        return where(new w[0]).orderByAll(list);
    }

    public ad<TModel> orderBy(v vVar) {
        return where(new w[0]).orderBy(vVar);
    }

    public ad<TModel> limit(int i) {
        return where(new w[0]).limit(i);
    }

    public ad<TModel> offset(int i) {
        return where(new w[0]).offset(i);
    }

    public ad<TModel> having(w... wVarArr) {
        return where(new w[0]).having(wVarArr);
    }

    public List<TModel> queryList() {
        a("query");
        return super.queryList();
    }

    public TModel querySingle() {
        a("query");
        limit(1);
        return super.querySingle();
    }

    private void a(String str) {
        if (!(getQueryBuilderBase() instanceof y)) {
            throw new IllegalArgumentException("Please use " + str + "(). The beginning is not a Select");
        }
    }
}
