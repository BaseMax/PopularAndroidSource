package com.raizlabs.android.dbflow.config;

import com.raizlabs.android.dbflow.a.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class d {
    protected final Map<Class<?>, c> databaseClassLookupMap = new HashMap();
    protected final Map<Class<?>, c> databaseDefinitionMap = new HashMap();
    protected final Map<String, c> databaseNameMap = new HashMap();
    protected final Map<Class<?>, h> typeConverters = new HashMap();

    public h getTypeConverterForClass(Class<?> cls) {
        return this.typeConverters.get(cls);
    }

    public c getDatabaseForTable(Class<?> cls) {
        return this.databaseDefinitionMap.get(cls);
    }

    public c getDatabase(Class<?> cls) {
        return this.databaseClassLookupMap.get(cls);
    }

    public c getDatabase(String str) {
        return this.databaseNameMap.get(str);
    }

    public void putDatabaseForTable(Class<?> cls, c cVar) {
        this.databaseDefinitionMap.put(cls, cVar);
        this.databaseNameMap.put(cVar.getDatabaseName(), cVar);
        this.databaseClassLookupMap.put(cVar.getAssociatedDatabaseClassFile(), cVar);
    }

    public void reset() {
        this.databaseDefinitionMap.clear();
        this.databaseNameMap.clear();
        this.databaseClassLookupMap.clear();
        this.typeConverters.clear();
    }

    public List<c> getDatabaseDefinitions() {
        return new ArrayList(this.databaseNameMap.values());
    }
}
