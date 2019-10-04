package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.b;
import com.raizlabs.android.dbflow.sql.b.d;
import com.raizlabs.android.dbflow.sql.c;
import com.raizlabs.android.dbflow.sql.language.Join;
import com.raizlabs.android.dbflow.sql.language.s;
import com.raizlabs.android.dbflow.structure.BaseModel;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public final class l<TModel> extends e<TModel> {

    /* renamed from: a  reason: collision with root package name */
    private b f5172a;

    /* renamed from: b  reason: collision with root package name */
    private s f5173b;
    private final List<Join> c = new ArrayList();

    private s a() {
        if (this.f5173b == null) {
            this.f5173b = new s.a(FlowManager.getTableName(getTable())).build();
        }
        return this.f5173b;
    }

    public l(b bVar, Class<TModel> cls) {
        super(cls);
        this.f5172a = bVar;
    }

    public final l<TModel> as(String str) {
        this.f5173b = a().newBuilder().as(str).build();
        return this;
    }

    public final <TJoin> Join<TJoin, TModel> join(Class<TJoin> cls, Join.JoinType joinType) {
        Join<TJoin, TModel> join = new Join<>((l<TModel>) this, cls, joinType);
        this.c.add(join);
        return join;
    }

    public final <TJoin> Join<TJoin, TModel> join(d<TJoin> dVar, Join.JoinType joinType) {
        Join<TJoin, TModel> join = new Join<>((l<TModel>) this, joinType, dVar);
        this.c.add(join);
        return join;
    }

    public final <TJoin> Join<TJoin, TModel> crossJoin(Class<TJoin> cls) {
        return join(cls, Join.JoinType.CROSS);
    }

    public final <TJoin> Join<TJoin, TModel> crossJoin(d<TJoin> dVar) {
        return join(dVar, Join.JoinType.CROSS);
    }

    public final <TJoin> Join<TJoin, TModel> innerJoin(Class<TJoin> cls) {
        return join(cls, Join.JoinType.INNER);
    }

    public final <TJoin> Join<TJoin, TModel> innerJoin(d<TJoin> dVar) {
        return join(dVar, Join.JoinType.INNER);
    }

    public final <TJoin> Join<TJoin, TModel> leftOuterJoin(Class<TJoin> cls) {
        return join(cls, Join.JoinType.LEFT_OUTER);
    }

    public final <TJoin> Join<TJoin, TModel> leftOuterJoin(d<TJoin> dVar) {
        return join(dVar, Join.JoinType.LEFT_OUTER);
    }

    public final <TJoin> Join<TJoin, TModel> naturalJoin(Class<TJoin> cls) {
        return join(cls, Join.JoinType.NATURAL);
    }

    public final <TJoin> Join<TJoin, TModel> naturalJoin(d<TJoin> dVar) {
        return join(dVar, Join.JoinType.NATURAL);
    }

    public final p<TModel> indexedBy(com.raizlabs.android.dbflow.sql.language.a.b<TModel> bVar) {
        return new p<>(bVar, this);
    }

    public final BaseModel.Action getPrimaryAction() {
        return this.f5172a instanceof j ? BaseModel.Action.DELETE : BaseModel.Action.CHANGE;
    }

    public final String getQuery() {
        c append = new c().append(this.f5172a.getQuery());
        if (!(this.f5172a instanceof ac)) {
            append.append("FROM ");
        }
        append.append(a());
        if (this.f5172a instanceof y) {
            if (!this.c.isEmpty()) {
                append.appendSpace();
            }
            for (Join query : this.c) {
                append.append(query.getQuery());
            }
        } else {
            append.appendSpace();
        }
        return append.getQuery();
    }

    public final b getQueryBuilderBase() {
        return this.f5172a;
    }

    public final Set<Class<?>> getAssociatedTables() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(getTable());
        for (Join table : this.c) {
            linkedHashSet.add(table.getTable());
        }
        return linkedHashSet;
    }
}
