package com.farsitel.bazaar.analytics.model.where;

import h.f.b.f;

/* compiled from: Services.kt */
public abstract class Services extends WhereType {
    public final String name;

    public Services(String str) {
        this.name = str + "_service";
    }

    public String a() {
        return this.name;
    }

    public /* synthetic */ Services(String str, f fVar) {
        this(str);
    }
}
