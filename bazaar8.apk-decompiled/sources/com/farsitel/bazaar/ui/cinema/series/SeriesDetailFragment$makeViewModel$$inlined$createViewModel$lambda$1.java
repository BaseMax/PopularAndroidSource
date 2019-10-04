package com.farsitel.bazaar.ui.cinema.series;

import c.c.a.n.c.d.a.f;
import c.c.a.n.j.j.l;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import h.f.a.b;
import h.f.b.j;
import h.h;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: SeriesDetailFragment.kt */
final class SeriesDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1 extends Lambda implements b<Resource<? extends List<? extends RecyclerData>>, h> {
    public final /* synthetic */ SeriesDetailFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SeriesDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1(SeriesDetailFragment seriesDetailFragment) {
        super(1);
        this.this$0 = seriesDetailFragment;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<? extends List<? extends RecyclerData>>) (Resource) obj);
        return h.f14579a;
    }

    public final void a(Resource<? extends List<? extends RecyclerData>> resource) {
        if (j.a((Object) resource != null ? resource.d() : null, (Object) ResourceState.Success.f12179a)) {
            CinemaInfoItem a2 = l.a(SeriesDetailFragment.d(this.this$0), (List) null, 1, (Object) null);
            if (a2 != null) {
                f c2 = this.this$0.rb();
                if (c2 != null) {
                    c2.a(a2.getName());
                }
            }
        }
    }
}
