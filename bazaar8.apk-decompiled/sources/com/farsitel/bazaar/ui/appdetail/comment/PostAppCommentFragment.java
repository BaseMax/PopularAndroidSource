package com.farsitel.bazaar.ui.appdetail.comment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RatingBar;
import c.c.a.f.C0459s;
import c.c.a.n.b.b.a;
import c.c.a.n.u.b.e;
import c.c.a.n.u.b.g;
import com.farsitel.bazaar.analytics.model.where.PostAppReviewScreen;
import com.farsitel.bazaar.data.entity.EntityType;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.f;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: PostAppCommentFragment.kt */
public final class PostAppCommentFragment extends g<None> {
    public static final a Ha = new a(null);
    public final String Ia = "postAppComment";
    public boolean Ja = true;
    public c.c.a.n.b.b.a Ka;
    public HashMap La;

    /* compiled from: PostAppCommentFragment.kt */
    public static final class a {
        public a() {
        }

        public final PostAppCommentFragment a(c.c.a.n.b.b.a aVar) {
            j.b(aVar, "postCommentFragmentArgs");
            PostAppCommentFragment postAppCommentFragment = new PostAppCommentFragment();
            postAppCommentFragment.m(aVar.e());
            return postAppCommentFragment;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public void Qa() {
        HashMap hashMap = this.La;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public String Sa() {
        return this.Ia;
    }

    public boolean Ya() {
        return this.Ja;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        C0459s a2 = C0459s.a(layoutInflater, viewGroup, false);
        c.c.a.n.b.b.a aVar = this.Ka;
        if (aVar != null) {
            a2.a(53, (Object) aVar.d());
            j.a((Object) a2, "FragmentPostCommentBindi…gs.toolbarInfo)\n        }");
            return a2.h();
        }
        j.c("postCommentArgs");
        throw null;
    }

    public void b(View view) {
        j.b(view, "view");
        super.b(view);
        RatingBar ob = ob();
        c.c.a.n.b.b.a aVar = this.Ka;
        if (aVar != null) {
            ob.setRating((float) aVar.b());
        } else {
            j.c("postCommentArgs");
            throw null;
        }
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        a.C0089a aVar = c.c.a.n.b.b.a.f6214a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.Ka = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public void ib() {
        super.ib();
        Za().a(b(nb()));
        Ma();
    }

    public void lb() {
        if (pb()) {
            e hb = hb();
            c.c.a.n.b.b.a aVar = this.Ka;
            if (aVar != null) {
                String c2 = aVar.c();
                int rating = (int) ob().getRating();
                String obj = eb().getText().toString();
                c.c.a.n.b.b.a aVar2 = this.Ka;
                if (aVar2 != null) {
                    hb.a(c2, rating, obj, Long.parseLong(aVar2.a()), EntityType.APP, fb());
                    return;
                }
                j.c("postCommentArgs");
                throw null;
            }
            j.c("postCommentArgs");
            throw null;
        }
        qb();
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public PostAppReviewScreen _a() {
        return new PostAppReviewScreen();
    }
}
