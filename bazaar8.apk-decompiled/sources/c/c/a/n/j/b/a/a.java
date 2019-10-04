package c.c.a.n.j.b.a;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.f.C0406bc;
import c.c.a.f.C0412da;
import c.c.a.f.C0420fa;
import c.c.a.f.C0422fc;
import c.c.a.f.C0428ha;
import c.c.a.f.C0434ja;
import c.c.a.f.C0438kb;
import c.c.a.f.C0444mb;
import c.c.a.f.Gb;
import c.c.a.f.Ob;
import c.c.a.f.Qb;
import c.c.a.f.Sb;
import c.c.a.f.Ub;
import c.c.a.f.Yb;
import c.c.a.f._b;
import c.c.a.f.hc;
import c.c.a.f.lc;
import c.c.a.f.vc;
import c.c.a.f.xc;
import c.c.a.n.c.c.a.a.a.i;
import c.c.a.n.c.d.n;
import c.c.a.n.c.d.o;
import c.c.a.n.j.b.a.d;
import c.c.a.n.j.b.b.d;
import c.c.a.n.j.b.b.e;
import c.c.a.n.j.b.b.h;
import c.c.a.n.j.b.b.l;
import c.c.a.n.j.k.a.b;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaViewItemType;
import com.farsitel.bazaar.common.model.cinema.EpisodeItemClickListener;
import com.farsitel.bazaar.common.model.cinema.VideoInfoClickListener;
import com.farsitel.bazaar.common.model.page.CommonItemType;
import h.f.b.f;
import h.f.b.j;

/* compiled from: CinemaPageDetailAdapter.kt */
public final class a extends c.c.a.n.c.d.a<RecyclerData> {

    /* renamed from: f  reason: collision with root package name */
    public final RecyclerView.o f6445f;

    /* renamed from: g  reason: collision with root package name */
    public final d.a f6446g;

    /* renamed from: h  reason: collision with root package name */
    public final VideoInfoClickListener f6447h;

    /* renamed from: i  reason: collision with root package name */
    public final o.a f6448i;

    /* renamed from: j  reason: collision with root package name */
    public final d.a f6449j;

    /* renamed from: k  reason: collision with root package name */
    public final EpisodeItemClickListener f6450k;

    /* renamed from: l  reason: collision with root package name */
    public final i f6451l;

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(d.a aVar, VideoInfoClickListener videoInfoClickListener, o.a aVar2, d.a aVar3, EpisodeItemClickListener episodeItemClickListener, i iVar, int i2, f fVar) {
        this(aVar, videoInfoClickListener, aVar2, aVar3, episodeItemClickListener, (i2 & 32) != 0 ? null : iVar);
    }

    /* renamed from: a */
    public void b(n<RecyclerData> nVar, int i2) {
        j.b(nVar, "holder");
        if (nVar instanceof h) {
            ((h) nVar).a(this.f6446g);
        } else if (nVar instanceof c.c.a.n.j.b.b.j) {
            ((c.c.a.n.j.b.b.j) nVar).a(this.f6451l);
        }
        super.b(nVar, i2);
    }

    public a(d.a aVar, VideoInfoClickListener videoInfoClickListener, o.a aVar2, d.a aVar3, EpisodeItemClickListener episodeItemClickListener, i iVar) {
        j.b(aVar, "onScreenshotImageClicked");
        j.b(videoInfoClickListener, "videoInfoClickListener");
        j.b(aVar2, "scrollableViewHolderCommunicator");
        j.b(aVar3, "crewsPersonClickListener");
        this.f6446g = aVar;
        this.f6447h = videoInfoClickListener;
        this.f6448i = aVar2;
        this.f6449j = aVar3;
        this.f6450k = episodeItemClickListener;
        this.f6451l = iVar;
        this.f6445f = new RecyclerView.o();
    }

    /* renamed from: b */
    public void c(n<RecyclerData> nVar) {
        j.b(nVar, "holder");
        if (nVar instanceof h) {
            ((h) nVar).a((d.a) null);
        } else if (nVar instanceof c.c.a.n.j.b.b.j) {
            ((c.c.a.n.j.b.b.j) nVar).a(null);
        }
        super.c(nVar);
    }

    public n<RecyclerData> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        if (i2 == CinemaViewItemType.CINEMA_INFO.ordinal()) {
            hc a2 = hc.a(from, viewGroup, false);
            j.a((Object) a2, "ItemVideoDetailVideoInfo…(inflater, parent, false)");
            return new c.c.a.n.j.b.b.a(a2, this.f6447h, this.f6445f);
        } else if (i2 == CinemaViewItemType.CREWS.ordinal()) {
            RecyclerView.o oVar = this.f6445f;
            Ob a3 = Ob.a(from, viewGroup, false);
            j.a((Object) a3, "ItemVideoDetailCrewsBind…(inflater, parent, false)");
            return new c.c.a.n.j.b.b.d(oVar, a3, this.f6449j);
        } else if (i2 == CinemaViewItemType.DESCRIPTION.ordinal()) {
            C0422fc a4 = C0422fc.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a4, "ItemVideoDetailVideoDesc…lse\n                    )");
            return new n<>(a4);
        } else if (i2 == CinemaViewItemType.LOADING_ITEM.ordinal()) {
            Ub a5 = Ub.a(from, viewGroup, false);
            j.a((Object) a5, "ItemVideoDetailProgressB…(inflater, parent, false)");
            return new n<>(a5);
        } else if (i2 == CinemaViewItemType.DIVIDER.ordinal()) {
            C0434ja a6 = C0434ja.a(from, viewGroup, false);
            j.a((Object) a6, "ItemDividerBinding.infla…(inflater, parent, false)");
            return new n<>(a6);
        } else if (i2 == CinemaViewItemType.OTHER_INFO_TITLE_ITEM.ordinal()) {
            Sb a7 = Sb.a(from, viewGroup, false);
            j.a((Object) a7, "ItemVideoDetailOtherInfo…(inflater, parent, false)");
            return new n<>(a7);
        } else if (i2 == CinemaViewItemType.OTHER_INFO_ITEM.ordinal()) {
            Qb a8 = Qb.a(from, viewGroup, false);
            j.a((Object) a8, "ItemVideoDetailOtherInfo…(inflater, parent, false)");
            return new n<>(a8);
        } else if (i2 == CinemaViewItemType.SCREEN_SHOT.ordinal()) {
            RecyclerView.o oVar2 = this.f6445f;
            lc a9 = lc.a(from, viewGroup, false);
            j.a((Object) a9, "ItemVideoDetailVideoScre…(inflater, parent, false)");
            h hVar = new h(oVar2, a9);
            hVar.a(this.f6446g);
            return hVar;
        } else if (i2 == CommonItemType.VITRIN_VIDEO.getValue() || i2 == CommonItemType.VITRIN_SERIAL.getValue()) {
            return new c.c.a.n.c.c.a.a.b.d(viewGroup, this.f6445f, null, this.f6448i);
        } else {
            if (i2 == CinemaViewItemType.SERIES_SEASON_ITEM.ordinal()) {
                Yb a10 = Yb.a(from, viewGroup, false);
                j.a((Object) a10, "ItemVideoDetailSeriesSea…(inflater, parent, false)");
                return new n<>(a10);
            } else if (i2 == CinemaViewItemType.SERIES_SINGLE_SEASON_ITEM.ordinal()) {
                _b a11 = _b.a(from, viewGroup, false);
                j.a((Object) a11, "ItemVideoDetailSeriesSin…(inflater, parent, false)");
                return new n<>(a11);
            } else if (i2 == CinemaViewItemType.SERIES_EPISODE_ITEM.ordinal()) {
                C0412da a12 = C0412da.a(from, viewGroup, false);
                j.a((Object) a12, "ItemCinemaEpisodeBinding…(inflater, parent, false)");
                return new e(a12, this.f6450k);
            } else if (i2 == CinemaViewItemType.RETRY_ITEM.ordinal()) {
                C0438kb a13 = C0438kb.a(from, viewGroup, false);
                j.a((Object) a13, "ItemRetryBinding.inflate(inflater, parent, false)");
                return new n<>(a13);
            } else if (i2 == CinemaViewItemType.SERIES_EPISODE_SEE_MORE_ITEM.ordinal()) {
                C0420fa a14 = C0420fa.a(from, viewGroup, false);
                j.a((Object) a14, "ItemCinemaEpisodeSeeMore…(inflater, parent, false)");
                return new n<>(a14);
            } else if (i2 == CinemaViewItemType.VIDEO_ACTIONS.ordinal()) {
                C0406bc a15 = C0406bc.a(from, viewGroup, false);
                j.a((Object) a15, "ItemVideoDetailVideoActi…(inflater, parent, false)");
                return new b(a15, this.f6447h);
            } else if (i2 == CommonItemType.LIST_EPISODE.getValue()) {
                C0428ha a16 = C0428ha.a(from, viewGroup, false);
                j.a((Object) a16, "ItemCinemaSeasonEpisodeB…(inflater, parent, false)");
                c.c.a.n.j.b.b.j jVar = new c.c.a.n.j.b.b.j(a16);
                jVar.a(this.f6451l);
                return jVar;
            } else if (i2 == CinemaViewItemType.REVIEW_TITLE.ordinal()) {
                xc a17 = xc.a(from, viewGroup, false);
                j.a((Object) a17, "ItemVideoReviewTitleBind…(inflater, parent, false)");
                return new n<>(a17);
            } else if (i2 == CinemaViewItemType.REVIEW_ITEM.ordinal()) {
                C0444mb a18 = C0444mb.a(from, viewGroup, false);
                j.a((Object) a18, "ItemReviewBinding.inflate(inflater, parent, false)");
                return new l(a18, null, 2, null);
            } else if (i2 == CinemaViewItemType.REVIEW_ACTION.ordinal()) {
                vc a19 = vc.a(from, viewGroup, false);
                j.a((Object) a19, "ItemVideoReviewMoreBindi…(inflater, parent, false)");
                return new n<>(a19);
            } else if (i2 == CinemaViewItemType.ADD_REVIEW.ordinal()) {
                Gb a20 = Gb.a(from, viewGroup, false);
                j.a((Object) a20, "ItemVideoAddReviewBindin…(inflater, parent, false)");
                return new n<>(a20);
            } else {
                throw new IllegalStateException("Invalid viewType = " + i2);
            }
        }
    }
}
