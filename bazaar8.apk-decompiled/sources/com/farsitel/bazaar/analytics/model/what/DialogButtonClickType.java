package com.farsitel.bazaar.analytics.model.what;

/* compiled from: ButtonClick.kt */
public enum DialogButtonClickType {
    OK("ok"),
    CANCEL("cancel");
    
    public final String value;

    /* access modifiers changed from: public */
    DialogButtonClickType(String str) {
        this.value = str;
    }

    public final String f() {
        return this.value;
    }
}
