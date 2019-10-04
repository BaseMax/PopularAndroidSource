package com.farsitel.bazaar.ui.bookmark;

import c.c.a.c.d.c;
import c.c.a.c.d.d;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.common.model.page.ListItem;
import h.f.a.b;
import h.f.b.j;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: BookmarkViewModel.kt */
final class BookmarkViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1 extends Lambda implements b<List<? extends ListItem.App>, Page> {
    public final /* synthetic */ BookmarkViewModel$makeData$1 this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BookmarkViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1(BookmarkViewModel$makeData$1 bookmarkViewModel$makeData$1) {
        super(1);
        this.this$0 = bookmarkViewModel$makeData$1;
    }

    public final Page a(List<ListItem.App> list) {
        String str = this.this$0.$pageName;
        j.a((Object) list, "it");
        Page page = new Page(str, null, null, list, d.a(new c.C0071c(), null, 1, null), 6, null);
        return page;
    }
}
