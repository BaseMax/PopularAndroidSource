package com.farsitel.bazaar.data.feature.review;

import c.c.a.e.d.r.h;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import h.a.m;
import h.f.a.b;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: ReviewRemoteDataSource.kt */
final class ReviewRemoteDataSource$getReviews$2 extends Lambda implements b<h, List<? extends ReviewItem>> {
    public final /* synthetic */ Long $currentVersionCode;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ReviewRemoteDataSource$getReviews$2(Long l2) {
        super(1);
        this.$currentVersionCode = l2;
    }

    public final List<ReviewItem> a(h hVar) {
        j.b(hVar, "reviews");
        List<c.c.a.e.d.r.b> a2 = hVar.a();
        ArrayList arrayList = new ArrayList(m.a(a2, 10));
        for (c.c.a.e.d.r.b a3 : a2) {
            arrayList.add(a3.a(this.$currentVersionCode));
        }
        return arrayList;
    }
}
