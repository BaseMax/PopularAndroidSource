package c.c.a.n.j.k;

import android.content.Intent;
import androidx.lifecycle.LiveData;
import b.r.r;
import b.r.t;
import c.c.a.b.d.m;
import c.c.a.b.d.o;
import c.c.a.d.c.b;
import c.c.a.e.d.h.e.a;
import c.c.a.n.c.d.g;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.PlayedVideoModel;
import com.farsitel.bazaar.common.model.PlayedVideoType;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.common.model.cinema.CinemaInfoItem;
import com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem;
import com.farsitel.bazaar.common.model.cinema.CinemaViewItemType;
import com.farsitel.bazaar.common.model.cinema.VideoDividerItem;
import com.farsitel.bazaar.common.model.cinema.VideoInfoModel;
import com.farsitel.bazaar.common.model.page.CommonItemType;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ReviewState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: VideoDetailViewModel.kt */
public final class s extends g<RecyclerData, VideoInfoModel> {

    /* renamed from: j  reason: collision with root package name */
    public static final /* synthetic */ i[] f6643j;

    /* renamed from: k  reason: collision with root package name */
    public final t<DownloaderProgressInfo> f6644k = new t<>();

    /* renamed from: l  reason: collision with root package name */
    public final r<EntityState> f6645l = new r<>();
    public VideoInfoModel m;
    public final c n = d.a(new VideoDetailViewModel$videoPurchasedLiveData$2(this));
    public final t<Integer> o = new c.c.a.c.h.g();
    public final r<Integer> p = new r<>();
    public final a q;
    public final c.c.a.e.d.h.e.a.c r;
    public final o s;
    public final m t;
    public final b u;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(s.class), "videoPurchasedLiveData", "getVideoPurchasedLiveData()Landroidx/lifecycle/LiveData;");
        k.a((PropertyReference1) propertyReference1Impl);
        f6643j = new i[]{propertyReference1Impl};
    }

    public s(a aVar, c.c.a.e.d.h.e.a.c cVar, o oVar, m mVar, b bVar) {
        j.b(aVar, "videoDetailRepository");
        j.b(cVar, "videoDownloadedRepository");
        j.b(oVar, "videoManager");
        j.b(mVar, "paymentManager");
        j.b(bVar, "accountManager");
        this.q = aVar;
        this.r = cVar;
        this.s = oVar;
        this.t = mVar;
        this.u = bVar;
    }

    public static final /* synthetic */ VideoInfoModel f(s sVar) {
        VideoInfoModel videoInfoModel = sVar.m;
        if (videoInfoModel != null) {
            return videoInfoModel;
        }
        j.c("videoInfoModel");
        throw null;
    }

    public final EntityState j() {
        o oVar = this.s;
        VideoInfoModel videoInfoModel = this.m;
        if (videoInfoModel != null) {
            return oVar.l(videoInfoModel.getVideoId());
        }
        j.c("videoInfoModel");
        throw null;
    }

    public final t<Integer> k() {
        return this.o;
    }

    public final r<Integer> l() {
        return this.p;
    }

    public final PlayedVideoModel m() {
        String str = null;
        CinemaInfoItem b2 = b(this, null, 1, null);
        if (b2 != null) {
            String id = b2.getId();
            String name = b2.getName();
            CinemaScreenshotItem cover = b2.getCover();
            if (cover != null) {
                str = cover.getThumbnailUrl();
            }
            PlayedVideoModel playedVideoModel = new PlayedVideoModel(id, name, str, null, null, null, PlayedVideoType.VIDEO, b2.isLive(), 0, 256, null);
            return playedVideoModel;
        }
        j.a();
        throw null;
    }

    public final int n() {
        Resource resource = (Resource) g().a();
        if (resource == null) {
            return -1;
        }
        List<RecyclerData> list = (List) resource.a();
        if (list == null) {
            return -1;
        }
        int i2 = 0;
        for (RecyclerData recyclerData : list) {
            if (recyclerData instanceof CinemaActionsItem) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public final LiveData<Boolean> o() {
        c cVar = this.n;
        i iVar = f6643j[0];
        return (LiveData) cVar.getValue();
    }

    public final LiveData<EntityState> p() {
        return this.f6645l;
    }

    public final void q() {
        CinemaActionsItem a2 = a(this, null, 1, null);
        if (a2 != null) {
            a2.setShowLoadingButton(true);
        }
        this.p.b(Integer.valueOf(n()));
    }

    public final void r() {
        if (this.u.f()) {
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
        this.o.b(1010);
    }

    public final LiveData<DownloaderProgressInfo> s() {
        return this.f6644k;
    }

    public final void t() {
        CinemaActionsItem a2 = a(this, null, 1, null);
        if (a2 != null) {
            a2.setShowLoadingButton(false);
        }
        this.p.b(Integer.valueOf(n()));
    }

    public static /* synthetic */ CinemaInfoItem b(s sVar, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            Resource resource = (Resource) sVar.g().a();
            list = resource != null ? (List) resource.a() : null;
        }
        return sVar.d((List<? extends RecyclerData>) list);
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

    public final void e(List<? extends RecyclerData> list) {
        a(this, list, false, 2, null);
        a(c(list));
        a(b(list));
    }

    public final void b(EntityState entityState) {
        j.b(entityState, "state");
        if (a(entityState)) {
            VideoInfoModel videoInfoModel = this.m;
            if (videoInfoModel != null) {
                a(videoInfoModel.getVideoId());
            } else {
                j.c("videoInfoModel");
                throw null;
            }
        }
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

    public final List<RecyclerData> b(List<? extends RecyclerData> list) {
        ArrayList arrayList = new ArrayList();
        VideoDividerItem videoDividerItem = new VideoDividerItem(0, false, 0, 7, null);
        int size = list.size() - 1;
        while (size >= 0) {
            int viewType = ((RecyclerData) list.get(size)).getViewType();
            Integer valueOf = size < list.size() + -1 ? Integer.valueOf(((RecyclerData) list.get(size + 1)).getViewType()) : null;
            if (viewType == CinemaViewItemType.DESCRIPTION.ordinal()) {
                int ordinal = CinemaViewItemType.SCREEN_SHOT.ordinal();
                if (valueOf == null || valueOf.intValue() != ordinal) {
                    arrayList.add(0, videoDividerItem);
                    arrayList.add(0, list.get(size));
                    size--;
                }
            }
            if (viewType == CinemaViewItemType.SERIES_EPISODE_SEE_MORE_ITEM.ordinal()) {
                arrayList.add(0, videoDividerItem);
            } else if (viewType == CinemaViewItemType.SERIES_SEASON_ITEM.ordinal()) {
                arrayList.add(0, videoDividerItem);
            } else if (viewType == CinemaViewItemType.SCREEN_SHOT.ordinal()) {
                arrayList.add(0, videoDividerItem);
            } else if (viewType == CinemaViewItemType.CREWS.ordinal()) {
                arrayList.add(0, videoDividerItem);
            } else if (viewType == CinemaViewItemType.OTHER_INFO_ITEM.ordinal() && valueOf != null) {
                arrayList.add(0, videoDividerItem);
            } else if (viewType == CinemaViewItemType.LOADING_ITEM.ordinal()) {
                arrayList.add(0, videoDividerItem);
            } else if (viewType == CinemaViewItemType.ADD_REVIEW.ordinal()) {
                arrayList.add(0, videoDividerItem);
            } else if (viewType == CinemaViewItemType.REVIEW_ACTION.ordinal()) {
                arrayList.add(0, videoDividerItem);
            } else if (viewType == CommonItemType.VITRIN_VIDEO.getValue()) {
                arrayList.add(0, videoDividerItem);
            } else if (viewType == CommonItemType.VITRIN_SERIAL.getValue()) {
                arrayList.add(0, videoDividerItem);
            } else if (viewType == CommonItemType.VITRIN_EPISODE.getValue()) {
                arrayList.add(0, videoDividerItem);
            }
            arrayList.add(0, list.get(size));
            size--;
        }
        return arrayList;
    }

    /* renamed from: a */
    public void d(VideoInfoModel videoInfoModel) {
        j.b(videoInfoModel, "params");
        this.m = videoInfoModel;
        C1125ra unused = C1103g.b(this, null, null, new VideoDetailViewModel$makeData$1(this, videoInfoModel, null), 3, null);
    }

    public final void a(CinemaActionsItem cinemaActionsItem) {
        if (cinemaActionsItem != null) {
            EntityState j2 = j();
            cinemaActionsItem.setVideoState(j2);
            b(j2);
        }
    }

    public static /* synthetic */ void a(s sVar, List list, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            Resource e2 = sVar.e();
            list = e2 != null ? (List) e2.a() : null;
        }
        if ((i2 & 2) != 0) {
            Boolean a2 = sVar.o().a();
            z = a2 != null ? a2.booleanValue() : false;
        }
        sVar.a((List<? extends RecyclerData>) list, z);
    }

    public final void a(List<? extends RecyclerData> list, boolean z) {
        CinemaActionsItem c2 = c(list);
        if (c2 != null) {
            c2.setBought(z);
        }
    }

    public static /* synthetic */ CinemaActionsItem a(s sVar, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            Resource resource = (Resource) sVar.g().a();
            list = resource != null ? (List) resource.a() : null;
        }
        return sVar.c((List<? extends RecyclerData>) list);
    }

    public final void a(String str) {
        C1125ra unused = C1103g.b(this, null, null, new VideoDetailViewModel$registerOnProgressChange$1(this, str, null), 3, null);
    }

    public final boolean a(EntityState entityState) {
        return entityState == EntityState.DOWNLOADING;
    }

    public final void a(DownloaderProgressInfo downloaderProgressInfo) {
        this.f6644k.b(downloaderProgressInfo);
    }

    public final void a(int i2, int i3, Intent intent) {
        if (i3 == -1 && i2 == 1010) {
            r();
        }
    }

    public final void b(CinemaActionsItem cinemaActionsItem) {
        j.b(cinemaActionsItem, "item");
        this.s.h(cinemaActionsItem.getId());
    }
}
