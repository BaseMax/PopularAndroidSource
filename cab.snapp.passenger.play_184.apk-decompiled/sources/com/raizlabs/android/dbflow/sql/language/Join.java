package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.b.d;
import com.raizlabs.android.dbflow.sql.c;
import com.raizlabs.android.dbflow.sql.language.a.a;
import com.raizlabs.android.dbflow.sql.language.s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class Join<TModel, TFromModel> implements b {

    /* renamed from: a  reason: collision with root package name */
    private final Class<TModel> f5145a;

    /* renamed from: b  reason: collision with root package name */
    private JoinType f5146b;
    private l<TFromModel> c;
    private s d;
    private u e;
    private List<a> f = new ArrayList();

    public enum JoinType {
        LEFT_OUTER,
        INNER,
        CROSS,
        NATURAL
    }

    public Join(l<TFromModel> lVar, Class<TModel> cls, JoinType joinType) {
        this.c = lVar;
        this.f5145a = cls;
        this.f5146b = joinType;
        this.d = new s.a(FlowManager.getTableName(cls)).build();
    }

    public Join(l<TFromModel> lVar, JoinType joinType, d<TModel> dVar) {
        this.f5145a = dVar.getTable();
        this.c = lVar;
        this.f5146b = joinType;
        this.d = com.raizlabs.android.dbflow.sql.language.a.d.from(dVar).getNameAlias();
    }

    public final Join<TModel, TFromModel> as(String str) {
        this.d = this.d.newBuilder().as(str).build();
        return this;
    }

    public final l<TFromModel> on(w... wVarArr) {
        a();
        this.e = u.nonGroupingClause();
        this.e.andAll(wVarArr);
        return this.c;
    }

    public final l<TFromModel> using(a... aVarArr) {
        a();
        Collections.addAll(this.f, aVarArr);
        return this.c;
    }

    public final l<TFromModel> end() {
        return this.c;
    }

    public final String getQuery() {
        c cVar = new c();
        cVar.append(this.f5146b.name().replace(io.fabric.sdk.android.services.b.b.ROLL_OVER_FILE_NAME_SEPARATOR, " ")).appendSpace();
        cVar.append("JOIN").appendSpace().append(this.d.getFullQuery()).appendSpace();
        if (!JoinType.NATURAL.equals(this.f5146b)) {
            if (this.e != null) {
                cVar.append("ON").appendSpace().append(this.e.getQuery()).appendSpace();
            } else if (!this.f.isEmpty()) {
                cVar.append("USING (").appendList(this.f).append(")").appendSpace();
            }
        }
        return cVar.getQuery();
    }

    public final Class<TModel> getTable() {
        return this.f5145a;
    }

    private void a() {
        if (JoinType.NATURAL.equals(this.f5146b)) {
            throw new IllegalArgumentException("Cannot specify a clause for this join if its NATURAL. Specifying a clause would have no effect. Call end() to continue the query.");
        }
    }
}
