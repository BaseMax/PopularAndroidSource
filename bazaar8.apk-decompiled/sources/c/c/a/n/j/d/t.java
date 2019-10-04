package c.c.a.n.j.d;

import android.content.Context;
import android.content.Intent;
import androidx.lifecycle.LiveData;
import b.r.r;
import c.c.a.b.d.m;
import c.c.a.b.d.o;
import c.c.a.c.h.g;
import c.c.a.d.c.b;
import c.c.a.e.d.h.e.a.c;
import c.c.a.n.j.h.a;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.PlayedVideoModel;
import com.farsitel.bazaar.common.model.PlayedVideoType;
import com.farsitel.bazaar.common.model.PurchasableEntity;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem;
import com.farsitel.bazaar.common.model.cinema.CinemaViewItemType;
import com.farsitel.bazaar.common.model.cinema.EpisodeInfoItem;
import com.farsitel.bazaar.common.model.cinema.SeriesSeason;
import com.farsitel.bazaar.common.model.cinema.SeriesSeasonsItem;
import com.farsitel.bazaar.common.model.cinema.VideoDividerItem;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.MovieItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ReviewState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.ui.cinema.season.SeasonPickerParams;
import h.a.l;
import h.a.u;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: EpisodeDetailViewModel.kt */
public final class t extends a<RecyclerData, SeasonPickerParams> {

    /* renamed from: j  reason: collision with root package name */
    public static final /* synthetic */ i[] f6548j;
    public final Context A;
    public final c.c.a.e.d.h.d.a.a B;
    public final c C;
    public final o D;
    public final m E;
    public final b F;

    /* renamed from: k  reason: collision with root package name */
    public final b.r.t<DownloaderProgressInfo> f6549k = new b.r.t<>();

    /* renamed from: l  reason: collision with root package name */
    public final h.c f6550l = d.a(new EpisodeDetailViewModel$episodePurchasedLiveData$2(this));
    public final b.r.t<Integer> m = new g();
    public final r<Set<String>> n = new r<>();
    public final r<EntityState> o = new r<>();
    public final r<Integer> p = new r<>();
    public String q;
    public SeasonPickerParams r;
    public String s;
    public List<? extends RecyclerData> t = l.a();
    public HashSet<String> u = new HashSet<>();
    public C1125ra v;
    public Integer w;
    public int x;
    public int y = i();
    public int z;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(t.class), "episodePurchasedLiveData", "getEpisodePurchasedLiveData()Landroidx/lifecycle/LiveData;");
        k.a((PropertyReference1) propertyReference1Impl);
        f6548j = new i[]{propertyReference1Impl};
    }

    public t(Context context, c.c.a.e.d.h.d.a.a aVar, c cVar, o oVar, m mVar, b bVar) {
        j.b(context, "context");
        j.b(aVar, "episodeDetailRepository");
        j.b(cVar, "videoDownloadedRepository");
        j.b(oVar, "videoManager");
        j.b(mVar, "paymentManager");
        j.b(bVar, "accountManager");
        this.A = context;
        this.B = aVar;
        this.C = cVar;
        this.D = oVar;
        this.E = mVar;
        this.F = bVar;
        this.n.a(this.E.a(), new q(this));
    }

    public int h() {
        return this.z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0052  */
    /* JADX WARNING: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int j() {
        /*
            r5 = this;
            java.lang.Integer r0 = r5.w
            if (r0 == 0) goto L_0x0009
            int r0 = r0.intValue()
            goto L_0x000b
        L_0x0009:
            int r0 = r5.x
        L_0x000b:
            java.util.List r1 = r5.k()
            int r2 = r1.size()
            java.util.ListIterator r1 = r1.listIterator(r2)
        L_0x0017:
            boolean r2 = r1.hasPrevious()
            r3 = 0
            if (r2 == 0) goto L_0x0031
            java.lang.Object r2 = r1.previous()
            r4 = r2
            com.farsitel.bazaar.common.model.cinema.SeriesSeason r4 = (com.farsitel.bazaar.common.model.cinema.SeriesSeason) r4
            int r4 = r4.getIndex()
            if (r4 != r0) goto L_0x002d
            r4 = 1
            goto L_0x002e
        L_0x002d:
            r4 = 0
        L_0x002e:
            if (r4 == 0) goto L_0x0017
            goto L_0x0032
        L_0x0031:
            r2 = r3
        L_0x0032:
            com.farsitel.bazaar.common.model.cinema.SeriesSeason r2 = (com.farsitel.bazaar.common.model.cinema.SeriesSeason) r2
            if (r2 == 0) goto L_0x003f
            int r1 = r2.getIndex()
        L_0x003a:
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)
            goto L_0x0050
        L_0x003f:
            java.util.List r1 = r5.k()
            java.lang.Object r1 = h.a.u.g(r1)
            com.farsitel.bazaar.common.model.cinema.SeriesSeason r1 = (com.farsitel.bazaar.common.model.cinema.SeriesSeason) r1
            if (r1 == 0) goto L_0x0050
            int r1 = r1.getIndex()
            goto L_0x003a
        L_0x0050:
            if (r3 == 0) goto L_0x0056
            int r0 = r3.intValue()
        L_0x0056:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.j.d.t.j():int");
    }

    public List<SeriesSeason> k() {
        List<T> a2 = u.a(this.t);
        SeriesSeasonsItem a3 = a(e((List<? extends RecyclerData>) a2), (List<RecyclerData>) a2);
        if (a3 != null) {
            List<SeriesSeason> items = a3.getItems();
            if (items != null) {
                return items;
            }
        }
        return l.a();
    }

    public final EntityState l() {
        o oVar = this.D;
        String str = this.s;
        if (str != null) {
            return oVar.l(str);
        }
        j.c("episodeId");
        throw null;
    }

    public final r<Set<String>> m() {
        return this.n;
    }

    public final int n() {
        int i2 = 0;
        for (RecyclerData recyclerData : this.t) {
            if (recyclerData instanceof CinemaActionsItem) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public final String o() {
        String str = this.s;
        if (str != null) {
            return str;
        }
        j.c("episodeId");
        throw null;
    }

    public final LiveData<Boolean> p() {
        h.c cVar = this.f6550l;
        i iVar = f6548j[0];
        return (LiveData) cVar.getValue();
    }

    public final r<EntityState> q() {
        return this.o;
    }

    public final b.r.t<Integer> r() {
        return this.m;
    }

    public final r<Integer> s() {
        return this.p;
    }

    public final SeasonPickerParams t() {
        SeasonPickerParams seasonPickerParams = this.r;
        if (seasonPickerParams != null) {
            return seasonPickerParams;
        }
        j.c("params");
        throw null;
    }

    public final boolean u() {
        return h() == 0;
    }

    public final void v() {
        if (this.F.f()) {
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
        this.m.b(1010);
    }

    public final LiveData<DownloaderProgressInfo> w() {
        return this.f6549k;
    }

    public final void x() {
        Resource e2 = e();
        if (e2 != null) {
            List list = (List) e2.a();
            if (list != null) {
                int i2 = 0;
                for (Object next : list) {
                    int i3 = i2 + 1;
                    if (i2 >= 0) {
                        RecyclerData recyclerData = (RecyclerData) next;
                        if (recyclerData instanceof ListItem.Episode) {
                            ListItem.Episode episode = (ListItem.Episode) recyclerData;
                            if (episode.getEpisode().getShowLoadingButton()) {
                                episode.getEpisode().setShowLoadingButton(false);
                                this.p.b(Integer.valueOf(i2));
                                i2 = i3;
                            }
                        }
                        if (recyclerData instanceof CinemaActionsItem) {
                            CinemaActionsItem cinemaActionsItem = (CinemaActionsItem) recyclerData;
                            if (cinemaActionsItem.getShowLoadingButton()) {
                                cinemaActionsItem.setShowLoadingButton(false);
                                this.p.b(Integer.valueOf(i2));
                            }
                        }
                        i2 = i3;
                    } else {
                        l.b();
                        throw null;
                    }
                }
            }
        }
    }

    public static /* synthetic */ void c(t tVar, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            Resource e2 = tVar.e();
            list = e2 != null ? (List) e2.a() : null;
        }
        tVar.g((List<? extends RecyclerData>) list);
    }

    public final int e(List<? extends RecyclerData> list) {
        int i2 = 0;
        for (RecyclerData recyclerData : list) {
            if (recyclerData.getViewType() == CinemaViewItemType.SERIES_SEASON_ITEM.ordinal() || recyclerData.getViewType() == CinemaViewItemType.SERIES_SINGLE_SEASON_ITEM.ordinal()) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public final void f(List<? extends RecyclerData> list) {
        EpisodeInfoItem d2 = d(list);
        if (d2 != null) {
            String seriesId = d2.getSeriesId();
            if (seriesId != null) {
                this.q = seriesId;
            }
        }
        this.t = list;
        a(this, list, false, 2, null);
        b(c(list));
        List<RecyclerData> b2 = b(list);
        g((List<? extends RecyclerData>) b2);
        a(b2);
        SeasonPickerParams seasonPickerParams = this.r;
        if (seasonPickerParams != null) {
            c(seasonPickerParams);
        } else {
            j.c("params");
            throw null;
        }
    }

    public final void g(List<? extends RecyclerData> list) {
        if (list != null) {
            int i2 = 0;
            for (T next : list) {
                int i3 = i2 + 1;
                if (i2 >= 0) {
                    RecyclerData recyclerData = (RecyclerData) next;
                    if (recyclerData instanceof PurchasableEntity) {
                        PurchasableEntity purchasableEntity = (PurchasableEntity) recyclerData;
                        boolean isBought = purchasableEntity.isBought();
                        purchasableEntity.setBought(this.u.contains(purchasableEntity.getEntityId()));
                        if (isBought != purchasableEntity.isBought()) {
                            this.p.b(Integer.valueOf(i2));
                        }
                    }
                    i2 = i3;
                } else {
                    l.b();
                    throw null;
                }
            }
        }
    }

    public final void b(ErrorModel errorModel) {
        a(errorModel);
    }

    public final void c(String str) {
        j.b(str, "seriesId");
        a(str, j());
    }

    public final void d(String str) {
        j.b(str, "<set-?>");
        this.s = str;
    }

    public final void b(CinemaActionsItem cinemaActionsItem) {
        if (cinemaActionsItem != null) {
            EntityState l2 = l();
            cinemaActionsItem.setVideoState(l2);
            b(l2);
        }
    }

    public final void c(int i2) {
        this.x = i2;
    }

    public void d(int i2) {
        this.z = i2;
    }

    public final void c(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        this.D.h(cinemaActionsItem.getId());
    }

    public final EpisodeInfoItem d(List<? extends RecyclerData> list) {
        RecyclerData recyclerData;
        T t2;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    t2 = null;
                    break;
                }
                t2 = it.next();
                if (((RecyclerData) t2) instanceof EpisodeInfoItem) {
                    break;
                }
            }
            recyclerData = (RecyclerData) t2;
        } else {
            recyclerData = null;
        }
        if (!(recyclerData instanceof EpisodeInfoItem)) {
            recyclerData = null;
        }
        return (EpisodeInfoItem) recyclerData;
    }

    public final CinemaActionsItem c(List<? extends RecyclerData> list) {
        RecyclerData recyclerData;
        T t2;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    t2 = null;
                    break;
                }
                t2 = it.next();
                if (((RecyclerData) t2) instanceof CinemaActionsItem) {
                    break;
                }
            }
            recyclerData = (RecyclerData) t2;
        } else {
            recyclerData = null;
        }
        if (!(recyclerData instanceof CinemaActionsItem)) {
            recyclerData = null;
        }
        return (CinemaActionsItem) recyclerData;
    }

    public static /* synthetic */ EpisodeInfoItem b(t tVar, List<? extends RecyclerData> list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = tVar.t;
        }
        return tVar.d(list);
    }

    /* renamed from: a */
    public void d(SeasonPickerParams seasonPickerParams) {
        j.b(seasonPickerParams, "params");
        this.r = seasonPickerParams;
        if (this.t.isEmpty()) {
            C1125ra unused = C1103g.b(this, null, null, new EpisodeDetailViewModel$makeData$1(this, seasonPickerParams, null), 3, null);
            return;
        }
        int h2 = h();
        int i2 = this.y;
        if (h2 < i2) {
            String str = this.q;
            if (str != null) {
                a(str, j());
            } else {
                j.c("seriesId");
                throw null;
            }
        } else {
            a((Pair<Integer, ? extends List<? extends RecyclerData>>) new Pair(Integer.valueOf(i2), l.a()));
        }
    }

    public final void b(EntityState entityState) {
        j.b(entityState, "state");
        if (a(entityState)) {
            String str = this.s;
            if (str != null) {
                b(str);
            } else {
                j.c("episodeId");
                throw null;
            }
        }
    }

    public final void b(String str) {
        C1125ra unused = C1103g.b(this, null, null, new EpisodeDetailViewModel$registerOnProgressChange$1(this, str, null), 3, null);
    }

    public static /* synthetic */ void a(t tVar, List list, boolean z2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            Resource e2 = tVar.e();
            list = e2 != null ? (List) e2.a() : null;
        }
        if ((i2 & 2) != 0) {
            Boolean a2 = tVar.p().a();
            z2 = a2 != null ? a2.booleanValue() : false;
        }
        tVar.a((List<? extends RecyclerData>) list, z2);
    }

    public final List<RecyclerData> b(List<? extends RecyclerData> list) {
        ArrayList arrayList = new ArrayList();
        VideoDividerItem videoDividerItem = new VideoDividerItem(0, false, 0, 7, null);
        int size = list.size() - 1;
        while (size >= 0) {
            int viewType = ((RecyclerData) list.get(size)).getViewType();
            Integer valueOf = size < list.size() + -1 ? Integer.valueOf(((RecyclerData) list.get(size + 1)).getViewType()) : null;
            int ordinal = CinemaViewItemType.DIVIDER.ordinal();
            if (valueOf != null && valueOf.intValue() == ordinal) {
                arrayList.add(0, list.get(size));
            } else {
                if (viewType == CinemaViewItemType.SERIES_EPISODE_SEE_MORE_ITEM.ordinal()) {
                    arrayList.add(0, videoDividerItem);
                } else if (viewType == CinemaViewItemType.SERIES_SEASON_ITEM.ordinal()) {
                    arrayList.add(0, videoDividerItem);
                } else if (viewType == CinemaViewItemType.SERIES_SINGLE_SEASON_ITEM.ordinal()) {
                    arrayList.add(0, videoDividerItem);
                } else if (viewType == CinemaViewItemType.SERIES_EPISODE_ITEM.ordinal()) {
                    arrayList.add(0, videoDividerItem);
                } else if (viewType == CinemaViewItemType.SCREEN_SHOT.ordinal()) {
                    arrayList.add(0, videoDividerItem);
                } else if (viewType == CinemaViewItemType.CREWS.ordinal()) {
                    arrayList.add(0, videoDividerItem);
                } else if (viewType == CinemaViewItemType.OTHER_INFO_ITEM.ordinal() && valueOf != null) {
                    arrayList.add(0, videoDividerItem);
                } else if (viewType == CinemaViewItemType.LOADING_ITEM.ordinal()) {
                    arrayList.add(0, videoDividerItem);
                } else if (viewType == CinemaViewItemType.RETRY_ITEM.ordinal()) {
                    arrayList.add(0, videoDividerItem);
                } else {
                    if (viewType == CinemaViewItemType.DESCRIPTION.ordinal()) {
                        int ordinal2 = CinemaViewItemType.SCREEN_SHOT.ordinal();
                        if (valueOf == null || valueOf.intValue() != ordinal2) {
                            arrayList.add(0, videoDividerItem);
                        }
                    }
                    if (viewType == CinemaViewItemType.ADD_REVIEW.ordinal()) {
                        arrayList.add(0, videoDividerItem);
                    } else if (viewType == CinemaViewItemType.REVIEW_ACTION.ordinal()) {
                        arrayList.add(0, videoDividerItem);
                    }
                }
                arrayList.add(0, list.get(size));
            }
            size--;
        }
        return arrayList;
    }

    public final void a(List<? extends RecyclerData> list, boolean z2) {
        CinemaActionsItem c2 = c(list);
        if (c2 != null) {
            c2.setBought(z2);
        }
    }

    public static /* synthetic */ CinemaActionsItem a(t tVar, List<? extends RecyclerData> list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = tVar.t;
        }
        return tVar.c(list);
    }

    public final boolean a(EntityState entityState) {
        return entityState == EntityState.DOWNLOADING;
    }

    public final void a(DownloaderProgressInfo downloaderProgressInfo) {
        this.f6549k.b(downloaderProgressInfo);
    }

    public final void a(String str, int i2) {
        this.w = Integer.valueOf(i2);
        C1125ra raVar = this.v;
        if (raVar != null) {
            C1125ra.a.a(raVar, null, 1, null);
        }
        EpisodeDetailViewModel$getEpisodes$1 episodeDetailViewModel$getEpisodes$1 = new EpisodeDetailViewModel$getEpisodes$1(this, str, i2, Math.min(this.y - h(), i()), null);
        this.v = C1103g.b(this, null, null, episodeDetailViewModel$getEpisodes$1, 3, null);
    }

    public final void a(Pair<Integer, ? extends List<? extends RecyclerData>> pair) {
        List list = (List) pair.d();
        d(h() + list.size());
        this.y = pair.c().intValue();
        g((List<? extends RecyclerData>) list);
        a(list);
    }

    public final List<RecyclerData> a(List<RecyclerData> list, int i2) {
        int e2 = e((List<? extends RecyclerData>) list);
        SeriesSeasonsItem a2 = a(e2, list);
        if (a2 != null) {
            Iterator<SeriesSeason> it = a2.getItems().iterator();
            int i3 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i3 = -1;
                    break;
                }
                if (it.next().getIndex() == i2) {
                    break;
                }
                i3++;
            }
            if (i3 >= 0) {
                list.set(e2, SeriesSeasonsItem.copy$default(a2, null, i3, 1, null));
            }
        }
        return list;
    }

    public final SeriesSeasonsItem a(int i2, List<RecyclerData> list) {
        if (i2 < 0 || !(list.get(i2) instanceof SeriesSeasonsItem)) {
            return null;
        }
        RecyclerData recyclerData = list.get(i2);
        if (recyclerData != null) {
            return (SeriesSeasonsItem) recyclerData;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.common.model.cinema.SeriesSeasonsItem");
    }

    public void a(SeriesSeason seriesSeason) {
        j.b(seriesSeason, "item");
        Integer num = this.w;
        int index = seriesSeason.getIndex();
        if (num == null || num.intValue() != index) {
            this.w = Integer.valueOf(seriesSeason.getIndex());
            this.y = i();
            d(0);
            c(false);
            List<? extends RecyclerData> a2 = u.a(this.t);
            a((List<RecyclerData>) a2, seriesSeason.getIndex());
            this.t = a2;
            a(b(this.t));
            SeasonPickerParams seasonPickerParams = this.r;
            if (seasonPickerParams != null) {
                c(seasonPickerParams);
            } else {
                j.c("params");
                throw null;
            }
        }
    }

    public final PlayedVideoModel a(MovieItem.EpisodeItem episodeItem) {
        j.b(episodeItem, "item");
        String str = null;
        EpisodeInfoItem b2 = b(this, null, 1, null);
        if (b2 != null) {
            String episodeId = episodeItem.getEpisodeId();
            String name = b2.getName();
            CinemaScreenshotItem cover = b2.getCover();
            if (cover != null) {
                str = cover.getMainUrl();
            }
            PlayedVideoModel playedVideoModel = new PlayedVideoModel(episodeId, name, str, b2.getId(), episodeItem.getEpisodeIdx(), Integer.valueOf(j()), PlayedVideoType.EPISODE, false, 0, 256, null);
            return playedVideoModel;
        }
        j.a();
        throw null;
    }

    public final PlayedVideoModel a(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        String str = null;
        EpisodeInfoItem b2 = b(this, null, 1, null);
        if (b2 != null) {
            String id = cinemaActionsItem.getId();
            String name = b2.getName();
            CinemaScreenshotItem cover = b2.getCover();
            if (cover != null) {
                str = cover.getMainUrl();
            }
            PlayedVideoModel playedVideoModel = new PlayedVideoModel(id, name, str, b2.getId(), cinemaActionsItem.getEpisodeIndex(), Integer.valueOf(j()), PlayedVideoType.EPISODE, false, 0, 256, null);
            return playedVideoModel;
        }
        j.a();
        throw null;
    }

    public final void a(String str) {
        j.b(str, "entityId");
        Resource e2 = e();
        if (e2 != null) {
            List list = (List) e2.a();
            if (list != null) {
                int i2 = 0;
                for (Object next : list) {
                    int i3 = i2 + 1;
                    if (i2 >= 0) {
                        RecyclerData recyclerData = (RecyclerData) next;
                        if (recyclerData instanceof ListItem.Episode) {
                            ListItem.Episode episode = (ListItem.Episode) recyclerData;
                            boolean showLoadingButton = episode.getEpisode().getShowLoadingButton();
                            episode.getEpisode().setShowLoadingButton(j.a((Object) episode.getEpisode().getEpisodeId(), (Object) str));
                            if (showLoadingButton != episode.getEpisode().getShowLoadingButton()) {
                                this.p.b(Integer.valueOf(i2));
                            }
                        } else if (recyclerData instanceof CinemaActionsItem) {
                            CinemaActionsItem cinemaActionsItem = (CinemaActionsItem) recyclerData;
                            boolean showLoadingButton2 = cinemaActionsItem.getShowLoadingButton();
                            cinemaActionsItem.setShowLoadingButton(j.a((Object) cinemaActionsItem.getId(), (Object) str));
                            if (showLoadingButton2 != cinemaActionsItem.getShowLoadingButton()) {
                                this.p.b(Integer.valueOf(i2));
                            }
                        }
                        i2 = i3;
                    } else {
                        l.b();
                        throw null;
                    }
                }
            }
        }
    }

    public final void a(int i2, int i3, Intent intent) {
        if (i3 == -1 && i2 == 1010) {
            v();
        }
    }
}
