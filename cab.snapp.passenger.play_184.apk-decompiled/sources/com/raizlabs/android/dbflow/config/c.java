package com.raizlabs.android.dbflow.config;

import android.content.Context;
import com.raizlabs.android.dbflow.d.b;
import com.raizlabs.android.dbflow.d.e;
import com.raizlabs.android.dbflow.sql.a.a;
import com.raizlabs.android.dbflow.structure.b.a.g;
import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.b.k;
import com.raizlabs.android.dbflow.structure.b.l;
import com.raizlabs.android.dbflow.structure.f;
import com.raizlabs.android.dbflow.structure.g;
import com.raizlabs.android.dbflow.structure.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    final Map<Class<?>, f> f5114a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    final Map<String, Class<?>> f5115b = new HashMap();
    private final Map<Integer, List<a>> c = new HashMap();
    private final Map<Class<?>, g> d = new LinkedHashMap();
    private final Map<Class<?>, h> e = new LinkedHashMap();
    private l f;
    private com.raizlabs.android.dbflow.structure.b.f g;
    private boolean h = false;
    private com.raizlabs.android.dbflow.d.a i;
    private b j;
    private e k;

    public abstract boolean areConsistencyChecksEnabled();

    public abstract boolean backupEnabled();

    public abstract Class<?> getAssociatedDatabaseClassFile();

    public abstract int getDatabaseVersion();

    public abstract boolean isForeignKeysSupported();

    public c() {
        a(FlowManager.getConfig().databaseConfigMap().get(getAssociatedDatabaseClassFile()));
    }

    private void a(b bVar) {
        this.j = bVar;
        if (bVar != null) {
            for (g next : bVar.tableConfigMap().values()) {
                f fVar = this.f5114a.get(next.tableClass());
                if (fVar != null) {
                    if (next.listModelLoader() != null) {
                        fVar.setListModelLoader(next.listModelLoader());
                    }
                    if (next.singleModelLoader() != null) {
                        fVar.setSingleModelLoader(next.singleModelLoader());
                    }
                    if (next.modelSaver() != null) {
                        fVar.setModelSaver(next.modelSaver());
                    }
                }
            }
            this.g = bVar.helperListener();
        }
        if (bVar == null || bVar.transactionManagerCreator() == null) {
            this.i = new com.raizlabs.android.dbflow.structure.b.a.a(this);
        } else {
            this.i = bVar.transactionManagerCreator().createManager(this);
        }
    }

    public List<Class<?>> getModelClasses() {
        return new ArrayList(this.f5114a.keySet());
    }

    public com.raizlabs.android.dbflow.d.a getTransactionManager() {
        return this.i;
    }

    public List<f> getModelAdapters() {
        return new ArrayList(this.f5114a.values());
    }

    public <T> f<T> getModelAdapterForTable(Class<T> cls) {
        return this.f5114a.get(cls);
    }

    public Class<?> getModelClassForName(String str) {
        return this.f5115b.get(str);
    }

    public List<Class<?>> getModelViews() {
        return new ArrayList(this.d.keySet());
    }

    public <T> g<T> getModelViewAdapterForTable(Class<T> cls) {
        return this.d.get(cls);
    }

    public List<g> getModelViewAdapters() {
        return new ArrayList(this.d.values());
    }

    public List<h> getModelQueryAdapters() {
        return new ArrayList(this.e.values());
    }

    public <T> h<T> getQueryModelAdapterForQueryClass(Class<T> cls) {
        return this.e.get(cls);
    }

    public Map<Integer, List<a>> getMigrations() {
        return this.c;
    }

    public synchronized l getHelper() {
        if (this.f == null) {
            b bVar = FlowManager.getConfig().databaseConfigMap().get(getAssociatedDatabaseClassFile());
            if (bVar != null) {
                if (bVar.helperCreator() != null) {
                    this.f = bVar.helperCreator().createHelper(this, this.g);
                    this.f.performRestoreFromBackup();
                }
            }
            this.f = new k(this, this.g);
            this.f.performRestoreFromBackup();
        }
        return this.f;
    }

    public i getWritableDatabase() {
        return getHelper().getDatabase();
    }

    public e getModelNotifier() {
        if (this.k == null) {
            b bVar = FlowManager.getConfig().databaseConfigMap().get(getAssociatedDatabaseClassFile());
            if (bVar == null || bVar.modelNotifier() == null) {
                this.k = new b();
            } else {
                this.k = bVar.modelNotifier();
            }
        }
        return this.k;
    }

    public g.a beginTransactionAsync(com.raizlabs.android.dbflow.structure.b.a.c cVar) {
        return new g.a(cVar, this);
    }

    public void executeTransaction(com.raizlabs.android.dbflow.structure.b.a.c cVar) {
        i writableDatabase = getWritableDatabase();
        try {
            writableDatabase.beginTransaction();
            cVar.execute(writableDatabase);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public String getDatabaseName() {
        b bVar = this.j;
        return bVar != null ? bVar.getDatabaseName() : getAssociatedDatabaseClassFile().getSimpleName();
    }

    public String getDatabaseFileName() {
        return getDatabaseName() + getDatabaseExtensionName();
    }

    public String getDatabaseExtensionName() {
        b bVar = this.j;
        return bVar != null ? bVar.getDatabaseExtensionName() : ".db";
    }

    public boolean isInMemory() {
        b bVar = this.j;
        return bVar != null && bVar.isInMemory();
    }

    @Deprecated
    public void reset(Context context) {
        reset(this.j);
    }

    public void reset() {
        reset(this.j);
    }

    public void reset(b bVar) {
        if (!this.h) {
            destroy();
            a(bVar);
            getHelper().getDatabase();
        }
    }

    public void reopen(b bVar) {
        if (!this.h) {
            close();
            this.f = null;
            a(bVar);
            getHelper().getDatabase();
            this.h = false;
        }
    }

    public void reopen() {
        reopen(this.j);
    }

    public void destroy() {
        if (!this.h) {
            this.h = true;
            close();
            FlowManager.getContext().deleteDatabase(getDatabaseFileName());
            this.f = null;
            this.h = false;
        }
    }

    public void close() {
        getTransactionManager().stopQueue();
        for (f next : this.f5114a.values()) {
            next.closeInsertStatement();
            next.closeCompiledStatement();
            next.closeDeleteStatement();
            next.closeUpdateStatement();
        }
        getHelper().closeDB();
    }

    public boolean isDatabaseIntegrityOk() {
        return getHelper().isDatabaseIntegrityOk();
    }

    public void backupDatabase() {
        getHelper().backupDB();
    }
}
