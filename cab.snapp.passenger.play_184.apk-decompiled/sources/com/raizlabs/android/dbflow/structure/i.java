package com.raizlabs.android.dbflow.structure;

import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.config.c;
import com.raizlabs.android.dbflow.config.g;
import com.raizlabs.android.dbflow.sql.b.b;
import com.raizlabs.android.dbflow.sql.b.f;
import com.raizlabs.android.dbflow.sql.language.a.a;
import com.raizlabs.android.dbflow.sql.language.u;
import com.raizlabs.android.dbflow.sql.language.x;
import com.raizlabs.android.dbflow.structure.b.j;

public abstract class i<TModel> {

    /* renamed from: a  reason: collision with root package name */
    g<TModel> f5240a;

    /* renamed from: b  reason: collision with root package name */
    private f<TModel> f5241b;
    private b<TModel> c;

    public abstract boolean exists(TModel tmodel, com.raizlabs.android.dbflow.structure.b.i iVar);

    public abstract Class<TModel> getModelClass();

    public abstract u getPrimaryConditionClause(TModel tmodel);

    public abstract void loadFromCursor(j jVar, TModel tmodel);

    public i(c cVar) {
        com.raizlabs.android.dbflow.config.b configForDatabase = FlowManager.getConfig().getConfigForDatabase(cVar.getAssociatedDatabaseClassFile());
        if (configForDatabase != null) {
            this.f5240a = configForDatabase.getTableConfigForTable(getModelClass());
            g<TModel> gVar = this.f5240a;
            if (gVar != null) {
                if (gVar.singleModelLoader() != null) {
                    this.f5241b = this.f5240a.singleModelLoader();
                }
                if (this.f5240a.listModelLoader() != null) {
                    this.c = this.f5240a.listModelLoader();
                }
            }
        }
    }

    public void load(TModel tmodel) {
        load(tmodel, FlowManager.getDatabaseForTable(getModelClass()).getWritableDatabase());
    }

    public void load(TModel tmodel, com.raizlabs.android.dbflow.structure.b.i iVar) {
        getNonCacheableSingleModelLoader().load(iVar, x.select(new a[0]).from(getModelClass()).where(getPrimaryConditionClause(tmodel)).getQuery(), tmodel);
    }

    public boolean exists(TModel tmodel) {
        return exists(tmodel, FlowManager.getDatabaseForTable(getModelClass()).getWritableDatabase());
    }

    public b<TModel> getListModelLoader() {
        if (this.c == null) {
            this.c = new b<>(getModelClass());
        }
        return this.c;
    }

    public f<TModel> getSingleModelLoader() {
        if (this.f5241b == null) {
            this.f5241b = new f<>(getModelClass());
        }
        return this.f5241b;
    }

    public f<TModel> getNonCacheableSingleModelLoader() {
        return new f<>(getModelClass());
    }

    public b<TModel> getNonCacheableListModelLoader() {
        return new b<>(getModelClass());
    }

    public void setSingleModelLoader(f<TModel> fVar) {
        this.f5241b = fVar;
    }

    public void setListModelLoader(b<TModel> bVar) {
        this.c = bVar;
    }
}
