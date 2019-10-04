package com.raizlabs.android.dbflow.structure;

import com.raizlabs.android.dbflow.config.c;

public abstract class b<TModel> extends i<TModel> {
    public abstract TModel newInstance();

    public b(c cVar) {
        super(cVar);
    }
}
