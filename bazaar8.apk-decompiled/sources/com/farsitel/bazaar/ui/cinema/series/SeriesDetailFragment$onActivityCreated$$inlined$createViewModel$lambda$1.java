package com.farsitel.bazaar.ui.cinema.series;

import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import com.farsitel.bazaar.core.model.Resource;
import h.f.a.b;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: SeriesDetailFragment.kt */
final class SeriesDetailFragment$onActivityCreated$$inlined$createViewModel$lambda$1 extends Lambda implements b<Resource<? extends VideoPlayInfoModel>, h> {
    public final /* synthetic */ SeriesDetailFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SeriesDetailFragment$onActivityCreated$$inlined$createViewModel$lambda$1(SeriesDetailFragment seriesDetailFragment) {
        super(1);
        this.this$0 = seriesDetailFragment;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<VideoPlayInfoModel>) (Resource) obj);
        return h.f14579a;
    }

    public final void a(Resource<VideoPlayInfoModel> resource) {
        this.this$0.c(resource);
    }
}