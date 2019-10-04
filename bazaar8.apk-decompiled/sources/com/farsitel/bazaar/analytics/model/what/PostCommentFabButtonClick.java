package com.farsitel.bazaar.analytics.model.what;

import h.f.b.j;

/* compiled from: ButtonClick.kt */
public final class PostCommentFabButtonClick extends ButtonClick {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PostCommentFabButtonClick(String str) {
        super("post_comment_fab", str, null);
        j.b(str, "referrer");
    }
}
