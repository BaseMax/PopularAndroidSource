package com.farsitel.bazaar.common.model.ui;

/* compiled from: PackageChangeModel.kt */
public enum PackageChangeType {
    ADD("add"),
    REMOVE("remove"),
    REPLACE("replace");
    
    public final String value;

    /* access modifiers changed from: public */
    PackageChangeType(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
