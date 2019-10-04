package com.farsitel.bazaar.ui.cinema.reviews;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import b.r.E;
import b.r.G;
import c.c.a.d.b.d;
import c.c.a.f.C0448o;
import c.c.a.n.c.a.b;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.f;
import c.c.a.n.j.g.g;
import c.c.a.n.j.g.h;
import c.c.a.n.u.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.PostVideoReviewButtonClick;
import com.farsitel.bazaar.analytics.model.what.ReportVideoReviewButtonClick;
import com.farsitel.bazaar.analytics.model.what.VideoReviewVisit;
import com.farsitel.bazaar.analytics.model.where.VideoReviewsScreen;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import com.farsitel.bazaar.ui.cinema.reviews.post.PostVideoCommentFragment;
import com.farsitel.bazaar.widget.RTLImageView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: VideoReviewsFragment.kt */
public final class VideoReviewsFragment extends f<RecyclerData, String, h> {
    public boolean wa;
    public int xa = R.layout.fragment_more_review;
    public g ya;
    public HashMap za;

    public static final /* synthetic */ h b(VideoReviewsFragment videoReviewsFragment) {
        return (h) videoReviewsFragment.cb();
    }

    public void La() {
        HashMap hashMap = this.za;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public a<RecyclerData> Ua() {
        return new e(qb(), null, 2, null);
    }

    public RecyclerView.h Xa() {
        return null;
    }

    public int Ya() {
        return this.xa;
    }

    public boolean ab() {
        return this.wa;
    }

    public View e(int i2) {
        if (this.za == null) {
            this.za = new HashMap();
        }
        View view = (View) this.za.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.za.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public final ToolbarInfoModel f(int i2) {
        g gVar = this.ya;
        if (gVar != null) {
            String b2 = gVar.b().b();
            g gVar2 = this.ya;
            if (gVar2 != null) {
                String a2 = gVar2.b().a();
                String b3 = b(i2);
                j.a((Object) b3, "getString(toolbarTitleResourceId)");
                return new ToolbarInfoModel(b2, a2, b3);
            }
            j.c("reviewsFragmentArgs");
            throw null;
        }
        j.c("reviewsFragmentArgs");
        throw null;
    }

    public final void g(int i2) {
        String Za = Za();
        g gVar = this.ya;
        if (gVar != null) {
            b.a(this, new ReportVideoReviewButtonClick(Za, gVar.a()), null, null, 6, null);
            ((h) cb()).c(i2);
            View aa = aa();
            if (aa != null) {
                Snackbar.a(aa, b((int) R.string.thanksForReport), 0).m();
            } else {
                j.a();
                throw null;
            }
        } else {
            j.c("reviewsFragmentArgs");
            throw null;
        }
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public final c.c.a.n.j.g.e qb() {
        return new c.c.a.n.j.g.e(this);
    }

    public final void rb() {
        String Za = Za();
        g gVar = this.ya;
        if (gVar != null) {
            b.a(this, new PostVideoReviewButtonClick(Za, gVar.a()), null, null, 6, null);
            PostVideoCommentFragment.a aVar = PostVideoCommentFragment.Fa;
            g gVar2 = this.ya;
            if (gVar2 != null) {
                aVar.a(new c.c.a.n.j.g.a.a(gVar2.a(), Za(), f(R.string.yourCommentOnApplication))).a(D(), "postVideoReview");
            } else {
                j.c("reviewsFragmentArgs");
                throw null;
            }
        } else {
            j.c("reviewsFragmentArgs");
            throw null;
        }
    }

    public VideoReviewsScreen Sa() {
        return new VideoReviewsScreen();
    }

    public String Za() {
        g gVar = this.ya;
        if (gVar != null) {
            return gVar.c();
        }
        j.c("reviewsFragmentArgs");
        throw null;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        g.a aVar = g.f6573a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.ya = aVar.a(C);
            String Za = Za();
            g gVar = this.ya;
            if (gVar != null) {
                b.a(this, new VideoReviewVisit(Za, gVar.a()), null, null, 6, null);
                return;
            }
            j.c("reviewsFragmentArgs");
            throw null;
        }
        j.a();
        throw null;
    }

    public h jb() {
        E a2 = G.a((Fragment) this, Ra()).a(h.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        h hVar = (h) a2;
        c.c.a.d.b.h.a(this, hVar.g(), new VideoReviewsFragment$makeViewModel$$inlined$createViewModel$lambda$1(this));
        hVar.j().a(ba(), new c(this));
        hVar.k().a(ba(), new d(this));
        return hVar;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        C0448o a2 = C0448o.a(layoutInflater, viewGroup, false);
        g gVar = this.ya;
        if (gVar != null) {
            a2.a(53, (Object) gVar.b());
            a2.a(12, (Object) true);
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

    public void c(View view) {
        j.b(view, "view");
        super.c(view);
        ((RTLImageView) e(c.c.a.e.reviewToolbarBackButton)).setOnClickListener(new a(this));
        FloatingActionButton floatingActionButton = (FloatingActionButton) e(c.c.a.e.reviewFloatingButton);
        j.a((Object) floatingActionButton, "reviewFloatingButton");
        floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(b.i.b.a.a(Ha(), (int) R.color.video_details_primary_color)));
        ((FloatingActionButton) e(c.c.a.e.reviewFloatingButton)).setOnClickListener(new b(this));
        RecyclerView _a = _a();
        _a.setClipToPadding(false);
        _a.setPadding(_a().getLeft(), _a().getTop(), _a().getRight(), (int) _a.getResources().getDimension(R.dimen.bottom_padding));
    }

    public final void a(View view, ReviewItem reviewItem) {
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        View inflate = d.c(Ha).inflate(R.layout.popup_report, null);
        j.a((Object) inflate, "popupView");
        PopupWindow a2 = c.c.a.i.f.a(inflate, view);
        a2.showAsDropDown(view, 0, view.getHeight() * -1);
        inflate.findViewById(R.id.reportButton).setOnClickListener(new f(this, reviewItem, a2));
    }

    public void a(int i2, int i3, Intent intent) {
        super.a(i2, i3, intent);
        ((h) cb()).a(i2, i3, intent);
    }
}
