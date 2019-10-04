package com.raizlabs.android.dbflow.sql.b;

import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.structure.b;
import com.raizlabs.android.dbflow.structure.b.i;
import com.raizlabs.android.dbflow.structure.b.j;

public abstract class c<TModel, TReturn> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<TModel> f5138a;

    /* renamed from: b  reason: collision with root package name */
    private com.raizlabs.android.dbflow.config.c f5139b;
    private b<TModel> c;

    public abstract TReturn convertToData(j jVar, TReturn treturn);

    public c(Class<TModel> cls) {
        this.f5138a = cls;
    }

    public TReturn load(String str) {
        return load(getDatabaseDefinition().getWritableDatabase(), str);
    }

    public TReturn load(String str, TReturn treturn) {
        return load(getDatabaseDefinition().getWritableDatabase(), str, treturn);
    }

    public TReturn load(i iVar, String str) {
        return load(iVar, str, null);
    }

    public TReturn load(i iVar, String str, TReturn treturn) {
        return load(iVar.rawQuery(str, null), treturn);
    }

    public TReturn load(j jVar) {
        return load(jVar, (Object) null);
    }

    public TReturn load(j jVar, TReturn treturn) {
        if (jVar != null) {
            try {
                treturn = convertToData(jVar, treturn);
            } finally {
                jVar.close();
            }
        }
        return treturn;
    }

    public Class<TModel> getModelClass() {
        return this.f5138a;
    }

    public b<TModel> getInstanceAdapter() {
        if (this.c == null) {
            this.c = FlowManager.getInstanceAdapter(this.f5138a);
        }
        return this.c;
    }

    public com.raizlabs.android.dbflow.config.c getDatabaseDefinition() {
        if (this.f5139b == null) {
            this.f5139b = FlowManager.getDatabaseForTable(this.f5138a);
        }
        return this.f5139b;
    }
}
