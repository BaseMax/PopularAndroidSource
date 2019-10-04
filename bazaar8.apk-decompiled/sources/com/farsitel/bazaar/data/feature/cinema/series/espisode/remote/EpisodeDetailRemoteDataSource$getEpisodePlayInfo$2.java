package com.farsitel.bazaar.data.feature.cinema.series.espisode.remote;

import c.c.a.e.d.h.d.a.a.d;
import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: EpisodeDetailRemoteDataSource.kt */
final class EpisodeDetailRemoteDataSource$getEpisodePlayInfo$2 extends Lambda implements b<d, VideoPlayInfoModel> {
    public final /* synthetic */ String $seriesId;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public EpisodeDetailRemoteDataSource$getEpisodePlayInfo$2(String str) {
        super(1);
        this.$seriesId = str;
    }

    public final VideoPlayInfoModel a(d dVar) {
        j.b(dVar, "response");
        return dVar.a(this.$seriesId);
    }
}
