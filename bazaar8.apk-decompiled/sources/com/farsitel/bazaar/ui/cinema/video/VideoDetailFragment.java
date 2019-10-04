package com.farsitel.bazaar.ui.cinema.video;

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
import c.c.a.d.b.l;
import c.c.a.e;
import c.c.a.n.c.d.a.a;
import c.c.a.n.c.d.a.f;
import c.c.a.n.j.b.c.b;
import c.c.a.n.j.k.m;
import c.c.a.n.j.k.n;
import c.c.a.n.j.k.o;
import c.c.a.n.j.k.p;
import c.c.a.n.j.k.s;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.PlayVideoButtonClick;
import com.farsitel.bazaar.analytics.model.what.PostVideoReviewButtonClick;
import com.farsitel.bazaar.analytics.model.what.VideoDetailVisit;
import com.farsitel.bazaar.analytics.model.where.VideoDetailsScreen;
import com.farsitel.bazaar.common.model.PlayedVideoModel;
import com.farsitel.bazaar.common.model.PlayedVideoType;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem;
import com.farsitel.bazaar.common.model.cinema.VideoAddReviewItem;
import com.farsitel.bazaar.common.model.cinema.VideoInfoModel;
import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import com.farsitel.bazaar.common.model.cinema.VideoReviewActionItem;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;
import com.farsitel.bazaar.ui.cinema.common.viewmodel.PlayInfoType;
import com.farsitel.bazaar.ui.cinema.reviews.post.PostVideoCommentFragment;
import com.farsitel.bazaar.widget.LoadingButton;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.HashMap;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: VideoDetailFragment.kt */
public final class VideoDetailFragment extends a<RecyclerData, VideoInfoModel, s> {
    public static final /* synthetic */ i[] Ba;
    public int Ca = R.layout.fragment_videodetail;
    public c.c.a.n.j.k.a Da;
    public b Ea;
    public boolean Fa;
    public Long Ga = -1L;
    public o Ha;
    public String Ia;
    public final c Ja = d.a(new VideoDetailFragment$shareMessage$2(this));
    public HashMap Ka;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(VideoDetailFragment.class), "shareMessage", "getShareMessage()Ljava/lang/String;");
        k.a((PropertyReference1) propertyReference1Impl);
        Ba = new i[]{propertyReference1Impl};
    }

    public static final /* synthetic */ c.c.a.n.j.k.a a(VideoDetailFragment videoDetailFragment) {
        c.c.a.n.j.k.a aVar = videoDetailFragment.Da;
        if (aVar != null) {
            return aVar;
        }
        j.c("fabScrollListener");
        throw null;
    }

    public static final /* synthetic */ o d(VideoDetailFragment videoDetailFragment) {
        o oVar = videoDetailFragment.Ha;
        if (oVar != null) {
            return oVar;
        }
        j.c("videoDetailArgs");
        throw null;
    }

    public static final /* synthetic */ s e(VideoDetailFragment videoDetailFragment) {
        return (s) videoDetailFragment.cb();
    }

    public final m Ab() {
        return new m(this);
    }

    public final n Bb() {
        return new n(this);
    }

    public void La() {
        HashMap hashMap = this.Ka;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public RecyclerView.h Xa() {
        return null;
    }

    public int Ya() {
        return this.Ca;
    }

    public View e(int i2) {
        if (this.Ka == null) {
            this.Ka = new HashMap();
        }
        View view = (View) this.Ka.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Ka.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public boolean hb() {
        return this.Fa;
    }

    public void n(Bundle bundle) {
        j.b(bundle, "bundle");
        super.n(bundle);
        int i2 = bundle.getInt("totalScroll");
        c.c.a.n.j.k.a aVar = this.Da;
        if (aVar != null) {
            aVar.a(i2);
        } else {
            j.c("fabScrollListener");
            throw null;
        }
    }

    public void qa() {
        a((c.c.a.n.c.d.m) null);
        super.qa();
        La();
    }

    public String qb() {
        c cVar = this.Ja;
        i iVar = Ba[0];
        return (String) cVar.getValue();
    }

    public final c.c.a.n.j.k.c sb() {
        return new c.c.a.n.j.k.c(this);
    }

    public final void tb() {
        ((s) cb()).p().a(ba(), new f(this));
    }

    public final void ub() {
        int n = ((s) cb()).n();
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

    public final void wb() {
        PlayedVideoModel m = ((s) cb()).m();
        String entityId = m.getEntityId();
        PlayedVideoType type = m.getType();
        o oVar = this.Ha;
        if (oVar != null) {
            c.c.a.n.c.a.b.a(this, new PlayVideoButtonClick(entityId, type, oVar.a()), null, null, 6, null);
            b bVar = this.Ea;
            if (bVar != null) {
                PlayInfoType playInfoType = PlayInfoType.VIDEO;
                o oVar2 = this.Ha;
                if (oVar2 != null) {
                    bVar.a(m, playInfoType, oVar2.a());
                    ((s) cb()).q();
                    return;
                }
                j.c("videoDetailArgs");
                throw null;
            }
            j.c("playInfoViewModel");
            throw null;
        }
        j.c("videoDetailArgs");
        throw null;
    }

    public final c.c.a.n.j.k.k xb() {
        return new c.c.a.n.j.k.k(this);
    }

    public final void yb() {
        o oVar = this.Ha;
        if (oVar != null) {
            String b2 = oVar.b();
            o oVar2 = this.Ha;
            if (oVar2 != null) {
                c.c.a.n.c.a.b.a(this, new PostVideoReviewButtonClick(b2, oVar2.a()), null, null, 6, null);
                PostVideoCommentFragment.Fa.a(new c.c.a.n.j.g.a.a(Za().getReferrer(), Za().getVideoId(), f((int) R.string.yourCommentOnApplication))).a(D(), "postVideoReview");
                return;
            }
            j.c("videoDetailArgs");
            throw null;
        }
        j.c("videoDetailArgs");
        throw null;
    }

    public final void zb() {
        c.c.a.i.c.a(b.w.b.b.a(this), p.f6637a.a(Za().getReferrer(), Za().getVideoId(), f((int) R.string.reviews_title)));
    }

    public VideoDetailsScreen Sa() {
        o oVar = this.Ha;
        if (oVar != null) {
            String b2 = oVar.b();
            Long l2 = this.Ga;
            return new VideoDetailsScreen(b2, l2 != null ? l2.longValue() : -1);
        }
        j.c("videoDetailArgs");
        throw null;
    }

    public c.c.a.n.j.b.a.a Ua() {
        c.c.a.n.j.b.a.a aVar = new c.c.a.n.j.b.a.a(xb(), Bb(), Ab(), sb(), null, null, 32, null);
        return aVar;
    }

    public VideoInfoModel Za() {
        o oVar = this.Ha;
        if (oVar != null) {
            String b2 = oVar.b();
            o oVar2 = this.Ha;
            if (oVar2 != null) {
                return new VideoInfoModel(b2, oVar2.a());
            }
            j.c("videoDetailArgs");
            throw null;
        }
        j.c("videoDetailArgs");
        throw null;
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        E a2 = G.a((Fragment) this, Ra()).a(b.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        b bVar = (b) a2;
        h.a(this, bVar.e(), new VideoDetailFragment$onActivityCreated$$inlined$createViewModel$lambda$1(this));
        this.Ea = bVar;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        o.a aVar = o.f6634a;
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
        ((s) cb()).t();
        ((LoadingButton) e(e.playFloatingButton)).setShowLoading(false);
        if (errorModel != null && errorModel.getMessage() != null) {
            c.c.a.d.d.c Qa = Qa();
            Context Ha2 = Ha();
            j.a((Object) Ha2, "requireContext()");
            Qa.a(c.c.a.d.b.d.b(Ha2, errorModel));
            c.c.a.c.c.a.f4699b.a((Throwable) errorModel);
        }
    }

    public final ToolbarInfoModel f(int i2) {
        CinemaInfoItem b2 = s.b((s) cb(), null, 1, null);
        CinemaScreenshotItem cover = b2 != null ? b2.getCover() : null;
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

    public s jb() {
        E a2 = G.a((Fragment) this, Ra()).a(s.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        s sVar = (s) a2;
        this.Ia = Za().getVideoId();
        h.a(this, sVar.g(), new VideoDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1(sVar, this));
        sVar.s().a(ba(), new h(sVar, this));
        sVar.l().a(ba(), new i(this));
        sVar.k().a(ba(), new j(this));
        return sVar;
    }

    public void c(View view) {
        j.b(view, "view");
        super.c(view);
        f rb = rb();
        int a2 = rb != null ? rb.a() : 0;
        Context Ha2 = Ha();
        j.a((Object) Ha2, "requireContext()");
        LoadingButton loadingButton = (LoadingButton) e(e.playFloatingButton);
        j.a((Object) loadingButton, "playFloatingButton");
        this.Da = new c.c.a.n.j.k.a(Ha2, loadingButton, a2);
        RecyclerView _a = _a();
        c.c.a.n.j.k.a aVar = this.Da;
        if (aVar != null) {
            _a.a((RecyclerView.n) aVar);
            ((LoadingButton) e(e.playFloatingButton)).setOnClickListener(new e(this));
            LoadingButton loadingButton2 = (LoadingButton) e(e.playFloatingButton);
            j.a((Object) loadingButton2, "playFloatingButton");
            l.a(loadingButton2);
            return;
        }
        j.c("fabScrollListener");
        throw null;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        a(new c.c.a.n.j.k.l(this));
        super.a(view, bundle);
        o oVar = this.Ha;
        if (oVar != null) {
            c.c.a.n.c.a.b.a(this, new VideoDetailVisit(oVar.a()), null, null, 6, null);
            return;
        }
        j.c("videoDetailArgs");
        throw null;
    }

    public void a(int i2, int i3, Intent intent) {
        super.a(i2, i3, intent);
        ((s) cb()).a(i2, i3, intent);
    }

    public final void a(EntityState entityState) {
        int i2 = c.c.a.n.j.k.b.f6620a[entityState.ordinal()];
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            ((AppCompatImageView) e(e.downloadedVideoToolbarIcon)).setOnClickListener(new d(this));
            AppCompatImageView appCompatImageView = (AppCompatImageView) e(e.downloadedVideoToolbarIcon);
            j.a((Object) appCompatImageView, "downloadedVideoToolbarIcon");
            l.c(appCompatImageView);
            return;
        }
        AppCompatImageView appCompatImageView2 = (AppCompatImageView) e(e.downloadedVideoToolbarIcon);
        j.a((Object) appCompatImageView2, "downloadedVideoToolbarIcon");
        l.a(appCompatImageView2);
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
                aVar.a((Throwable) new IllegalStateException("Invalid state: " + resource.d() + " for play"));
            }
        }
    }

    public final void a(VideoPlayInfoModel videoPlayInfoModel) {
        Uri uri;
        ((s) cb()).t();
        ((LoadingButton) e(e.playFloatingButton)).setShowLoading(false);
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
            c.c.a.l.f fVar = new c.c.a.l.f(entityId, parse, uri, videoPlayInfoModel.getSubtitles(), videoPlayInfoModel.getRefreshData(), videoPlayInfoModel.getReferrer());
            aVar.a((Fragment) this, fVar);
        }
    }

    public final void a(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        if (recyclerData instanceof ReviewItem) {
            zb();
        } else if (recyclerData instanceof VideoReviewActionItem) {
            zb();
        } else if (recyclerData instanceof VideoAddReviewItem) {
            ((s) cb()).r();
        }
    }
}
