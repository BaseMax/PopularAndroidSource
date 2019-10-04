package com.raizlabs.android.dbflow.sql.language.a;

import com.raizlabs.android.dbflow.sql.c;
import com.raizlabs.android.dbflow.sql.language.o;
import com.raizlabs.android.dbflow.sql.language.x;
import com.raizlabs.android.dbflow.structure.b.i;

public final class b<T> {

    /* renamed from: a  reason: collision with root package name */
    private final o<T> f5147a;

    public b(String str, boolean z, Class<T> cls, a... aVarArr) {
        this.f5147a = x.index(str);
        this.f5147a.on(cls, aVarArr).unique(z);
    }

    public final void createIfNotExists(i iVar) {
        this.f5147a.enable(iVar);
    }

    public final void createIfNotExists() {
        this.f5147a.enable();
    }

    public final void drop() {
        this.f5147a.disable();
    }

    public final void drop(i iVar) {
        this.f5147a.disable(iVar);
    }

    public final o<T> getIndex() {
        return this.f5147a;
    }

    public final String getIndexName() {
        return c.quoteIfNeeded(this.f5147a.getIndexName());
    }
}
