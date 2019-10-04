package com.farsitel.bazaar.ui.cinema.episode;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import b.r.E;
import b.r.G;
import c.c.a.d.b.h;
import c.c.a.l.f;
import c.c.a.n.c.d.a.a;
import c.c.a.n.j.b.c.b;
import c.c.a.n.j.d.l;
import c.c.a.n.j.d.m;
import c.c.a.n.j.d.n;
import c.c.a.n.j.d.o;
import c.c.a.n.j.d.p;
import c.c.a.n.j.d.t;
import c.c.a.n.j.h.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.PostVideoReviewButtonClick;
import com.farsitel.bazaar.analytics.model.where.EpisodeDetailsScreen;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem;
import com.farsitel.bazaar.common.model.cinema.EpisodeInfoItem;
import com.farsitel.bazaar.common.model.cinema.RetryItem;
import com.farsitel.bazaar.common.model.cinema.SeriesEpisodeSeeMoreItem;
import com.farsitel.bazaar.common.model.cinema.SeriesSeasonsItem;
import com.farsitel.bazaar.common.model.cinema.VideoAddReviewItem;
import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import com.farsitel.bazaar.common.model.cinema.VideoReviewActionItem;
import com.farsitel.bazaar.common.model.page.MovieItem;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import com.farsitel.bazaar.ui.cinema.common.viewmodel.PlayInfoType;
import com.farsitel.bazaar.ui.cinema.reviews.post.PostVideoCommentFragment;
import com.farsitel.bazaar.ui.cinema.season.SeasonPickerParams;
import com.farsitel.bazaar.ui.payment.PaymentActivity;
import com.farsitel.bazaar.widget.LoadingButton;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.HashMap;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: EpisodeDetailFragment.kt */
public final class EpisodeDetailFragment extends a<RecyclerData, SeasonPickerParams, t> {
    public static final /* synthetic */ i[] Ba;
    public int Ca = R.layout.fragment_videodetail;
    public final c Da = d.a(new EpisodeDetailFragment$shareMessage$2(this));
    public boolean Ea = true;
    public Long Fa = -1L;
    public b Ga;
    public o Ha;
    public HashMap Ia;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(EpisodeDetailFragment.class), "shareMessage", "getShareMessage()Ljava/lang/String;");
        k.a((PropertyReference1) propertyReference1Impl);
        Ba = new i[]{propertyReference1Impl};
    }

    public static final /* synthetic */ o a(EpisodeDetailFragment episodeDetailFragment) {
        o oVar = episodeDetailFragment.Ha;
        if (oVar != null) {
            return oVar;
        }
        j.c("episodeDetailArgs");
        throw null;
    }

    public static final /* synthetic */ b b(EpisodeDetailFragment episodeDetailFragment) {
        b bVar = episodeDetailFragment.Ga;
        if (bVar != null) {
            return bVar;
        }
        j.c("playInfoViewModel");
        throw null;
    }

    public static final /* synthetic */ t e(EpisodeDetailFragment episodeDetailFragment) {
        return (t) episodeDetailFragment.cb();
    }

    public final void Ab() {
        new e().a(D(), (String) null);
    }

    public final n Bb() {
        return new n(this);
    }

    public void La() {
        HashMap hashMap = this.Ia;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public int Ya() {
        return this.Ca;
    }

    public View e(int i2) {
        if (this.Ia == null) {
            this.Ia = new HashMap();
        }
        View view = (View) this.Ia.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Ia.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public boolean hb() {
        return this.Ea;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public String qb() {
        c cVar = this.Da;
        i iVar = Ba[0];
        return (String) cVar.getValue();
    }

    public final c.c.a.n.j.d.b sb() {
        return new c.c.a.n.j.d.b(this);
    }

    public final c.c.a.n.j.d.c tb() {
        return new c.c.a.n.j.d.c(this);
    }

    public final void ub() {
        int n = ((t) cb()).n();
        if (n >= 0) {
            RecyclerView.a adapter = _a().getAdapter();
            if (adapter != null) {
                adapter.c(n);
            }
        }
    }

    public final void vb() {
        c.c.a.i.c.a(b.w.b.b.a(this), c.c.a.d.f4738a.m());
    }

    public final c.c.a.n.j.d.k wb() {
        return new c.c.a.n.j.d.k(this);
    }

    public final void xb() {
        o oVar = this.Ha;
        if (oVar != null) {
            String a2 = oVar.a();
            o oVar2 = this.Ha;
            if (oVar2 != null) {
                c.c.a.n.c.a.b.a(this, new PostVideoReviewButtonClick(a2, oVar2.b()), null, null, 6, null);
                PostVideoCommentFragment.Fa.a(new c.c.a.n.j.g.a.a(Za().getReferrer(), Za().a(), f((int) R.string.yourCommentOnApplication))).a(D(), "postVideoReview");
                return;
            }
            j.c("episodeDetailArgs");
            throw null;
        }
        j.c("episodeDetailArgs");
        throw null;
    }

    public final void yb() {
        c.c.a.i.c.a(b.w.b.b.a(this), p.f6538a.a(Za().getReferrer(), Za().a(), f((int) R.string.reviews_title)));
    }

    public final m zb() {
        return new m(this);
    }

    public EpisodeDetailsScreen Sa() {
        o oVar = this.Ha;
        if (oVar != null) {
            return new EpisodeDetailsScreen(oVar.a(), this.Fa);
        }
        j.c("episodeDetailArgs");
        throw null;
    }

    public c.c.a.n.j.b.a.a Ua() {
        c.c.a.n.j.b.a.a aVar = new c.c.a.n.j.b.a.a(wb(), Bb(), zb(), sb(), null, tb());
        return aVar;
    }

    public SeasonPickerParams Za() {
        o oVar = this.Ha;
        if (oVar != null) {
            String a2 = oVar.a();
            o oVar2 = this.Ha;
            if (oVar2 != null) {
                int c2 = oVar2.c();
                o oVar3 = this.Ha;
                if (oVar3 != null) {
                    return new SeasonPickerParams(a2, c2, oVar3.b());
                }
                j.c("episodeDetailArgs");
                throw null;
            }
            j.c("episodeDetailArgs");
            throw null;
        }
        j.c("episodeDetailArgs");
        throw null;
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        E a2 = G.a((Fragment) this, Ra()).a(b.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        b bVar = (b) a2;
        h.a(this, bVar.e(), new EpisodeDetailFragment$onActivityCreated$$inlined$createViewModel$lambda$1(this));
        this.Ga = bVar;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        o.a aVar = o.f6534a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.Ha = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public final void d(ErrorModel errorModel) {
        ((t) cb()).x();
        if (errorModel != null && errorModel.getMessage() != null) {
            c.c.a.d.d.c Qa = Qa();
            Context Ha2 = Ha();
            j.a((Object) Ha2, "requireContext()");
            Qa.a(c.c.a.d.b.d.b(Ha2, errorModel));
            c.c.a.c.c.a.f4699b.a((Throwable) errorModel);
        }
    }

    public final ToolbarInfoModel f(int i2) {
        EpisodeInfoItem b2 = t.b((t) cb(), null, 1, null);
        if (b2 != null) {
            CinemaScreenshotItem cover = b2.getCover();
            if (cover != null) {
                String thumbnailUrl = cover.getThumbnailUrl();
                String name = b2.getName();
                String b3 = b(i2);
                j.a((Object) b3, "getString(toolbarTitleResourceId)");
                return new ToolbarInfoModel(thumbnailUrl, name, b3);
            }
            j.a();
            throw null;
        }
        j.a();
        throw null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x00af  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c.c.a.n.j.d.t jb() {
        /*
            r6 = this;
            b.r.F$b r0 = r6.Ra()
            b.r.F r0 = b.r.G.a((androidx.fragment.app.Fragment) r6, (b.r.F.b) r0)
            java.lang.Class<c.c.a.n.j.d.t> r1 = c.c.a.n.j.d.t.class
            b.r.E r0 = r0.a(r1)
            java.lang.String r1 = "ViewModelProviders.of(th…, factory)[T::class.java]"
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r1)
            c.c.a.n.j.d.t r0 = (c.c.a.n.j.d.t) r0
            c.c.a.n.j.d.o r1 = r6.Ha
            r2 = 0
            java.lang.String r3 = "episodeDetailArgs"
            if (r1 == 0) goto L_0x00b3
            int r1 = r1.c()
            r0.c((int) r1)
            r1 = 1
            com.farsitel.bazaar.common.model.cinema.CinemaActionsItem r1 = c.c.a.n.j.d.t.a(r0, r2, r1, r2)
            if (r1 == 0) goto L_0x003a
            java.lang.Integer r1 = r1.getPrice()
            if (r1 == 0) goto L_0x003a
            int r1 = r1.intValue()
            long r4 = (long) r1
            java.lang.Long r1 = java.lang.Long.valueOf(r4)
            goto L_0x003b
        L_0x003a:
            r1 = r2
        L_0x003b:
            r6.Fa = r1
            c.c.a.n.j.d.o r1 = r6.Ha
            if (r1 == 0) goto L_0x00af
            java.lang.String r1 = r1.a()
            r0.d((java.lang.String) r1)
            androidx.lifecycle.LiveData r1 = r0.g()
            com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1 r2 = new com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1
            r2.<init>(r0, r6)
            c.c.a.d.b.h.a(r6, r1, r2)
            r6.a((c.c.a.n.j.d.t) r0)
            androidx.lifecycle.LiveData r1 = r0.w()
            b.r.k r2 = r6.ba()
            c.c.a.n.j.d.f r3 = new c.c.a.n.j.d.f
            r3.<init>(r0, r6)
            r1.a(r2, r3)
            androidx.lifecycle.LiveData r1 = r0.p()
            b.r.k r2 = r6.ba()
            c.c.a.n.j.d.g r3 = new c.c.a.n.j.d.g
            r3.<init>(r6)
            r1.a(r2, r3)
            b.r.r r1 = r0.s()
            b.r.k r2 = r6.ba()
            c.c.a.n.j.d.h r3 = new c.c.a.n.j.d.h
            r3.<init>(r6)
            r1.a(r2, r3)
            b.r.r r1 = r0.m()
            b.r.k r2 = r6.ba()
            c.c.a.n.j.d.j r3 = new c.c.a.n.j.d.j
            r3.<init>(r0)
            r1.a(r2, r3)
            b.r.t r1 = r0.r()
            b.r.k r2 = r6.ba()
            c.c.a.n.j.d.i r3 = new c.c.a.n.j.d.i
            r3.<init>(r6)
            r1.a(r2, r3)
            com.farsitel.bazaar.common.model.ui.EntityState r1 = r0.l()
            r6.a((com.farsitel.bazaar.common.model.ui.EntityState) r1)
            return r0
        L_0x00af:
            h.f.b.j.c(r3)
            throw r2
        L_0x00b3:
            h.f.b.j.c(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailFragment.jb():c.c.a.n.j.d.t");
    }

    public final void c(Resource<VideoPlayInfoModel> resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
                a(resource.a());
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                d(resource.c());
            } else {
                c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
                aVar.a((Throwable) new IllegalStateException("Invalid state: " + resource.d() + " in Video Play."));
            }
        }
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        a(new l(this));
        super.a(view, bundle);
        LoadingButton loadingButton = (LoadingButton) e(c.c.a.e.playFloatingButton);
        j.a((Object) loadingButton, "playFloatingButton");
        c.c.a.d.b.l.a(loadingButton);
    }

    public void a(int i2, int i3, Intent intent) {
        super.a(i2, i3, intent);
        ((t) cb()).a(i2, i3, intent);
    }

    public final void a(t tVar) {
        tVar.q().a(ba(), new e(this, tVar));
    }

    public final void a(EntityState entityState) {
        int i2 = c.c.a.n.j.d.a.f6518a[entityState.ordinal()];
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            ((AppCompatImageView) e(c.c.a.e.downloadedVideoToolbarIcon)).setOnClickListener(new d(this));
            AppCompatImageView appCompatImageView = (AppCompatImageView) e(c.c.a.e.downloadedVideoToolbarIcon);
            j.a((Object) appCompatImageView, "downloadedVideoToolbarIcon");
            c.c.a.d.b.l.c(appCompatImageView);
            return;
        }
        AppCompatImageView appCompatImageView2 = (AppCompatImageView) e(c.c.a.e.downloadedVideoToolbarIcon);
        j.a((Object) appCompatImageView2, "downloadedVideoToolbarIcon");
        c.c.a.d.b.l.a(appCompatImageView2);
    }

    public final void a(VideoPlayInfoModel videoPlayInfoModel) {
        Uri uri;
        ((t) cb()).x();
        if (videoPlayInfoModel != null) {
            VideoPlayerActivity.a aVar = VideoPlayerActivity.u;
            String entityId = videoPlayInfoModel.getEntityId();
            Uri parse = Uri.parse(videoPlayInfoModel.getVideoUrl());
            j.a((Object) parse, "Uri.parse(this)");
            String waterMarkUrl = videoPlayInfoModel.getWaterMarkUrl();
            if (waterMarkUrl != null) {
                uri = Uri.parse(waterMarkUrl);
                j.a((Object) uri, "Uri.parse(this)");
            } else {
                uri = null;
            }
            f fVar = new f(entityId, parse, uri, videoPlayInfoModel.getSubtitles(), videoPlayInfoModel.getRefreshData(), videoPlayInfoModel.getReferrer());
            aVar.a((Fragment) this, fVar);
        }
    }

    public final void a(MovieItem.EpisodeItem episodeItem) {
        if (episodeItem.getCanBePlayed()) {
            b bVar = this.Ga;
            if (bVar != null) {
                bVar.a(((t) cb()).a(episodeItem), PlayInfoType.EPISODE, episodeItem.getReferrer());
                ((t) cb()).a(episodeItem.getEpisodeId());
                return;
            }
            j.c("playInfoViewModel");
            throw null;
        }
        PaymentActivity.w.b(this, episodeItem.getEpisodeId(), episodeItem.getName());
    }

    public final void a(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        if (recyclerData instanceof SeriesSeasonsItem) {
            Ab();
        } else if (recyclerData instanceof SeriesEpisodeSeeMoreItem) {
            Context E = E();
            SeriesEpisodeSeeMoreItem seriesEpisodeSeeMoreItem = (SeriesEpisodeSeeMoreItem) recyclerData;
            Uri parse = Uri.parse(seriesEpisodeSeeMoreItem.getSlug());
            j.a((Object) parse, "Uri.parse(this)");
            c.c.a.b.f.a(E, parse, seriesEpisodeSeeMoreItem.getReferrer());
        } else if (recyclerData instanceof RetryItem) {
            t tVar = (t) cb();
            o oVar = this.Ha;
            if (oVar != null) {
                tVar.c(oVar.a());
            } else {
                j.c("episodeDetailArgs");
                throw null;
            }
        } else if (recyclerData instanceof ReviewItem) {
            yb();
        } else if (recyclerData instanceof VideoAddReviewItem) {
            ((t) cb()).v();
        } else if (recyclerData instanceof VideoReviewActionItem) {
            yb();
        }
    }
}
