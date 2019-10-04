package com.farsitel.bazaar.ui.latestdownloads;

import c.c.a.c.d.c;
import c.c.a.c.d.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.common.model.page.ListItem;
import h.f.a.b;
import h.f.b.j;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: LatestDownloadedAppViewModel.kt */
final class LatestDownloadedAppViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1 extends Lambda implements b<List<? extends ListItem.App>, Page> {
    public final /* synthetic */ LatestDownloadedAppViewModel$makeData$1 this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public LatestDownloadedAppViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1(LatestDownloadedAppViewModel$makeData$1 latestDownloadedAppViewModel$makeData$1) {
        super(1);
        this.this$0 = latestDownloadedAppViewModel$makeData$1;
    }

    public final Page a(List<ListItem.App> list) {
        j.b(list, "list");
        Page page = new Page(this.this$0.this$0.z.getString(R.string.latest_downloads), null, null, list, d.a(new c.g(), null, 1, null), 6, null);
        return page;
    }
}
