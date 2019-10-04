package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.c.b;
import com.raizlabs.android.dbflow.c.c;
import com.raizlabs.android.dbflow.config.FlowLog;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.d.f;
import com.raizlabs.android.dbflow.sql.b.a;
import com.raizlabs.android.dbflow.sql.b.d;
import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.h;
import java.util.List;

public abstract class b<TModel> extends d<TModel> implements com.raizlabs.android.dbflow.sql.b, d<TModel> {

    /* renamed from: a  reason: collision with root package name */
    private com.raizlabs.android.dbflow.structure.b<TModel> f5158a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f5159b = true;

    protected b(Class<TModel> cls) {
        super(cls);
    }

    private com.raizlabs.android.dbflow.structure.b<TModel> a() {
        if (this.f5158a == null) {
            this.f5158a = FlowManager.getInstanceAdapter(getTable());
        }
        return this.f5158a;
    }

    public i<TModel> queryResults() {
        return new i<>(a().getModelClass(), query());
    }

    public List<TModel> queryList() {
        String query = getQuery();
        FlowLog.log(FlowLog.Level.V, "Executing query: ".concat(String.valueOf(query)));
        return b().load(query);
    }

    public TModel querySingle() {
        String query = getQuery();
        FlowLog.log(FlowLog.Level.V, "Executing query: ".concat(String.valueOf(query)));
        return c().load(query);
    }

    public TModel querySingle(i iVar) {
        String query = getQuery();
        FlowLog.log(FlowLog.Level.V, "Executing query: ".concat(String.valueOf(query)));
        return c().load(iVar, query);
    }

    public List<TModel> queryList(i iVar) {
        String query = getQuery();
        FlowLog.log(FlowLog.Level.V, "Executing query: ".concat(String.valueOf(query)));
        return b().load(iVar, query);
    }

    public com.raizlabs.android.dbflow.c.b<TModel> cursorList() {
        return new b.a(getTable()).cacheModels(this.f5159b).modelQueriable(this).build();
    }

    public c<TModel> flowQueryList() {
        return new c.a(getTable()).cacheModels(this.f5159b).modelQueriable(this).build();
    }

    public long executeUpdateDelete() {
        return executeUpdateDelete(FlowManager.getWritableDatabaseForTable(getTable()));
    }

    public long executeUpdateDelete(i iVar) {
        long executeUpdateDelete = iVar.compileStatement(getQuery()).executeUpdateDelete();
        if (executeUpdateDelete > 0) {
            f.get().notifyTableChanged(getTable(), getPrimaryAction());
        }
        return executeUpdateDelete;
    }

    public a<TModel> async() {
        return new a<>(this);
    }

    public <QueryClass> List<QueryClass> queryCustomList(Class<QueryClass> cls) {
        String query = getQuery();
        FlowLog.log(FlowLog.Level.V, "Executing query: ".concat(String.valueOf(query)));
        h<TQueryModel> queryModelAdapter = FlowManager.getQueryModelAdapter(cls);
        if (this.f5159b) {
            return queryModelAdapter.getListModelLoader().load(query);
        }
        return queryModelAdapter.getNonCacheableListModelLoader().load(query);
    }

    public <QueryClass> QueryClass queryCustomSingle(Class<QueryClass> cls) {
        String query = getQuery();
        FlowLog.log(FlowLog.Level.V, "Executing query: ".concat(String.valueOf(query)));
        h<TQueryModel> queryModelAdapter = FlowManager.getQueryModelAdapter(cls);
        if (this.f5159b) {
            return queryModelAdapter.getSingleModelLoader().load(query);
        }
        return queryModelAdapter.getNonCacheableSingleModelLoader().load(query);
    }

    public d<TModel> disableCaching() {
        this.f5159b = false;
        return this;
    }

    private com.raizlabs.android.dbflow.sql.b.b<TModel> b() {
        if (this.f5159b) {
            return a().getListModelLoader();
        }
        return a().getNonCacheableListModelLoader();
    }

    private com.raizlabs.android.dbflow.sql.b.f<TModel> c() {
        if (this.f5159b) {
            return a().getSingleModelLoader();
        }
        return a().getNonCacheableSingleModelLoader();
    }
}
