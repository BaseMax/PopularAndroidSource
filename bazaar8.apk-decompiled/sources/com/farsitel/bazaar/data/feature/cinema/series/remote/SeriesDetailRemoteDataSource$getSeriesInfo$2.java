package com.farsitel.bazaar.data.feature.cinema.series.remote;

import c.c.a.e.d.h.d.b.j;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.a.b;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: SeriesDetailRemoteDataSource.kt */
final class SeriesDetailRemoteDataSource$getSeriesInfo$2 extends Lambda implements b<j, List<? extends RecyclerData>> {
    public final /* synthetic */ int $seasonIndex;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SeriesDetailRemoteDataSource$getSeriesInfo$2(int i2) {
        super(1);
        this.$seasonIndex = i2;
    }

    public final List<RecyclerData> a(j jVar) {
        h.f.b.j.b(jVar, "response");
        return jVar.a(this.$seasonIndex);
    }
}
