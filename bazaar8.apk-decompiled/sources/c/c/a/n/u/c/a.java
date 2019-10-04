package c.c.a.n.u.c;

import b.r.u;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.ui.reviews.thirdparty.ThirdPartyReviewActivity;
import h.f.b.j;

/* compiled from: ThirdPartyReviewActivity.kt */
final class a<T> implements u<ResourceState> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ThirdPartyReviewActivity f6993a;

    public a(ThirdPartyReviewActivity thirdPartyReviewActivity) {
        this.f6993a = thirdPartyReviewActivity;
    }

    public final void a(ResourceState resourceState) {
        ThirdPartyReviewActivity thirdPartyReviewActivity = this.f6993a;
        String a2 = thirdPartyReviewActivity.y;
        if (a2 != null) {
            thirdPartyReviewActivity.b(a2);
        } else {
            j.a();
            throw null;
        }
    }
}
