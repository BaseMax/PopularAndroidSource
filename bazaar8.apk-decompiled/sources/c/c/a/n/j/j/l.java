package c.c.a.n.j.j;

import android.content.Context;
import b.r.r;
import b.r.t;
import c.c.a.b.d.m;
import c.c.a.n.j.h.a;
import com.farsitel.bazaar.common.model.PlayedVideoModel;
import com.farsitel.bazaar.common.model.PlayedVideoType;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem;
import com.farsitel.bazaar.common.model.cinema.CinemaViewItemType;
import com.farsitel.bazaar.common.model.cinema.EpisodeModel;
import com.farsitel.bazaar.common.model.cinema.RetryItem;
import com.farsitel.bazaar.common.model.cinema.SeriesEpisodeItem;
import com.farsitel.bazaar.common.model.cinema.SeriesSeason;
import com.farsitel.bazaar.common.model.cinema.SeriesSeasonsItem;
import com.farsitel.bazaar.common.model.cinema.VideoDividerItem;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.ui.cinema.season.SeasonPickerParams;
import h.a.u;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.TypeCastException;

/* compiled from: SeriesDetailViewModel.kt */
public final class l extends a<RecyclerData, SeasonPickerParams> {

    /* renamed from: j  reason: collision with root package name */
    public C1125ra f6611j;

    /* renamed from: k  reason: collision with root package name */
    public String f6612k;

    /* renamed from: l  reason: collision with root package name */
    public String f6613l;
    public final r<Set<String>> m = new r<>();
    public HashSet<String> n = new HashSet<>();
    public Integer o;
    public final t<Integer> p = new t<>();
    public int q;
    public final Context r;
    public final c.c.a.e.d.h.d.a s;
    public final m t;

    public l(Context context, c.c.a.e.d.h.d.a aVar, m mVar) {
        j.b(context, "context");
        j.b(aVar, "seriesDetailRepository");
        j.b(mVar, "paymentManager");
        this.r = context;
        this.s = aVar;
        this.t = mVar;
        this.m.a(this.t.a(), new k(this));
    }

    public final void c(int i2) {
        this.q = i2;
    }

    public final void e(List<? extends RecyclerData> list) {
        List<RecyclerData> n2 = n();
        if (n2 != null) {
            List<T> a2 = u.a(n2);
            if (a2 != null) {
                List<RecyclerData> a3 = a((List<? extends RecyclerData>) a2, CinemaViewItemType.LOADING_ITEM.ordinal());
                int c2 = c((List<? extends RecyclerData>) a3);
                if (c2 >= 0) {
                    a3.addAll(c2 + 1, list);
                }
                g(a3);
                b(this, null, 1, null);
            }
        }
    }

    public final void f(List<? extends RecyclerData> list) {
        if (list != null) {
            int i2 = 0;
            for (T next : list) {
                int i3 = i2 + 1;
                if (i2 >= 0) {
                    RecyclerData recyclerData = (RecyclerData) next;
                    if (recyclerData instanceof SeriesEpisodeItem) {
                        SeriesEpisodeItem seriesEpisodeItem = (SeriesEpisodeItem) recyclerData;
                        boolean isBought = seriesEpisodeItem.isBought();
                        seriesEpisodeItem.setBought(this.n.contains(seriesEpisodeItem.getEntityId()));
                        if (isBought != seriesEpisodeItem.isBought()) {
                            this.p.b(Integer.valueOf(i2));
                        }
                    }
                    i2 = i3;
                } else {
                    h.a.l.b();
                    throw null;
                }
            }
        }
    }

    public final void g(List<? extends RecyclerData> list) {
        a(b((List<? extends RecyclerData>) u.a(list)));
        String str = this.f6612k;
        if (str != null) {
            int j2 = j();
            String str2 = this.f6613l;
            if (str2 != null) {
                a(this, str, j2, false, str2, 4, null);
            } else {
                j.c("requestReferrer");
                throw null;
            }
        } else {
            j.c("serialId");
            throw null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0052  */
    /* JADX WARNING: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int j() {
        /*
            r5 = this;
            java.lang.Integer r0 = r5.o
            if (r0 == 0) goto L_0x0009
            int r0 = r0.intValue()
            goto L_0x000b
        L_0x0009:
            int r0 = r5.q
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.j.j.l.j():int");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x000a, code lost:
        if (r0 != null) goto L_0x0012;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<com.farsitel.bazaar.common.model.cinema.SeriesSeason> k() {
        /*
            r2 = this;
            java.util.List r0 = r2.n()
            if (r0 == 0) goto L_0x000d
            java.util.List r0 = h.a.u.a(r0)
            if (r0 == 0) goto L_0x000d
            goto L_0x0012
        L_0x000d:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L_0x0012:
            int r1 = r2.c((java.util.List<? extends com.farsitel.bazaar.common.model.RecyclerData>) r0)
            com.farsitel.bazaar.common.model.cinema.SeriesSeasonsItem r0 = r2.a((int) r1, (java.util.List<com.farsitel.bazaar.common.model.RecyclerData>) r0)
            if (r0 == 0) goto L_0x0023
            java.util.List r0 = r0.getItems()
            if (r0 == 0) goto L_0x0023
            goto L_0x0027
        L_0x0023:
            java.util.List r0 = h.a.l.a()
        L_0x0027:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.j.j.l.k():java.util.List");
    }

    public final r<Set<String>> l() {
        return this.m;
    }

    public final t<Integer> m() {
        return this.p;
    }

    public final List<RecyclerData> n() {
        Resource resource = (Resource) g().a();
        if (resource != null) {
            return (List) resource.a();
        }
        return null;
    }

    public final void o() {
        Resource e2 = e();
        if (e2 != null) {
            List list = (List) e2.a();
            if (list != null) {
                int i2 = 0;
                for (Object next : list) {
                    int i3 = i2 + 1;
                    if (i2 >= 0) {
                        RecyclerData recyclerData = (RecyclerData) next;
                        if (recyclerData instanceof SeriesEpisodeItem) {
                            SeriesEpisodeItem seriesEpisodeItem = (SeriesEpisodeItem) recyclerData;
                            if (seriesEpisodeItem.getShowLoadingButton()) {
                                seriesEpisodeItem.setShowLoadingButton(false);
                                this.p.b(Integer.valueOf(i2));
                            }
                        }
                        i2 = i3;
                    } else {
                        h.a.l.b();
                        throw null;
                    }
                }
            }
        }
    }

    public final int c(List<? extends RecyclerData> list) {
        int i2 = 0;
        for (RecyclerData recyclerData : list) {
            if (recyclerData.getViewType() == CinemaViewItemType.SERIES_SEASON_ITEM.ordinal() || recyclerData.getViewType() == CinemaViewItemType.SERIES_SINGLE_SEASON_ITEM.ordinal()) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x000a, code lost:
        if (r0 != null) goto L_0x0012;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void d(int r3) {
        /*
            r2 = this;
            java.util.List r0 = r2.n()
            if (r0 == 0) goto L_0x000d
            java.util.List r0 = h.a.u.a(r0)
            if (r0 == 0) goto L_0x000d
            goto L_0x0012
        L_0x000d:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L_0x0012:
            r2.b((java.util.List<com.farsitel.bazaar.common.model.RecyclerData>) r0, (int) r3)
            com.farsitel.bazaar.common.model.cinema.CinemaViewItemType r3 = com.farsitel.bazaar.common.model.cinema.CinemaViewItemType.RETRY_ITEM
            int r3 = r3.ordinal()
            java.util.List r3 = r2.a((java.util.List<? extends com.farsitel.bazaar.common.model.RecyclerData>) r0, (int) r3)
            com.farsitel.bazaar.common.model.cinema.CinemaViewItemType r0 = com.farsitel.bazaar.common.model.cinema.CinemaViewItemType.SERIES_EPISODE_ITEM
            int r0 = r0.ordinal()
            java.util.List r3 = r2.a((java.util.List<? extends com.farsitel.bazaar.common.model.RecyclerData>) r3, (int) r0)
            com.farsitel.bazaar.common.model.cinema.CinemaViewItemType r0 = com.farsitel.bazaar.common.model.cinema.CinemaViewItemType.SERIES_EPISODE_SEE_MORE_ITEM
            int r0 = r0.ordinal()
            java.util.List r3 = r2.a((java.util.List<? extends com.farsitel.bazaar.common.model.RecyclerData>) r3, (int) r0)
            com.farsitel.bazaar.common.model.cinema.CinemaViewItemType r0 = com.farsitel.bazaar.common.model.cinema.CinemaViewItemType.LOADING_ITEM
            int r0 = r0.ordinal()
            java.util.List r3 = r2.a((java.util.List<? extends com.farsitel.bazaar.common.model.RecyclerData>) r3, (int) r0)
            int r0 = r2.c((java.util.List<? extends com.farsitel.bazaar.common.model.RecyclerData>) r3)
            if (r0 < 0) goto L_0x004d
            int r0 = r0 + 1
            com.farsitel.bazaar.common.model.cinema.ProgressItem r1 = new com.farsitel.bazaar.common.model.cinema.ProgressItem
            r1.<init>()
            r3.add(r0, r1)
        L_0x004d:
            r2.g(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.j.j.l.d(int):void");
    }

    public final void b(String str) {
        j.b(str, "seriesId");
        int j2 = j();
        String str2 = this.f6613l;
        if (str2 != null) {
            a(str, j2, true, str2);
        } else {
            j.c("requestReferrer");
            throw null;
        }
    }

    public final List<RecyclerData> b(List<RecyclerData> list, int i2) {
        int c2 = c((List<? extends RecyclerData>) list);
        SeriesSeasonsItem a2 = a(c2, list);
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
                list.set(c2, SeriesSeasonsItem.copy$default(a2, null, i3, 1, null));
            }
        }
        return list;
    }

    /* renamed from: a */
    public void d(SeasonPickerParams seasonPickerParams) {
        j.b(seasonPickerParams, "params");
        this.f6612k = seasonPickerParams.a();
        this.f6613l = seasonPickerParams.getReferrer();
        C1125ra unused = C1103g.b(this, null, null, new SeriesDetailViewModel$makeData$1(this, seasonPickerParams, null), 3, null);
    }

    public static /* synthetic */ CinemaInfoItem a(l lVar, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            Resource resource = (Resource) lVar.g().a();
            list = resource != null ? (List) resource.a() : null;
        }
        return lVar.d((List<? extends RecyclerData>) list);
    }

    public static /* synthetic */ void a(l lVar, String str, int i2, boolean z, String str2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            z = false;
        }
        lVar.a(str, i2, z, str2);
    }

    public final void a(String str, int i2, boolean z, String str2) {
        Integer num = this.o;
        if (num == null || num.intValue() != i2 || z) {
            this.o = Integer.valueOf(i2);
            d(i2);
            C1125ra raVar = this.f6611j;
            if (raVar != null) {
                C1125ra.a.a(raVar, null, 1, null);
            }
            SeriesDetailViewModel$getEpisodes$1 seriesDetailViewModel$getEpisodes$1 = new SeriesDetailViewModel$getEpisodes$1(this, str, i2, str2, null);
            this.f6611j = C1103g.b(this, null, null, seriesDetailViewModel$getEpisodes$1, 3, null);
        }
    }

    public final List<RecyclerData> b(List<? extends RecyclerData> list) {
        ArrayList arrayList = new ArrayList();
        VideoDividerItem videoDividerItem = new VideoDividerItem(0, false, 0, 7, null);
        int size = list.size() - 1;
        while (size >= 0) {
            int viewType = ((RecyclerData) list.get(size)).getViewType();
            Integer valueOf = size < list.size() + -1 ? Integer.valueOf(((RecyclerData) list.get(size + 1)).getViewType()) : null;
            int ordinal = CinemaViewItemType.DIVIDER.ordinal();
            if (valueOf == null || valueOf.intValue() != ordinal) {
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
                }
                arrayList.add(0, list.get(size));
            } else if (viewType != CinemaViewItemType.DIVIDER.ordinal()) {
                arrayList.add(0, list.get(size));
            }
            size--;
        }
        return arrayList;
    }

    public final CinemaInfoItem d(List<? extends RecyclerData> list) {
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
                if (((RecyclerData) t2) instanceof CinemaInfoItem) {
                    break;
                }
            }
            recyclerData = (RecyclerData) t2;
        } else {
            recyclerData = null;
        }
        if (!(recyclerData instanceof CinemaInfoItem)) {
            recyclerData = null;
        }
        return (CinemaInfoItem) recyclerData;
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

    public final void a(Throwable th) {
        c.c.a.c.c.a.f4699b.a(th);
        List<RecyclerData> n2 = n();
        if (n2 != null) {
            List<T> a2 = u.a(n2);
            if (a2 != null) {
                List<RecyclerData> a3 = a((List<? extends RecyclerData>) a2, CinemaViewItemType.LOADING_ITEM.ordinal());
                int c2 = c((List<? extends RecyclerData>) a3);
                if (c2 >= 0) {
                    a3.add(c2 + 1, new RetryItem(null));
                }
                g(a3);
            }
        }
    }

    public void a(SeriesSeason seriesSeason) {
        j.b(seriesSeason, "item");
        String str = this.f6612k;
        if (str != null) {
            int index = seriesSeason.getIndex();
            String str2 = this.f6613l;
            if (str2 != null) {
                a(this, str, index, false, str2, 4, null);
            } else {
                j.c("requestReferrer");
                throw null;
            }
        } else {
            j.c("serialId");
            throw null;
        }
    }

    public final PlayedVideoModel a(EpisodeModel episodeModel) {
        j.b(episodeModel, "item");
        String str = null;
        CinemaInfoItem a2 = a(this, (List) null, 1, (Object) null);
        if (a2 != null) {
            String identifier = episodeModel.getIdentifier();
            String name = a2.getName();
            CinemaScreenshotItem cover = a2.getCover();
            if (cover != null) {
                str = cover.getMainUrl();
            }
            PlayedVideoModel playedVideoModel = new PlayedVideoModel(identifier, name, str, a2.getId(), episodeModel.getEpisodeIndex(), Integer.valueOf(j()), PlayedVideoType.EPISODE, false, 0, 256, null);
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
                        if (recyclerData instanceof SeriesEpisodeItem) {
                            SeriesEpisodeItem seriesEpisodeItem = (SeriesEpisodeItem) recyclerData;
                            boolean showLoadingButton = seriesEpisodeItem.getShowLoadingButton();
                            seriesEpisodeItem.setShowLoadingButton(j.a((Object) seriesEpisodeItem.getIdentifier(), (Object) str));
                            if (showLoadingButton != seriesEpisodeItem.getShowLoadingButton()) {
                                this.p.b(Integer.valueOf(i2));
                            }
                        }
                        i2 = i3;
                    } else {
                        h.a.l.b();
                        throw null;
                    }
                }
            }
        }
    }

    public static /* synthetic */ void b(l lVar, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            Resource e2 = lVar.e();
            list = e2 != null ? (List) e2.a() : null;
        }
        lVar.f(list);
    }

    public final List<RecyclerData> a(List<? extends RecyclerData> list, int i2) {
        ArrayList arrayList = new ArrayList();
        for (T next : list) {
            if (((RecyclerData) next).getViewType() != i2) {
                arrayList.add(next);
            }
        }
        return u.a(arrayList);
    }
}
