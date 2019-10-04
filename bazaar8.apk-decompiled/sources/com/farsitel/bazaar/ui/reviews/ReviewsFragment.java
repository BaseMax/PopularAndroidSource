package com.farsitel.bazaar.ui.reviews;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import b.r.E;
import b.r.G;
import c.c.a.c.h.g;
import c.c.a.d.b.d;
import c.c.a.d.b.h;
import c.c.a.f.C0448o;
import c.c.a.n.b.b.a;
import c.c.a.n.c.d.f;
import c.c.a.n.u.e;
import c.c.a.n.u.k;
import c.c.a.n.u.l;
import c.c.a.n.u.o;
import c.c.a.n.u.q;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.ReviewsScreen;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.ReviewActionItem;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import com.farsitel.bazaar.ui.appdetail.comment.PostAppCommentFragment;
import com.farsitel.bazaar.widget.RTLImageView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: ReviewsFragment.kt */
public final class ReviewsFragment extends f<RecyclerData, ReviewActionItem, q> {
    public HashMap Aa;
    public int wa = R.layout.fragment_more_review;
    public boolean xa;
    public o ya;
    public final Object za = new Object();

    public static final /* synthetic */ q c(ReviewsFragment reviewsFragment) {
        return (q) reviewsFragment.cb();
    }

    public void La() {
        HashMap hashMap = this.Aa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public RecyclerView.h Xa() {
        return null;
    }

    public int Ya() {
        return this.wa;
    }

    public boolean ab() {
        return this.xa;
    }

    public View e(int i2) {
        if (this.Aa == null) {
            this.Aa = new HashMap();
        }
        View view = (View) this.Aa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Aa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public final ToolbarInfoModel f(int i2) {
        o oVar = this.ya;
        if (oVar != null) {
            String iconUrl = oVar.b().getIconUrl();
            o oVar2 = this.ya;
            if (oVar2 != null) {
                String appName = oVar2.b().getAppName();
                String b2 = b(i2);
                j.a((Object) b2, "getString(toolbarTitleResourceId)");
                return new ToolbarInfoModel(iconUrl, appName, b2);
            }
            j.c("reviewsFragmentArgs");
            throw null;
        }
        j.c("reviewsFragmentArgs");
        throw null;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public final k qb() {
        return new k(this);
    }

    public final l rb() {
        return new l(this);
    }

    public final void sb() {
        PostAppCommentFragment.a aVar = PostAppCommentFragment.Ha;
        o oVar = this.ya;
        if (oVar != null) {
            String packageName = oVar.b().getPackageName();
            o oVar2 = this.ya;
            if (oVar2 != null) {
                aVar.a(new a(packageName, String.valueOf(oVar2.b().getAppVersion()), ((q) cb()).k(), f(R.string.yourCommentOnApplication))).a(D(), "postFragment");
            } else {
                j.c("reviewsFragmentArgs");
                throw null;
            }
        } else {
            j.c("reviewsFragmentArgs");
            throw null;
        }
    }

    public ReviewsScreen Sa() {
        return new ReviewsScreen();
    }

    public e Ua() {
        return new e(qb(), rb());
    }

    public ReviewActionItem Za() {
        o oVar = this.ya;
        if (oVar != null) {
            return oVar.b();
        }
        j.c("reviewsFragmentArgs");
        throw null;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        o.a aVar = o.f7011a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.ya = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public q jb() {
        E a2 = G.a((Fragment) this, Ra()).a(q.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        q qVar = (q) a2;
        h.a(this, qVar.g(), new ReviewsFragment$makeViewModel$$inlined$createViewModel$lambda$1(this));
        qVar.j().a(ba(), new h(this));
        qVar.m().a(ba(), new i(this));
        g<h.h> l2 = qVar.l();
        b.r.k ba = ba();
        j.a((Object) ba, "viewLifecycleOwner");
        l2.a(ba, new j(this));
        return qVar;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        C0448o a2 = C0448o.a(layoutInflater, viewGroup, false);
        o oVar = this.ya;
        if (oVar != null) {
            a2.a(53, (Object) oVar.c());
            o oVar2 = this.ya;
            if (oVar2 != null) {
                a2.a(12, (Object) Boolean.valueOf(oVar2.a()));
                View h2 = a2.h();
                j.a((Object) h2, "root");
                a(h2, viewGroup);
                View h3 = a2.h();
                j.a((Object) h3, "root");
                b(h3);
                j.a((Object) a2, "FragmentMoreReviewBindin…ErrorView(root)\n        }");
                return a2.h();
            }
            j.c("reviewsFragmentArgs");
            throw null;
        }
        j.c("reviewsFragmentArgs");
        throw null;
    }

    public void c(View view) {
        j.b(view, "view");
        super.c(view);
        ((RTLImageView) e(c.c.a.e.reviewToolbarBackButton)).setOnClickListener(new f(this));
        ((FloatingActionButton) e(c.c.a.e.reviewFloatingButton)).setOnClickListener(new g(this));
        o oVar = this.ya;
        if (oVar == null) {
            j.c("reviewsFragmentArgs");
            throw null;
        } else if (oVar.a()) {
            RecyclerView _a = _a();
            _a.setClipToPadding(false);
            _a.setPadding(_a().getLeft(), _a().getTop(), _a().getRight(), (int) _a.getResources().getDimension(R.dimen.bottom_padding));
        }
    }

    public final void a(View view, ReviewItem reviewItem) {
        View view2;
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        LayoutInflater c2 = d.c(Ha);
        if (reviewItem.getReplyItem() == null) {
            view2 = c2.inflate(R.layout.popup_report, null);
        } else {
            view2 = c2.inflate(R.layout.popup_report_developer, null);
        }
        j.a((Object) view2, "popupView");
        PopupWindow a2 = c.c.a.i.f.a(view2, view);
        view2.findViewById(R.id.reportButton).setOnClickListener(new m(this, reviewItem, a2));
        View findViewById = view2.findViewById(R.id.reportDeveloperButton);
        if (findViewById != null) {
            findViewById.setOnClickListener(new n(this, reviewItem, a2));
        }
    }

    public void a(int i2, int i3, Intent intent) {
        super.a(i2, i3, intent);
        ((q) cb()).a(i2, i3, intent);
    }

    public final void a(int i2, boolean z) {
        ((q) cb()).b(i2, z);
        View aa = aa();
        if (aa != null) {
            Snackbar.a(aa, b((int) R.string.thanksForReport), 0).m();
        } else {
            j.a();
            throw null;
        }
    }
}
