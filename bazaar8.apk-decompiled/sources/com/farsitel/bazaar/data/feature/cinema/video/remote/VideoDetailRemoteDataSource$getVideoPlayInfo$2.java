package com.farsitel.bazaar.data.feature.cinema.video.remote;

import c.c.a.e.d.h.e.b.n;
import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoDetailRemoteDataSource.kt */
final class VideoDetailRemoteDataSource$getVideoPlayInfo$2 extends Lambda implements b<n, VideoPlayInfoModel> {
    public final /* synthetic */ String $videoId;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDetailRemoteDataSource$getVideoPlayInfo$2(String str) {
        super(1);
        this.$videoId = str;
    }

    public final VideoPlayInfoModel a(n nVar) {
        j.b(nVar, "videoPlayInfoResponseDto");
        return nVar.a(this.$videoId);
    }
}
