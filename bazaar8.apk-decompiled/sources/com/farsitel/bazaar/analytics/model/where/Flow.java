package com.farsitel.bazaar.analytics.model.where;

import h.f.b.f;

/* compiled from: Flowskt.kt */
public abstract class Flow extends WhereType {
    public final String name;

    public Flow(String str) {
        this.name = str + "_flow";
    }

    public String a() {
        return this.name;
    }

    public /* synthetic */ Flow(String str, f fVar) {
        this(str);
    }
}
