package com.raizlabs.android.dbflow.sql.b;

import com.raizlabs.android.dbflow.structure.b.j;

public final class f<TModel> extends c<TModel, TModel> {
    public f(Class<TModel> cls) {
        super(cls);
    }

    public final TModel convertToData(j jVar, TModel tmodel, boolean z) {
        if (!z || jVar.moveToFirst()) {
            if (tmodel == null) {
                tmodel = getInstanceAdapter().newInstance();
            }
            getInstanceAdapter().loadFromCursor(jVar, tmodel);
        }
        return tmodel;
    }

    public final TModel convertToData(j jVar, TModel tmodel) {
        return convertToData(jVar, tmodel, true);
    }
}
