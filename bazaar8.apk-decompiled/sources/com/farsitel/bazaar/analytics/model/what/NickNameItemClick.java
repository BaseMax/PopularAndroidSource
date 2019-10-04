package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ItemClick.kt */
public final class NickNameItemClick extends ItemClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public NickNameItemClick(String str) {
        super("nick_name", str, null);
        j.b(str, "referrer");
    }
}
