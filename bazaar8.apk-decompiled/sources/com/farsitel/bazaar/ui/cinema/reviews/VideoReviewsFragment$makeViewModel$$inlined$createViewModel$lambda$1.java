package com.farsitel.bazaar.ui.cinema.reviews;

import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ReviewState;
import h.f.a.b;
import h.f.b.j;
import h.h;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoReviewsFragment.kt */
final class VideoReviewsFragment$makeViewModel$$inlined$createViewModel$lambda$1 extends Lambda implements b<Resource<? extends List<? extends RecyclerData>>, h> {
    public final /* synthetic */ VideoReviewsFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoReviewsFragment$makeViewModel$$inlined$createViewModel$lambda$1(VideoReviewsFragment videoReviewsFragment) {
        super(1);
        this.this$0 = videoReviewsFragment;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<? extends List<? extends RecyclerData>>) (Resource) obj);
        return h.f14579a;
    }

    public final void a(Resource<? extends List<? extends RecyclerData>> resource) {
        if (j.a((Object) resource != null ? resource.d() : null, (Object) ReviewState.PostComment.f12181a)) {
            this.this$0.rb();
        }
    }
}
