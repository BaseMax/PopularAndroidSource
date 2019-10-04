package c.c.a.n.c.c;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.lifecycle.LiveData;
import b.r.r;
import c.c.a.b.d.m;
import c.c.a.b.d.o;
import c.c.a.c.a.b;
import c.c.a.e.d.b.ba;
import c.c.a.e.d.i.j;
import c.c.a.n.c.d.g;
import com.farsitel.bazaar.common.model.DownloadableEntity;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.common.model.PurchasableEntity;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.common.LoadableEntity;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.common.model.page.PageItem;
import com.farsitel.bazaar.common.model.page.PageTitleItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.farsitel.bazaar.common.model.page.VitrinItem;
import com.farsitel.bazaar.common.model.ui.AppDownloaderModel;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.common.model.ui.PackageChangeModel;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import h.a.l;
import h.c.e;
import h.h;
import i.a.C1099e;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.C1128u;
import i.a.va;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: PageViewModel.kt */
public abstract class t<Params> extends g<RecyclerData, Params> {

    /* renamed from: j  reason: collision with root package name */
    public final r<PageItem> f6340j = new r<>();

    /* renamed from: k  reason: collision with root package name */
    public final C1128u f6341k = va.a(null, 1, null);

    /* renamed from: l  reason: collision with root package name */
    public final e f6342l = b.f4693c.b().plus(this.f6341k);
    public final j m;
    public final c.c.a.b.d.b n;
    public final o o;
    public final ba p;
    public final m q;
    public final r<Map<String, EntityState>> r;
    public final List<UpgradableApp> s;
    public final HashSet<String> t;
    public final b.r.t<Integer> u;
    public boolean v;
    public final Context w;

    public t(Context context, u uVar) {
        h.f.b.j.b(context, "context");
        h.f.b.j.b(uVar, "env");
        this.w = context;
        this.m = uVar.b();
        this.n = uVar.a();
        this.o = uVar.e();
        this.p = uVar.d();
        this.q = uVar.c();
        this.r = new r<>();
        this.s = new ArrayList();
        this.t = new HashSet<>();
        this.u = new b.r.t<>();
        this.v = true;
        this.r.a(this.n.c(), new o(this));
        this.r.a(this.p.d(), new p(this));
        this.r.a(this.q.a(), new q(this));
    }

    public final r<Map<String, EntityState>> j() {
        return this.r;
    }

    public final b.r.t<Integer> k() {
        return this.u;
    }

    public final b.r.t<Integer> l() {
        return this.u;
    }

    public final LiveData<PackageChangeModel> m() {
        return this.n.g();
    }

    public final LiveData<PageItem> n() {
        return this.f6340j;
    }

    public abstract boolean o();

    public final void p() {
        Resource e2 = e();
        if (e2 != null) {
            List list = (List) e2.a();
            if (list != null) {
                int i2 = 0;
                for (Object next : list) {
                    int i3 = i2 + 1;
                    if (i2 >= 0) {
                        LoadableEntity c2 = c((RecyclerData) next);
                        if (c2 != null && c2.isLoading()) {
                            c2.setLoading(false);
                            this.u.b(Integer.valueOf(i2));
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

    public final void c(List<? extends RecyclerData> list) {
        T t2;
        if (list != null && !this.s.isEmpty()) {
            int i2 = 0;
            for (T next : list) {
                int i3 = i2 + 1;
                Long l2 = null;
                if (i2 >= 0) {
                    DownloadableEntity a2 = a((RecyclerData) next);
                    if (a2 != null) {
                        PageAppItem pageAppItem = (PageAppItem) (!(a2 instanceof PageAppItem) ? null : a2);
                        if (pageAppItem != null) {
                            if (pageAppItem.getLatestVersionCodeOnServer() != null) {
                                Long latestVersionCodeOnServer = pageAppItem.getLatestVersionCodeOnServer();
                                if (latestVersionCodeOnServer != null) {
                                    if (latestVersionCodeOnServer.longValue() != 0) {
                                    }
                                }
                            }
                            Iterator<T> it = this.s.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    t2 = null;
                                    break;
                                }
                                t2 = it.next();
                                if (h.f.b.j.a((Object) ((UpgradableApp) t2).getPackageName(), (Object) pageAppItem.getPackageName())) {
                                    break;
                                }
                            }
                            UpgradableApp upgradableApp = (UpgradableApp) t2;
                            if (upgradableApp != null) {
                                l2 = Long.valueOf(upgradableApp.getVersionCode());
                            }
                            pageAppItem.setLatestVersionCodeOnServer(l2);
                            pageAppItem.setEntityState(this.n.a(a2.getEntityId(), b(a2)));
                            this.u.b(Integer.valueOf(i2));
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

    public final PurchasableEntity d(RecyclerData recyclerData) {
        if (recyclerData instanceof ListItem.App) {
            return ((ListItem.App) recyclerData).getApp();
        }
        if (recyclerData instanceof ListItem.Hami) {
            return ((ListItem.Hami) recyclerData).getHami().getApp();
        }
        if (recyclerData instanceof ListItem.Video) {
            return ((ListItem.Video) recyclerData).getVideo();
        }
        if (recyclerData instanceof ListItem.Episode) {
            return ((ListItem.Episode) recyclerData).getEpisode();
        }
        if (recyclerData instanceof VitrinItem.Hami) {
            return ((VitrinItem.Hami) recyclerData).getHami().getApp();
        }
        return null;
    }

    public final void e(String str) {
        C1125ra unused = C1103g.b(this, this.f6342l, null, new PageViewModel$registerOnProgressChange$1(this, str, null), 2, null);
    }

    public static /* synthetic */ void b(t tVar, List list, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                Resource e2 = tVar.e();
                list = e2 != null ? (List) e2.a() : null;
            }
            tVar.c((List<? extends RecyclerData>) list);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updatePageListWithUpgradableApps");
    }

    public final <T> void b(LiveData<T> liveData, h.f.a.b<? super T, Page> bVar) {
        h.f.b.j.b(liveData, "source");
        h.f.b.j.b(bVar, "mapFunction");
        this.f6340j.a(liveData, new s(this, bVar));
    }

    public final void a(PageItem pageItem) {
        C1125ra unused = C1103g.b(this, null, null, new PageViewModel$handleSuccess$1(this, pageItem, null), 3, null);
    }

    public final Intent b(String str) {
        h.f.b.j.b(str, "packageName");
        return this.n.n(str);
    }

    public final /* synthetic */ Object a(PageItem pageItem, h.c.b<? super h> bVar) {
        return C1099e.a(b.f4693c.a(), new PageViewModel$updateItemsState$2(this, pageItem, null), bVar);
    }

    public final String b(RecyclerData recyclerData) {
        DownloadableEntity a2 = a(recyclerData);
        if (a2 != null) {
            return a(a2);
        }
        return null;
    }

    public void d() {
        super.d();
        C1125ra.a.a(this.f6341k, null, 1, null);
    }

    public final void a(Page page) {
        h.f.b.j.b(page, "page");
        a(new PageItem(new PageViewConfigItem(new PageTitleItem(page.getTitle()), o()), null, null, page.getItems()));
    }

    public final Long b(DownloadableEntity downloadableEntity) {
        if (!(downloadableEntity instanceof PageAppItem)) {
            downloadableEntity = null;
        }
        PageAppItem pageAppItem = (PageAppItem) downloadableEntity;
        if (pageAppItem != null) {
            return pageAppItem.getLatestVersionCodeOnServer();
        }
        return null;
    }

    public final void b(List<? extends RecyclerData> list) {
        if (list != null) {
            int i2 = 0;
            for (T next : list) {
                int i3 = i2 + 1;
                if (i2 >= 0) {
                    PurchasableEntity d2 = d((RecyclerData) next);
                    if (d2 != null) {
                        boolean isBought = d2.isBought();
                        d2.setBought(this.t.contains(d2.getEntityId()));
                        if (isBought != d2.isBought()) {
                            this.u.b(Integer.valueOf(i2));
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

    public final void d(String str) {
        h.f.b.j.b(str, "entityId");
        Resource e2 = e();
        if (e2 != null) {
            List list = (List) e2.a();
            if (list != null) {
                int i2 = 0;
                for (Object next : list) {
                    int i3 = i2 + 1;
                    if (i2 >= 0) {
                        LoadableEntity c2 = c((RecyclerData) next);
                        if (c2 != null) {
                            boolean isLoading = c2.isLoading();
                            c2.setLoading(h.f.b.j.a((Object) c2.getEntityId(), (Object) str));
                            if (isLoading != c2.isLoading()) {
                                this.u.b(Integer.valueOf(i2));
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

    public final void a(PageAppItem pageAppItem, Long l2) {
        h.f.b.j.b(pageAppItem, "appItem");
        c.c.a.b.d.b bVar = this.n;
        AppDownloaderModel appDownloaderModel = new AppDownloaderModel(pageAppItem.getPackageName(), pageAppItem.getAppName(), pageAppItem.isFree(), pageAppItem.getReferrer(), null, l2);
        bVar.a(appDownloaderModel);
    }

    public final void c(DownloadableEntity downloadableEntity) {
        h.f.b.j.b(downloadableEntity, "downloadableEntity");
        String a2 = a(downloadableEntity);
        if (a2 != null) {
            this.n.h(a2);
        }
    }

    public final Intent c(String str) {
        h.f.b.j.b(str, "packageName");
        return this.n.o(str);
    }

    public final LoadableEntity c(RecyclerData recyclerData) {
        if (recyclerData instanceof ListItem.Video) {
            return ((ListItem.Video) recyclerData).getVideo();
        }
        if (recyclerData instanceof ListItem.Episode) {
            return ((ListItem.Episode) recyclerData).getEpisode();
        }
        return null;
    }

    public final Intent a(PageAppItem pageAppItem) {
        h.f.b.j.b(pageAppItem, "appItem");
        return this.n.l(pageAppItem.getPackageName());
    }

    public final Uri a(String str) {
        h.f.b.j.b(str, "packageName");
        return this.n.m(str);
    }

    public void a(PackageChangeModel packageChangeModel) {
        h.f.b.j.b(packageChangeModel, "packageChangedModel");
        a(this, packageChangeModel.getPackageName(), null, 2, null);
    }

    public void a(Map<String, ? extends EntityState> map) {
        EntityState entityState;
        h.f.b.j.b(map, "entitiesState");
        Resource e2 = e();
        if (e2 != null) {
            List list = (List) e2.a();
            if (list != null) {
                int i2 = 0;
                for (Object next : list) {
                    int i3 = i2 + 1;
                    if (i2 >= 0) {
                        RecyclerData recyclerData = (RecyclerData) next;
                        String b2 = b(recyclerData);
                        DownloadableEntity a2 = a(recyclerData);
                        if (a2 != null) {
                            EntityState entityState2 = a2.getEntityState();
                            if (map.containsKey(b2)) {
                                Object obj = map.get(b2);
                                if (obj != null) {
                                    EntityState entityState3 = (EntityState) obj;
                                    if (entityState3 != entityState2 || this.v) {
                                        a2.setEntityState(entityState3);
                                        EntityState entityState4 = a2.getEntityState();
                                        if (b2 != null) {
                                            a(entityState4, b2);
                                            this.u.b(Integer.valueOf(i2));
                                        } else {
                                            h.f.b.j.a();
                                            throw null;
                                        }
                                    }
                                } else {
                                    h.f.b.j.a();
                                    throw null;
                                }
                            } else if (entityState2 != EntityState.NONE) {
                                int i4 = r.f6337b[a2.getEntityType().ordinal()];
                                if (i4 == 1) {
                                    entityState = this.n.a(a2.getEntityId(), b(a2));
                                } else if (i4 == 2) {
                                    entityState = this.o.l(a2.getEntityId());
                                } else {
                                    throw new NoWhenBranchMatchedException();
                                }
                                if (a2.getEntityState() != entityState) {
                                    a2.setEntityState(entityState);
                                    this.u.b(Integer.valueOf(i2));
                                }
                            } else {
                                continue;
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
        this.v = false;
    }

    public final String a(DownloadableEntity downloadableEntity) {
        return downloadableEntity.getEntityId();
    }

    public final void a(EntityState entityState, String str) {
        if (a(entityState)) {
            e(str);
        }
    }

    public final void a(DownloaderProgressInfo downloaderProgressInfo, String str) {
        a(str, downloaderProgressInfo);
    }

    public final boolean a(EntityState entityState) {
        return entityState == EntityState.DOWNLOADING;
    }

    public final DownloadableEntity a(RecyclerData recyclerData) {
        if (recyclerData instanceof ListItem.App) {
            return ((ListItem.App) recyclerData).getApp();
        }
        if (recyclerData instanceof ListItem.Hami) {
            return ((ListItem.Hami) recyclerData).getHami().getApp();
        }
        if (recyclerData instanceof VitrinItem.Hami) {
            return ((VitrinItem.Hami) recyclerData).getHami().getApp();
        }
        return null;
    }

    public static /* synthetic */ void a(t tVar, String str, DownloaderProgressInfo downloaderProgressInfo, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 2) != 0) {
                downloaderProgressInfo = null;
            }
            tVar.a(str, downloaderProgressInfo);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: entityStateChanged");
    }

    public final void a(String str, DownloaderProgressInfo downloaderProgressInfo) {
        Resource e2 = e();
        if (e2 != null) {
            List list = (List) e2.a();
            if (list != null) {
                int i2 = 0;
                for (Object next : list) {
                    int i3 = i2 + 1;
                    if (i2 >= 0) {
                        RecyclerData recyclerData = (RecyclerData) next;
                        if (h.f.b.j.a((Object) b(recyclerData), (Object) str)) {
                            DownloadableEntity a2 = a(recyclerData);
                            if (a2 != null) {
                                a2.setEntityState(this.n.a(str, b(a2)));
                            }
                            if (a2 != null) {
                                a2.setProgressInfo(downloaderProgressInfo);
                            }
                            this.u.b(Integer.valueOf(i2));
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

    public static /* synthetic */ void a(t tVar, List list, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                Resource e2 = tVar.e();
                list = e2 != null ? (List) e2.a() : null;
            }
            tVar.b((List<? extends RecyclerData>) list);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: paymentStateChanged");
    }
}
