package com.raizlabs.android.dbflow.sql.b;

import com.raizlabs.android.dbflow.structure.b.a.f;

public final class a<TModel> extends com.raizlabs.android.dbflow.sql.a<a<TModel>> {
    private final d<TModel> d;
    private f.b<TModel> e;
    private f.c<TModel> f;
    private f.d<TModel> g;

    public a(d<TModel> dVar) {
        super(dVar.getTable());
        this.d = dVar;
    }

    public final a<TModel> queryResultCallback(f.b<TModel> bVar) {
        this.e = bVar;
        return this;
    }

    public final a<TModel> querySingleResultCallback(f.d<TModel> dVar) {
        this.g = dVar;
        return this;
    }

    public final a<TModel> queryListResultCallback(f.c<TModel> cVar) {
        this.f = cVar;
        return this;
    }

    public final void execute() {
        a(new f.a(this.d).queryResult(this.e).queryListResult(this.f).querySingleResult(this.g).build());
    }

    public final Class<TModel> getTable() {
        return this.d.getTable();
    }
}
