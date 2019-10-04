package com.farsitel.bazaar.data.feature.cinema.series.espisode.remote;

import c.c.a.e.d.h.d.a.a.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.a.b;
import h.f.b.j;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: EpisodeDetailRemoteDataSource.kt */
final class EpisodeDetailRemoteDataSource$getEpisodeDetailInfo$2 extends Lambda implements b<c, List<? extends RecyclerData>> {

    /* renamed from: a  reason: collision with root package name */
    public static final EpisodeDetailRemoteDataSource$getEpisodeDetailInfo$2 f12227a = new EpisodeDetailRemoteDataSource$getEpisodeDetailInfo$2();

    public EpisodeDetailRemoteDataSource$getEpisodeDetailInfo$2() {
        super(1);
    }

    public final List<RecyclerData> a(c cVar) {
        j.b(cVar, "episodeDetailResponseDto");
        return cVar.d();
    }
}
