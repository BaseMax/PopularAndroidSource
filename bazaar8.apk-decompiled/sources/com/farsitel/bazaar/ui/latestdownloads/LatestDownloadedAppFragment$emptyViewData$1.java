package com.farsitel.bazaar.ui.latestdownloads;

import c.c.a.c.d.c;
import c.c.a.c.d.d;
import com.farsitel.bazaar.R;
import h.f.a.a;
import h.f.b.j;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: LatestDownloadedAppFragment.kt */
final class LatestDownloadedAppFragment$emptyViewData$1 extends Lambda implements a<h> {
    public final /* synthetic */ LatestDownloadedAppFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public LatestDownloadedAppFragment$emptyViewData$1(LatestDownloadedAppFragment latestDownloadedAppFragment) {
        super(0);
        this.this$0 = latestDownloadedAppFragment;
    }

    public final void invoke() {
        LatestDownloadedAppFragment latestDownloadedAppFragment = this.this$0;
        String b2 = latestDownloadedAppFragment.b((int) R.string.title_action_top_chart_empty);
        j.a((Object) b2, "getString(R.string.title_action_top_chart_empty)");
        latestDownloadedAppFragment.a("top-popular", b2, d.a(new c.g(), null, 1, null));
    }
}
