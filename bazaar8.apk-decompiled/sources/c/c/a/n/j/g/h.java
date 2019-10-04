package c.c.a.n.j.g;

import android.content.Intent;
import b.r.r;
import b.r.t;
import c.c.a.d.c.b;
import c.c.a.e.d.r.e;
import c.c.a.n.c.d.g;
import c.c.a.p.I;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.reviews.ReviewDividerItem;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ReviewState;
import com.farsitel.bazaar.data.entity.EntityType;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.ArrayList;
import java.util.List;

/* compiled from: VideoReviewsViewModel.kt */
public final class h extends g<RecyclerData, String> {

    /* renamed from: j  reason: collision with root package name */
    public final t<Integer> f6577j = new c.c.a.c.h.g();

    /* renamed from: k  reason: collision with root package name */
    public Integer f6578k;

    /* renamed from: l  reason: collision with root package name */
    public final t<Integer> f6579l = new t<>();
    public final e m;
    public final I n;
    public final b o;

    public h(e eVar, I i2, b bVar) {
        j.b(eVar, "reviewRepository");
        j.b(i2, "workManagerScheduler");
        j.b(bVar, "accountManager");
        this.m = eVar;
        this.n = i2;
        this.o = bVar;
    }

    public final t<Integer> j() {
        return this.f6577j;
    }

    public final t<Integer> k() {
        return this.f6579l;
    }

    public final void l() {
        if (this.o.f()) {
            r g2 = g();
            ReviewState.PostComment postComment = ReviewState.PostComment.f12181a;
            Resource resource = (Resource) g().a();
            ErrorModel errorModel = null;
            List list = resource != null ? (List) resource.a() : null;
            Resource resource2 = (Resource) g().a();
            if (resource2 != null) {
                errorModel = resource2.c();
            }
            g2.b(new Resource(postComment, list, errorModel));
            return;
        }
        this.f6577j.b(1010);
    }

    public final void b(List<ReviewItem> list) {
        j.b(list, "items");
        ArrayList arrayList = new ArrayList();
        Resource e2 = e();
        List list2 = e2 != null ? (List) e2.a() : null;
        if (list2 == null || list2.isEmpty()) {
            ReviewDividerItem reviewDividerItem = new ReviewDividerItem(16, false, 0, 4, null);
            arrayList.add(reviewDividerItem);
        }
        arrayList.addAll(list);
        a(arrayList);
    }

    public final void c(int i2) {
        if (this.o.f()) {
            this.n.a(i2, false, EntityType.VIDEO);
            return;
        }
        this.f6578k = Integer.valueOf(i2);
        this.f6577j.b(1015);
    }

    /* renamed from: a */
    public void d(String str) {
        j.b(str, "params");
        C1125ra unused = C1103g.b(this, null, null, new VideoReviewsViewModel$makeData$1(this, str, null), 3, null);
    }

    public final void a(int i2, int i3, Intent intent) {
        if (i3 != -1) {
            return;
        }
        if (i2 == 1010) {
            l();
        } else if (i2 == 1015) {
            Integer num = this.f6578k;
            if (num != null) {
                c(num.intValue());
            }
        }
    }
}
