package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class AppCategoryButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppCategoryButtonClick(String str) {
        super("app_category", str, null);
        j.b(str, "referrer");
    }
}
