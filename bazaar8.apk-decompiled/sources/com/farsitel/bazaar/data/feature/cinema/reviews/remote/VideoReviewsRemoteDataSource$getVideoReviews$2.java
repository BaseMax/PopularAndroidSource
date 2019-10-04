package com.farsitel.bazaar.data.feature.cinema.reviews.remote;

import c.c.a.e.d.h.c.b.e;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import h.f.a.b;
import h.f.b.j;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoReviewsRemoteDataSource.kt */
final class VideoReviewsRemoteDataSource$getVideoReviews$2 extends Lambda implements b<e, List<? extends ReviewItem>> {

    /* renamed from: a  reason: collision with root package name */
    public static final VideoReviewsRemoteDataSource$getVideoReviews$2 f12226a = new VideoReviewsRemoteDataSource$getVideoReviews$2();

    public VideoReviewsRemoteDataSource$getVideoReviews$2() {
        super(1);
    }

    public final List<ReviewItem> a(e eVar) {
        j.b(eVar, "response");
        return eVar.a();
    }
}
