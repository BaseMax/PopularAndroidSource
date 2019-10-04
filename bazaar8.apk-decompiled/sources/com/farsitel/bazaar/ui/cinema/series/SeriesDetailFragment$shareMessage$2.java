package com.farsitel.bazaar.ui.cinema.series;

import c.c.a.n.j.j.l;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import h.f.a.a;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: SeriesDetailFragment.kt */
final class SeriesDetailFragment$shareMessage$2 extends Lambda implements a<String> {
    public final /* synthetic */ SeriesDetailFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SeriesDetailFragment$shareMessage$2(SeriesDetailFragment seriesDetailFragment) {
        super(0);
        this.this$0 = seriesDetailFragment;
    }

    public final String invoke() {
        CinemaInfoItem a2 = l.a(SeriesDetailFragment.d(this.this$0), (List) null, 1, (Object) null);
        if (a2 != null) {
            return a2.getShareMessage();
        }
        return null;
    }
}
