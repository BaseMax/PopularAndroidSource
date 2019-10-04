package com.raizlabs.android.dbflow.config;

import cab.snapp.passenger.d.c;

public final class a extends c {
    public final boolean areConsistencyChecksEnabled() {
        return false;
    }

    public final boolean backupEnabled() {
        return false;
    }

    public final String getDatabaseName() {
        return cab.snapp.passenger.d.a.NAME;
    }

    public final int getDatabaseVersion() {
        return 1;
    }

    public final boolean isForeignKeysSupported() {
        return false;
    }

    public a(d dVar) {
        c cVar = new c(this);
        dVar.putDatabaseForTable(cVar.getModelClass(), this);
        this.f5115b.put(cVar.getTableName(), cVar.getModelClass());
        this.f5114a.put(cVar.getModelClass(), cVar);
    }

    public final Class<?> getAssociatedDatabaseClassFile() {
        return cab.snapp.passenger.d.a.class;
    }
}
