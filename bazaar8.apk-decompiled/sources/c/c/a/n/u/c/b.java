package c.c.a.n.u.c;

import c.c.a.d.f.r;
import com.farsitel.bazaar.ui.reviews.thirdparty.ThirdPartyPendingResult;
import com.farsitel.bazaar.ui.reviews.thirdparty.ThirdPartyReviewActivity;

/* compiled from: ThirdPartyReviewActivity.kt */
public final class b implements r<ThirdPartyPendingResult> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ThirdPartyReviewActivity f6994a;

    public b(ThirdPartyReviewActivity thirdPartyReviewActivity) {
        this.f6994a = thirdPartyReviewActivity;
    }

    public void onCancel() {
        this.f6994a.finish();
    }

    public void a() {
        r.a.b(this);
    }

    public void a(ThirdPartyPendingResult thirdPartyPendingResult) {
        if (thirdPartyPendingResult == null) {
            this.f6994a.finish();
        } else {
            this.f6994a.z = thirdPartyPendingResult;
        }
    }
}
