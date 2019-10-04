package com.farsitel.bazaar.analytics.model.where;

import h.f.b.f;

/* compiled from: Receivers.kt */
public abstract class Receivers extends WhereType {
    public final String name;

    public Receivers(String str) {
        this.name = str + "_receiver";
    }

    public String a() {
        return this.name;
    }

    public /* synthetic */ Receivers(String str, f fVar) {
        this(str);
    }
}
