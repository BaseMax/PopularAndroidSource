package com.farsitel.bazaar.ui.cinema.reviews.post;

import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import c.c.a.f.C0459s;
import c.c.a.n.j.g.a.a;
import c.c.a.n.u.b.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.CancelPostVideoReviewButtonClick;
import com.farsitel.bazaar.analytics.model.what.SubmitReviewButtonClick;
import com.farsitel.bazaar.analytics.model.where.PostVideoReviewScreen;
import com.farsitel.bazaar.data.entity.EntityType;
import h.f.b.f;
import h.f.b.j;
import h.h;
import java.util.HashMap;

/* compiled from: PostVideoCommentFragment.kt */
public final class PostVideoCommentFragment extends c.c.a.n.u.b.a<h> {
    public static final a Fa = new a(null);
    public final String Ga = "postVideoReview";
    public boolean Ha = true;
    public c.c.a.n.j.g.a.a Ia;
    public int Ja = R.string.submitReviewHint;
    public HashMap Ka;

    /* compiled from: PostVideoCommentFragment.kt */
    public static final class a {
        public a() {
        }

        public final PostVideoCommentFragment a(c.c.a.n.j.g.a.a aVar) {
            j.b(aVar, "postVideoReviewFragmentArgs");
            PostVideoCommentFragment postVideoCommentFragment = new PostVideoCommentFragment();
            postVideoCommentFragment.m(aVar.d());
            return postVideoCommentFragment;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public void Qa() {
        HashMap hashMap = this.Ka;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public String Sa() {
        return this.Ga;
    }

    public boolean Ya() {
        return this.Ha;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        C0459s a2 = C0459s.a(layoutInflater, viewGroup, false);
        c.c.a.n.j.g.a.a aVar = this.Ia;
        if (aVar != null) {
            a2.a(53, (Object) aVar.b());
            j.a((Object) a2, "FragmentPostCommentBindi…gs.toolbarInfo)\n        }");
            return a2.h();
        }
        j.c("postVideoReviewArgs");
        throw null;
    }

    public void b(View view) {
        j.b(view, "view");
        super.b(view);
        cb().setBackgroundTintList(ColorStateList.valueOf(b.i.b.a.a(Ha(), (int) R.color.video_details_primary_color)));
    }

    public void bb() {
        super.bb();
        c.c.a.n.j.g.a.a aVar = this.Ia;
        if (aVar != null) {
            String c2 = aVar.c();
            c.c.a.n.j.g.a.a aVar2 = this.Ia;
            if (aVar2 != null) {
                c.c.a.n.c.a.a.a(this, new CancelPostVideoReviewButtonClick(c2, aVar2.a()), null, null, 6, null);
                return;
            }
            j.c("postVideoReviewArgs");
            throw null;
        }
        j.c("postVideoReviewArgs");
        throw null;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        a.C0097a aVar = c.c.a.n.j.g.a.a.f6562a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.Ia = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public int db() {
        return this.Ja;
    }

    public void ib() {
        Za().a(b((int) R.string.submitted_to_approve));
        Ma();
    }

    public void lb() {
        if (nb()) {
            c.c.a.n.j.g.a.a aVar = this.Ia;
            if (aVar != null) {
                String c2 = aVar.c();
                c.c.a.n.j.g.a.a aVar2 = this.Ia;
                if (aVar2 != null) {
                    c.c.a.n.c.a.a.a(this, new SubmitReviewButtonClick(c2, aVar2.a()), null, null, 6, null);
                    e hb = hb();
                    c.c.a.n.j.g.a.a aVar3 = this.Ia;
                    if (aVar3 != null) {
                        e.a(hb, aVar3.c(), 0, eb().getText().toString(), 0, EntityType.VIDEO, fb(), 10, null);
                    } else {
                        j.c("postVideoReviewArgs");
                        throw null;
                    }
                } else {
                    j.c("postVideoReviewArgs");
                    throw null;
                }
            } else {
                j.c("postVideoReviewArgs");
                throw null;
            }
        } else {
            ob();
        }
    }

    public boolean nb() {
        return eb().length() > 0;
    }

    public final void ob() {
        if (eb().length() == 0) {
            eb().startAnimation(AnimationUtils.loadAnimation(Ha(), R.anim.wrong_field));
        }
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public PostVideoReviewScreen _a() {
        return new PostVideoReviewScreen();
    }
}
