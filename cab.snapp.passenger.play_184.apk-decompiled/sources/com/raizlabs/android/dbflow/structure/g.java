package com.raizlabs.android.dbflow.structure;

import com.raizlabs.android.dbflow.config.c;

public abstract class g<TModelView> extends b<TModelView> {
    public abstract String getCreationQuery();

    public abstract String getViewName();

    public g(c cVar) {
        super(cVar);
    }
}
