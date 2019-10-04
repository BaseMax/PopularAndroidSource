package c.c.a.n.u;

import android.content.Intent;
import b.r.r;
import b.r.t;
import c.c.a.d.c.b;
import c.c.a.e.d.c.a;
import c.c.a.e.d.r.e;
import c.c.a.n.c.d.g;
import c.c.a.p.I;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.ReviewActionItem;
import com.farsitel.bazaar.common.model.reviews.ReplyReviewItem;
import com.farsitel.bazaar.common.model.reviews.ReviewDividerItem;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ReviewState;
import com.farsitel.bazaar.data.entity.EntityType;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.f.b.j;
import h.h;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ReviewsViewModel.kt */
public final class q extends g<RecyclerData, ReviewActionItem> {

    /* renamed from: j  reason: collision with root package name */
    public ReviewActionItem f7017j;

    /* renamed from: k  reason: collision with root package name */
    public final t<Integer> f7018k = new c.c.a.c.h.g();

    /* renamed from: l  reason: collision with root package name */
    public ReviewItem f7019l;
    public Integer m;
    public Boolean n;
    public Integer o;
    public final r<Integer> p = new r<>();
    public final c.c.a.c.h.g<h> q = new c.c.a.c.h.g<>();
    public int r;
    public final e s;
    public final I t;
    public final b u;
    public final c.c.a.b.d.b v;
    public final a w;

    public q(e eVar, I i2, b bVar, c.c.a.b.d.b bVar2, a aVar) {
        j.b(eVar, "getReviewRepository");
        j.b(i2, "workManagerScheduler");
        j.b(bVar, "accountManager");
        j.b(bVar2, "appManager");
        j.b(aVar, "appDetailRepository");
        this.s = eVar;
        this.t = i2;
        this.u = bVar;
        this.v = bVar2;
        this.w = aVar;
    }

    public static final /* synthetic */ ReviewActionItem e(q qVar) {
        ReviewActionItem reviewActionItem = qVar.f7017j;
        if (reviewActionItem != null) {
            return reviewActionItem;
        }
        j.c("reviewActionItem");
        throw null;
    }

    public final t<Integer> j() {
        return this.f7018k;
    }

    public final int k() {
        return this.r;
    }

    public final c.c.a.c.h.g<h> l() {
        return this.q;
    }

    public final r<Integer> m() {
        return this.p;
    }

    public final void n() {
        if (this.u.f()) {
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
        this.f7018k.b(1010);
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

    public final void c(ReviewItem reviewItem, int i2) {
        j.b(reviewItem, "reviewItem");
        c.c.a.b.d.b bVar = this.v;
        ReviewActionItem reviewActionItem = this.f7017j;
        if (reviewActionItem == null) {
            j.c("reviewActionItem");
            throw null;
        } else if (!bVar.p(reviewActionItem.getPackageName())) {
            this.q.b(h.f14579a);
        } else if (this.u.f()) {
            if (reviewItem.isReplyLiked()) {
                reviewItem.removeReplyUpVote();
            } else {
                reviewItem.addReplyUpVote();
            }
            ReplyReviewItem replyItem = reviewItem.getReplyItem();
            if (replyItem != null) {
                c(replyItem.getId(), true);
                this.p.b(Integer.valueOf(i2));
                return;
            }
            j.a();
            throw null;
        } else {
            this.f7019l = reviewItem;
            this.o = Integer.valueOf(i2);
            this.f7018k.b(1012);
        }
    }

    public final void d(ReviewItem reviewItem, int i2) {
        j.b(reviewItem, "reviewItem");
        c.c.a.b.d.b bVar = this.v;
        ReviewActionItem reviewActionItem = this.f7017j;
        if (reviewActionItem == null) {
            j.c("reviewActionItem");
            throw null;
        } else if (!bVar.p(reviewActionItem.getPackageName())) {
            this.q.b(h.f14579a);
        } else if (this.u.f()) {
            if (reviewItem.isLiked()) {
                reviewItem.removeUpVote();
            } else {
                reviewItem.addUpVote();
            }
            c(reviewItem.getId(), false);
            this.p.b(Integer.valueOf(i2));
        } else {
            this.f7019l = reviewItem;
            this.o = Integer.valueOf(i2);
            this.f7018k.b(1011);
        }
    }

    /* renamed from: a */
    public void d(ReviewActionItem reviewActionItem) {
        j.b(reviewActionItem, "params");
        this.f7017j = reviewActionItem;
        C1125ra unused = C1103g.b(this, null, null, new ReviewsViewModel$makeData$1(this, reviewActionItem, null), 3, null);
    }

    public final void a(ReviewItem reviewItem, int i2) {
        j.b(reviewItem, "reviewItem");
        c.c.a.b.d.b bVar = this.v;
        ReviewActionItem reviewActionItem = this.f7017j;
        if (reviewActionItem == null) {
            j.c("reviewActionItem");
            throw null;
        } else if (!bVar.p(reviewActionItem.getPackageName())) {
            this.q.b(h.f14579a);
        } else if (this.u.f()) {
            if (reviewItem.isReplyDisliked()) {
                reviewItem.removeReplyDownVote();
            } else {
                reviewItem.addReplyDownVote();
            }
            ReplyReviewItem replyItem = reviewItem.getReplyItem();
            if (replyItem != null) {
                a(replyItem.getId(), true);
                this.p.b(Integer.valueOf(i2));
                return;
            }
            j.a();
            throw null;
        } else {
            this.f7019l = reviewItem;
            this.o = Integer.valueOf(i2);
            this.f7018k.b(1014);
        }
    }

    public final void b(ReviewItem reviewItem, int i2) {
        j.b(reviewItem, "reviewItem");
        c.c.a.b.d.b bVar = this.v;
        ReviewActionItem reviewActionItem = this.f7017j;
        if (reviewActionItem == null) {
            j.c("reviewActionItem");
            throw null;
        } else if (!bVar.p(reviewActionItem.getPackageName())) {
            this.q.b(h.f14579a);
        } else if (this.u.f()) {
            if (reviewItem.isDisliked()) {
                reviewItem.removeDownVote();
            } else {
                reviewItem.addDownVote();
            }
            a(reviewItem.getId(), false);
            this.p.b(Integer.valueOf(i2));
        } else {
            this.f7019l = reviewItem;
            this.o = Integer.valueOf(i2);
            this.f7018k.b(1013);
        }
    }

    public final void c(int i2, boolean z) {
        this.t.a(i2, true, z);
    }

    public final void a(int i2, int i3, Intent intent) {
        if (i3 == 0) {
            this.f7019l = null;
        } else if (i2 == 1010) {
            n();
        } else if (i2 != 1015) {
            ReviewItem reviewItem = this.f7019l;
            Integer num = this.o;
            if (reviewItem != null && num != null) {
                int intValue = num.intValue();
                switch (i2) {
                    case 1011:
                        d(reviewItem, intValue);
                        return;
                    case 1012:
                        c(reviewItem, intValue);
                        return;
                    case 1013:
                        b(reviewItem, intValue);
                        return;
                    case 1014:
                        a(reviewItem, intValue);
                        return;
                    default:
                        return;
                }
            }
        } else {
            Integer num2 = this.m;
            Boolean bool = this.n;
            if (num2 != null && bool != null) {
                b(num2.intValue(), bool.booleanValue());
            }
        }
    }

    public final void b(int i2, boolean z) {
        if (this.u.f()) {
            I.a(this.t, i2, z, (EntityType) null, 4, (Object) null);
            return;
        }
        this.n = Boolean.valueOf(z);
        this.m = Integer.valueOf(i2);
        this.f7018k.b(1015);
    }

    public final void a(int i2, boolean z) {
        this.t.a(i2, false, z);
    }
}
