package com.raizlabs.android.dbflow.structure;

import android.content.ContentValues;
import com.raizlabs.android.dbflow.annotation.ConflictAction;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.c.a;
import com.raizlabs.android.dbflow.sql.c.b;
import com.raizlabs.android.dbflow.structure.a.c;
import com.raizlabs.android.dbflow.structure.a.e;
import com.raizlabs.android.dbflow.structure.b.g;
import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.b.j;
import java.util.Collection;

public abstract class f<TModel> extends b<TModel> implements c<TModel> {

    /* renamed from: b  reason: collision with root package name */
    private g f5239b;
    private g c;
    private g d;
    private g e;
    private String[] f;
    private c<TModel, ?> g;
    private b<TModel> h;
    private a<TModel> i;

    public boolean cachingEnabled() {
        return false;
    }

    public boolean createWithDatabase() {
        return true;
    }

    public void deleteForeignKeys(TModel tmodel, i iVar) {
    }

    public abstract com.raizlabs.android.dbflow.sql.language.a.a[] getAllColumnProperties();

    public int getCacheSize() {
        return 25;
    }

    /* access modifiers changed from: protected */
    public abstract String getCompiledStatementQuery();

    public abstract String getCreationQuery();

    /* access modifiers changed from: protected */
    public abstract String getDeleteStatementQuery();

    public abstract com.raizlabs.android.dbflow.sql.language.a.c getProperty(String str);

    /* access modifiers changed from: protected */
    public abstract String getUpdateStatementQuery();

    public void saveForeignKeys(TModel tmodel, i iVar) {
    }

    public void updateAutoIncrement(TModel tmodel, Number number) {
    }

    public f(com.raizlabs.android.dbflow.config.c cVar) {
        super(cVar);
        if (this.f5240a != null && this.f5240a.modelSaver() != null) {
            this.h = this.f5240a.modelSaver();
            this.h.setModelAdapter(this);
        }
    }

    public g getInsertStatement() {
        if (this.f5239b == null) {
            this.f5239b = getInsertStatement(FlowManager.getWritableDatabaseForTable(getModelClass()));
        }
        return this.f5239b;
    }

    public g getUpdateStatement() {
        if (this.d == null) {
            this.d = getUpdateStatement(FlowManager.getWritableDatabaseForTable(getModelClass()));
        }
        return this.d;
    }

    public g getDeleteStatement() {
        if (this.e == null) {
            this.e = getDeleteStatement(FlowManager.getWritableDatabaseForTable(getModelClass()));
        }
        return this.e;
    }

    public void closeInsertStatement() {
        g gVar = this.f5239b;
        if (gVar != null) {
            gVar.close();
            this.f5239b = null;
        }
    }

    public void closeUpdateStatement() {
        g gVar = this.d;
        if (gVar != null) {
            gVar.close();
            this.d = null;
        }
    }

    public void closeDeleteStatement() {
        g gVar = this.e;
        if (gVar != null) {
            gVar.close();
            this.e = null;
        }
    }

    public g getUpdateStatement(i iVar) {
        return iVar.compileStatement(getUpdateStatementQuery());
    }

    public g getDeleteStatement(i iVar) {
        return iVar.compileStatement(getDeleteStatementQuery());
    }

    public g getCompiledStatement() {
        if (this.c == null) {
            this.c = getCompiledStatement(FlowManager.getWritableDatabaseForTable(getModelClass()));
        }
        return this.c;
    }

    public void closeCompiledStatement() {
        g gVar = this.c;
        if (gVar != null) {
            gVar.close();
            this.c = null;
        }
    }

    public g getCompiledStatement(i iVar) {
        return iVar.compileStatement(getCompiledStatementQuery());
    }

    public TModel loadFromCursor(j jVar) {
        TModel newInstance = newInstance();
        loadFromCursor(jVar, newInstance);
        return newInstance;
    }

    public boolean save(TModel tmodel) {
        return getModelSaver().save(tmodel);
    }

    public boolean save(TModel tmodel, i iVar) {
        return getModelSaver().save(tmodel, iVar);
    }

    public void saveAll(Collection<TModel> collection) {
        getListModelSaver().saveAll(collection);
    }

    public void saveAll(Collection<TModel> collection, i iVar) {
        getListModelSaver().saveAll(collection, iVar);
    }

    public long insert(TModel tmodel) {
        return getModelSaver().insert(tmodel);
    }

    public long insert(TModel tmodel, i iVar) {
        return getModelSaver().insert(tmodel, iVar);
    }

    public void insertAll(Collection<TModel> collection) {
        getListModelSaver().insertAll(collection);
    }

    public void insertAll(Collection<TModel> collection, i iVar) {
        getListModelSaver().insertAll(collection, iVar);
    }

    public boolean update(TModel tmodel) {
        return getModelSaver().update(tmodel);
    }

    public boolean update(TModel tmodel, i iVar) {
        return getModelSaver().update(tmodel, iVar);
    }

    public void updateAll(Collection<TModel> collection) {
        getListModelSaver().updateAll(collection);
    }

    public void updateAll(Collection<TModel> collection, i iVar) {
        getListModelSaver().updateAll(collection, iVar);
    }

    public boolean delete(TModel tmodel) {
        return getModelSaver().delete(tmodel);
    }

    public boolean delete(TModel tmodel, i iVar) {
        return getModelSaver().delete(tmodel, iVar);
    }

    public void deleteAll(Collection<TModel> collection, i iVar) {
        getListModelSaver().deleteAll(collection, iVar);
    }

    public void deleteAll(Collection<TModel> collection) {
        getListModelSaver().deleteAll(collection);
    }

    public void bindToInsertStatement(g gVar, TModel tmodel) {
        bindToInsertStatement(gVar, tmodel, 0);
    }

    public void bindToContentValues(ContentValues contentValues, TModel tmodel) {
        bindToInsertValues(contentValues, tmodel);
    }

    public void bindToStatement(g gVar, TModel tmodel) {
        bindToInsertStatement(gVar, tmodel, 0);
    }

    public Number getAutoIncrementingId(TModel tmodel) {
        throw new d(String.format("This method may have been called in error. The model class %1s must containa single primary key (if used in a ModelCache, this method may be called)", new Object[]{getModelClass()}));
    }

    public String getAutoIncrementingColumnName() {
        throw new d(String.format("This method may have been called in error. The model class %1s must contain an autoincrementing or single int/long primary key (if used in a ModelCache, this method may be called)", new Object[]{getModelClass()}));
    }

    public boolean hasAutoIncrement(TModel tmodel) {
        Number autoIncrementingId = getAutoIncrementingId(tmodel);
        if (autoIncrementingId != null) {
            return autoIncrementingId.longValue() > 0;
        }
        throw new IllegalStateException("An autoincrementing column field cannot be null.");
    }

    public String[] createCachingColumns() {
        return new String[]{getAutoIncrementingColumnName()};
    }

    public String[] getCachingColumns() {
        if (this.f == null) {
            this.f = createCachingColumns();
        }
        return this.f;
    }

    public Object[] getCachingColumnValuesFromCursor(Object[] objArr, j jVar) {
        a();
        return null;
    }

    public Object getCachingColumnValueFromCursor(j jVar) {
        b();
        return null;
    }

    public Object[] getCachingColumnValuesFromModel(Object[] objArr, TModel tmodel) {
        a();
        return null;
    }

    public Object getCachingColumnValueFromModel(TModel tmodel) {
        b();
        return null;
    }

    public void storeModelInCache(TModel tmodel) {
        getModelCache().addModel(getCachingId(tmodel), tmodel);
    }

    public void removeModelFromCache(TModel tmodel) {
        getModelCache().removeModel(getCachingId(tmodel));
    }

    public c<TModel, ?> getModelCache() {
        if (this.g == null) {
            this.g = createModelCache();
        }
        return this.g;
    }

    public Object getCachingId(Object[] objArr) {
        if (objArr.length == 1) {
            return objArr[0];
        }
        return getCacheConverter().getCachingKey(objArr);
    }

    public Object getCachingId(TModel tmodel) {
        return getCachingId(getCachingColumnValuesFromModel(new Object[getCachingColumns().length], tmodel));
    }

    public b<TModel> getModelSaver() {
        if (this.h == null) {
            this.h = new b<>();
            this.h.setModelAdapter(this);
        }
        return this.h;
    }

    public a<TModel> getListModelSaver() {
        if (this.i == null) {
            this.i = new a<>(getModelSaver());
        }
        return this.i;
    }

    public void setModelSaver(b<TModel> bVar) {
        this.h = bVar;
        this.h.setModelAdapter(this);
    }

    public void reloadRelationships(TModel tmodel, j jVar) {
        if (!cachingEnabled()) {
            a();
        }
    }

    public com.raizlabs.android.dbflow.structure.a.a<?> getCacheConverter() {
        throw new d("For multiple primary keys, a public static IMultiKeyCacheConverter field mustbe  marked with @MultiCacheField in the corresponding model class. The resulting keymust be a unique combination of the multiple keys, otherwise inconsistencies may occur.");
    }

    public c<TModel, ?> createModelCache() {
        return new e(getCacheSize());
    }

    public ConflictAction getUpdateOnConflictAction() {
        return ConflictAction.ABORT;
    }

    public ConflictAction getInsertOnConflictAction() {
        return ConflictAction.ABORT;
    }

    private void a() {
        throw new d(String.format("This method may have been called in error. The model class %1s must containan auto-incrementing or at least one primary key (if used in a ModelCache, this method may be called)", new Object[]{getModelClass()}));
    }

    private void b() {
        throw new d(String.format("This method may have been called in error. The model class %1s must containan auto-incrementing or one primary key (if used in a ModelCache, this method may be called)", new Object[]{getModelClass()}));
    }

    public g getInsertStatement(i iVar) {
        return iVar.compileStatement(getCompiledStatementQuery());
    }
}
