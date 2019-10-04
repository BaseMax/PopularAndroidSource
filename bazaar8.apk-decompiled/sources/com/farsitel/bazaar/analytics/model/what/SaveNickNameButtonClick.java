package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class SaveNickNameButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SaveNickNameButtonClick(String str) {
        super("save_nick_name", str, null);
        j.b(str, "referrer");
    }
}
