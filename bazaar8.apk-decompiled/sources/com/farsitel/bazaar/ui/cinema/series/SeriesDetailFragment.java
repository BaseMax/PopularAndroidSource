package com.farsitel.bazaar.ui.cinema.series;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import b.r.E;
import b.r.G;
import c.c.a.n.c.d.a.a;
import c.c.a.n.j.b.c.b;
import c.c.a.n.j.j.e;
import c.c.a.n.j.j.f;
import c.c.a.n.j.j.g;
import c.c.a.n.j.j.h;
import c.c.a.n.j.j.i;
import c.c.a.n.j.j.l;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.LoadEpisodesEvent;
import com.farsitel.bazaar.analytics.model.what.PurchaseEpisodeButtonClick;
import com.farsitel.bazaar.analytics.model.where.SeriesDetailsScreen;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaViewItemType;
import com.farsitel.bazaar.common.model.cinema.EpisodeModel;
import com.farsitel.bazaar.common.model.cinema.SeriesEpisodeSeeMoreItem;
import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.farsitel.bazaar.ui.cinema.common.viewmodel.PlayInfoType;
import com.farsitel.bazaar.ui.cinema.season.SeasonPickerParams;
import com.farsitel.bazaar.ui.payment.PaymentActivity;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.HashMap;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: SeriesDetailFragment.kt */
public final class SeriesDetailFragment extends a<RecyclerData, SeasonPickerParams, l> {
    public static final /* synthetic */ i[] Ba;
    public int Ca = R.layout.fragment_seriesdetail;
    public c.c.a.n.j.j.i Da;
    public b Ea;
    public boolean Fa;
    public final c Ga = d.a(new SeriesDetailFragment$shareMessage$2(this));
    public HashMap Ha;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(SeriesDetailFragment.class), "shareMessage", "getShareMessage()Ljava/lang/String;");
        k.a((PropertyReference1) propertyReference1Impl);
        Ba = new i[]{propertyReference1Impl};
    }

    public static final /* synthetic */ c.c.a.n.j.j.i b(SeriesDetailFragment seriesDetailFragment) {
        c.c.a.n.j.j.i iVar = seriesDetailFragment.Da;
        if (iVar != null) {
            return iVar;
        }
        j.c("seriesDetailArgs");
        throw null;
    }

    public static final /* synthetic */ l d(SeriesDetailFragment seriesDetailFragment) {
        return (l) seriesDetailFragment.cb();
    }

    public void La() {
        HashMap hashMap = this.Ha;
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
        if (this.Ha == null) {
            this.Ha = new HashMap();
        }
        View view = (View) this.Ha.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Ha.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public boolean hb() {
        return this.Fa;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public String qb() {
        c cVar = this.Ga;
        i iVar = Ba[0];
        return (String) cVar.getValue();
    }

    public final c.c.a.n.j.j.a sb() {
        return new c.c.a.n.j.j.a(this);
    }

    public final c.c.a.n.j.j.b tb() {
        return new c.c.a.n.j.j.b(this);
    }

    public final e ub() {
        return new e(this);
    }

    public final g vb() {
        return new g(this);
    }

    public final void wb() {
        new c.c.a.n.j.h.e().a(D(), (String) null);
    }

    public final h xb() {
        return new h(this);
    }

    public SeriesDetailsScreen Sa() {
        c.c.a.n.j.j.i iVar = this.Da;
        if (iVar != null) {
            return new SeriesDetailsScreen(iVar.c());
        }
        j.c("seriesDetailArgs");
        throw null;
    }

    public c.c.a.n.j.b.a.a Ua() {
        c.c.a.n.j.b.a.a aVar = new c.c.a.n.j.b.a.a(ub(), xb(), vb(), sb(), tb(), null, 32, null);
        return aVar;
    }

    public SeasonPickerParams Za() {
        c.c.a.n.j.j.i iVar = this.Da;
        if (iVar != null) {
            String c2 = iVar.c();
            c.c.a.n.j.j.i iVar2 = this.Da;
            if (iVar2 != null) {
                int b2 = iVar2.b();
                c.c.a.n.j.j.i iVar3 = this.Da;
                if (iVar3 != null) {
                    return new SeasonPickerParams(c2, b2, iVar3.a());
                }
                j.c("seriesDetailArgs");
                throw null;
            }
            j.c("seriesDetailArgs");
            throw null;
        }
        j.c("seriesDetailArgs");
        throw null;
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        E a2 = G.a((Fragment) this, Ra()).a(b.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        b bVar = (b) a2;
        c.c.a.d.b.h.a(this, bVar.e(), new SeriesDetailFragment$onActivityCreated$$inlined$createViewModel$lambda$1(this));
        this.Ea = bVar;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        i.a aVar = c.c.a.n.j.j.i.f6602a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.Da = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public final void d(ErrorModel errorModel) {
        ((l) cb()).o();
        if (errorModel != null && errorModel.getMessage() != null) {
            c.c.a.d.d.c Qa = Qa();
            Context Ha2 = Ha();
            j.a((Object) Ha2, "requireContext()");
            Qa.a(c.c.a.d.b.d.b(Ha2, errorModel));
            c.c.a.c.c.a.f4699b.b(errorModel);
        }
    }

    public l jb() {
        E a2 = G.a((Fragment) this, Ra()).a(l.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        l lVar = (l) a2;
        c.c.a.n.j.j.i iVar = this.Da;
        if (iVar != null) {
            lVar.c(iVar.b());
            c.c.a.d.b.h.a(this, lVar.g(), new SeriesDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1(this));
            lVar.m().a(ba(), new c(this));
            lVar.l().a(ba(), new d(lVar));
            return lVar;
        }
        j.c("seriesDetailArgs");
        throw null;
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
                aVar.a(new Throwable("invalid state " + resource.d() + " in play video"));
            }
        }
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        a(new f(this));
        super.a(view, bundle);
    }

    public final void a(VideoPlayInfoModel videoPlayInfoModel) {
        Uri uri;
        if (videoPlayInfoModel != null) {
            ((l) cb()).o();
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
        int viewType = recyclerData.getViewType();
        if (viewType == CinemaViewItemType.SERIES_SEASON_ITEM.ordinal()) {
            wb();
        } else if (viewType == CinemaViewItemType.SERIES_EPISODE_SEE_MORE_ITEM.ordinal()) {
            if (recyclerData instanceof SeriesEpisodeSeeMoreItem) {
                Context E = E();
                SeriesEpisodeSeeMoreItem seriesEpisodeSeeMoreItem = (SeriesEpisodeSeeMoreItem) recyclerData;
                Uri parse = Uri.parse(seriesEpisodeSeeMoreItem.getSlug());
                j.a((Object) parse, "Uri.parse(this)");
                c.c.a.b.f.a(E, parse, (String) null, 4, (Object) null);
                c.c.a.n.j.j.i iVar = this.Da;
                if (iVar != null) {
                    int b2 = iVar.b();
                    String referrer = seriesEpisodeSeeMoreItem.getReferrer();
                    if (referrer == null) {
                        referrer = c.c.a.c.d.e.a();
                    }
                    c.c.a.n.c.a.b.a(this, new LoadEpisodesEvent(b2, referrer), null, null, 6, null);
                    return;
                }
                j.c("seriesDetailArgs");
                throw null;
            }
            throw new IllegalStateException("Check failed.");
        } else if (viewType == CinemaViewItemType.RETRY_ITEM.ordinal()) {
            l lVar = (l) cb();
            c.c.a.n.j.j.i iVar2 = this.Da;
            if (iVar2 != null) {
                lVar.b(iVar2.c());
            } else {
                j.c("seriesDetailArgs");
                throw null;
            }
        }
    }

    public final void a(EpisodeModel episodeModel) {
        if (episodeModel.isPlayable()) {
            b bVar = this.Ea;
            if (bVar != null) {
                bVar.a(((l) cb()).a(episodeModel), PlayInfoType.EPISODE, episodeModel.getReferrer());
                ((l) cb()).a(episodeModel.getIdentifier());
                return;
            }
            j.c("playInfoViewModel");
            throw null;
        }
        String entityId = episodeModel.getEntityId();
        String fullName = episodeModel.getFullName();
        if (fullName == null) {
            fullName = "";
        }
        String str = fullName;
        Integer episodeIndex = episodeModel.getEpisodeIndex();
        PurchaseEpisodeButtonClick purchaseEpisodeButtonClick = new PurchaseEpisodeButtonClick(entityId, str, episodeIndex != null ? episodeIndex.intValue() : -1, episodeModel.getPrice(), episodeModel.getReferrer());
        c.c.a.n.c.a.b.a(this, purchaseEpisodeButtonClick, null, null, 6, null);
        PaymentActivity.w.b(this, episodeModel.getIdentifier(), episodeModel.getFullName());
    }
}
