package com.farsitel.bazaar.data.feature.cinema.video.download.remote;

import com.farsitel.bazaar.common.model.VideoDownloadQualityInfo;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoDownloadRemoteDataSource.kt */
final class VideoDownloadRemoteDataSource$getVideoDownloadQuality$2 extends Lambda implements b<c.c.a.e.d.h.e.a.b.b, VideoDownloadQualityInfo> {

    /* renamed from: a  reason: collision with root package name */
    public static final VideoDownloadRemoteDataSource$getVideoDownloadQuality$2 f12231a = new VideoDownloadRemoteDataSource$getVideoDownloadQuality$2();

    public VideoDownloadRemoteDataSource$getVideoDownloadQuality$2() {
        super(1);
    }

    public final VideoDownloadQualityInfo a(c.c.a.e.d.h.e.a.b.b bVar) {
        j.b(bVar, "videoDownloadResponseDto");
        return bVar.a();
    }
}
