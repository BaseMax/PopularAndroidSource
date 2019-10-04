package com.farsitel.bazaar.analytics.model.where;

import h.f.b.f;

/* compiled from: OtherScreens.kt */
public abstract class OtherScreens extends WhereType {
    public final String name;

    public OtherScreens(String str) {
        this.name = str + "_screen";
    }

    public String a() {
        return this.name;
    }

    public /* synthetic */ OtherScreens(String str, f fVar) {
        this(str);
    }
}
