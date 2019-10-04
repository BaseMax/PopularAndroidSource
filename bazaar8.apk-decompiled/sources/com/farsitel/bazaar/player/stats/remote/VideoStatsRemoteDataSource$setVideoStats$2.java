package com.farsitel.bazaar.player.stats.remote;

import c.c.a.l.b.a.f;
import com.farsitel.bazaar.common.model.VideoStatsResult;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoStatsRemoteDataSource.kt */
final class VideoStatsRemoteDataSource$setVideoStats$2 extends Lambda implements b<f, VideoStatsResult> {

    /* renamed from: a  reason: collision with root package name */
    public static final VideoStatsRemoteDataSource$setVideoStats$2 f12323a = new VideoStatsRemoteDataSource$setVideoStats$2();

    public VideoStatsRemoteDataSource$setVideoStats$2() {
        super(1);
    }

    public final VideoStatsResult a(f fVar) {
        j.b(fVar, "videoStatsResponseDto");
        return fVar.a();
    }
}
