package com.farsitel.bazaar.data.feature.cinema.video.remote;

import c.c.a.e.d.h.e.b.m;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.a.b;
import h.f.b.j;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoDetailRemoteDataSource.kt */
final class VideoDetailRemoteDataSource$getVideoInfo$2 extends Lambda implements b<m, List<? extends RecyclerData>> {

    /* renamed from: a  reason: collision with root package name */
    public static final VideoDetailRemoteDataSource$getVideoInfo$2 f12233a = new VideoDetailRemoteDataSource$getVideoInfo$2();

    public VideoDetailRemoteDataSource$getVideoInfo$2() {
        super(1);
    }

    public final List<RecyclerData> a(m mVar) {
        j.b(mVar, "videoDetailResponseDto");
        return mVar.f();
    }
}
