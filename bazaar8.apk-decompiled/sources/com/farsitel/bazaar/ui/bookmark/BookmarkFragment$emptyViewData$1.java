package com.farsitel.bazaar.ui.bookmark;

import c.c.a.c.d.c;
import c.c.a.c.d.d;
import com.farsitel.bazaar.R;
import h.f.a.a;
import h.f.b.j;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: BookmarkFragment.kt */
final class BookmarkFragment$emptyViewData$1 extends Lambda implements a<h> {
    public final /* synthetic */ BookmarkFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BookmarkFragment$emptyViewData$1(BookmarkFragment bookmarkFragment) {
        super(0);
        this.this$0 = bookmarkFragment;
    }

    public final void invoke() {
        BookmarkFragment bookmarkFragment = this.this$0;
        String b2 = bookmarkFragment.b((int) R.string.title_action_top_chart_empty);
        j.a((Object) b2, "getString(R.string.title_action_top_chart_empty)");
        bookmarkFragment.a("top-popular", b2, d.a(new c.C0071c(), null, 1, null));
    }
}
