package c.c.a.n.b;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import androidx.lifecycle.LiveData;
import b.r.r;
import b.r.t;
import c.c.a.b.d.m;
import c.c.a.c.b.h;
import c.c.a.c.d.e;
import c.c.a.e.d.b.ba;
import c.c.a.e.d.d.b;
import c.c.a.e.d.i.j;
import c.c.a.n.c.d.g;
import c.c.a.p.I;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.AppDetailDividerItem;
import com.farsitel.bazaar.common.model.appdetail.AppDetailViewItemType;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;
import com.farsitel.bazaar.common.model.appdetail.AppMyRateItem;
import com.farsitel.bazaar.common.model.page.CommonItemType;
import com.farsitel.bazaar.common.model.ui.AppDownloaderModel;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.common.model.ui.PackageChangeModel;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.entity.None;
import h.a.l;
import h.a.u;
import h.c;
import h.d;
import h.f.b.f;
import h.f.b.k;
import h.i.i;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: AppDetailViewModel.kt */
public final class w extends g<RecyclerData, s> {

    /* renamed from: j  reason: collision with root package name */
    public static final /* synthetic */ i[] f6286j;

    /* renamed from: k  reason: collision with root package name */
    public static final a f6287k = new a(null);
    public final I A;

    /* renamed from: l  reason: collision with root package name */
    public String f6288l;
    public final t<DownloaderProgressInfo> m = new t<>();
    public final t<None> n = new c.c.a.c.h.g();
    public final r<Boolean> o = new r<>();
    public final r<Integer> p = new r<>();
    public final c q = d.a(new AppDetailViewModel$appPurchasedLiveData$2(this));
    public final t<Integer> r = new c.c.a.c.h.g();
    public final Context s;
    public final c.c.a.e.d.c.a t;
    public final j u;
    public final b v;
    public final ba w;
    public final c.c.a.b.d.b x;
    public final m y;
    public final c.c.a.d.c.b z;

    /* compiled from: AppDetailViewModel.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(w.class), "appPurchasedLiveData", "getAppPurchasedLiveData()Landroidx/lifecycle/LiveData;");
        k.a((PropertyReference1) propertyReference1Impl);
        f6286j = new i[]{propertyReference1Impl};
    }

    public w(Context context, c.c.a.e.d.c.a aVar, j jVar, b bVar, ba baVar, c.c.a.b.d.b bVar2, m mVar, c.c.a.d.c.b bVar3, I i2) {
        h.f.b.j.b(context, "context");
        h.f.b.j.b(aVar, "getAppDetailRepository");
        h.f.b.j.b(jVar, "downloadProgressRepository");
        h.f.b.j.b(bVar, "bookmarkRepository");
        h.f.b.j.b(baVar, "upgradableAppRepository");
        h.f.b.j.b(bVar2, "appManager");
        h.f.b.j.b(mVar, "paymentManager");
        h.f.b.j.b(bVar3, "accountManager");
        h.f.b.j.b(i2, "workManagerScheduler");
        this.s = context;
        this.t = aVar;
        this.u = jVar;
        this.v = bVar;
        this.w = baVar;
        this.x = bVar2;
        this.y = mVar;
        this.z = bVar3;
        this.A = i2;
    }

    public final LiveData<Boolean> k() {
        c cVar = this.q;
        i iVar = f6286j[0];
        return (LiveData) cVar.getValue();
    }

    public final LiveData<Boolean> m() {
        return this.o;
    }

    public final LiveData<None> n() {
        return this.n;
    }

    public final LiveData<Integer> o() {
        return this.r;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0034  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0039  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int p() {
        /*
            r4 = this;
            com.farsitel.bazaar.core.model.Resource r0 = r4.e()
            r1 = 0
            if (r0 == 0) goto L_0x002a
            java.lang.Object r0 = r0.a()
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L_0x002a
            java.util.Iterator r0 = r0.iterator()
        L_0x0013:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L_0x0025
            java.lang.Object r2 = r0.next()
            r3 = r2
            com.farsitel.bazaar.common.model.RecyclerData r3 = (com.farsitel.bazaar.common.model.RecyclerData) r3
            boolean r3 = r3 instanceof com.farsitel.bazaar.common.model.appdetail.AppMyRateItem
            if (r3 == 0) goto L_0x0013
            goto L_0x0026
        L_0x0025:
            r2 = r1
        L_0x0026:
            r0 = r2
            com.farsitel.bazaar.common.model.RecyclerData r0 = (com.farsitel.bazaar.common.model.RecyclerData) r0
            goto L_0x002b
        L_0x002a:
            r0 = r1
        L_0x002b:
            boolean r2 = r0 instanceof com.farsitel.bazaar.common.model.appdetail.AppMyRateItem
            if (r2 != 0) goto L_0x0030
            r0 = r1
        L_0x0030:
            com.farsitel.bazaar.common.model.appdetail.AppMyRateItem r0 = (com.farsitel.bazaar.common.model.appdetail.AppMyRateItem) r0
            if (r0 == 0) goto L_0x0039
            int r0 = r0.getMyRate()
            goto L_0x003a
        L_0x0039:
            r0 = 0
        L_0x003a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.b.w.p():int");
    }

    public final Pair<AppMyRateItem, Integer> q() {
        Resource e2 = e();
        if (e2 != null) {
            List list = (List) e2.a();
            if (list != null) {
                int i2 = 0;
                for (Object next : list) {
                    int i3 = i2 + 1;
                    if (i2 >= 0) {
                        RecyclerData recyclerData = (RecyclerData) next;
                        if (recyclerData instanceof AppMyRateItem) {
                            return new Pair<>(recyclerData, Integer.valueOf(i2));
                        }
                        i2 = i3;
                    } else {
                        l.b();
                        throw null;
                    }
                }
            }
        }
        return null;
    }

    public final LiveData<Integer> r() {
        return this.p;
    }

    public final LiveData<PackageChangeModel> s() {
        return this.x.g();
    }

    public final String t() {
        String str = this.f6288l;
        if (str != null) {
            return str;
        }
        h.f.b.j.c("packageName");
        throw null;
    }

    public final boolean u() {
        c.c.a.b.d.b bVar = this.x;
        String str = this.f6288l;
        if (str != null) {
            return bVar.p(str);
        }
        h.f.b.j.c("packageName");
        throw null;
    }

    public final boolean v() {
        Boolean a2 = this.o.a();
        if (a2 != null) {
            return a2.booleanValue();
        }
        return false;
    }

    public final void w() {
        a(new AppDetailViewModel$onReportFragmentClicked$1(this, null));
    }

    public final LiveData<DownloaderProgressInfo> x() {
        return this.m;
    }

    public final List<RecyclerData> b(List<? extends RecyclerData> list) {
        ArrayList arrayList = new ArrayList();
        AppDetailDividerItem appDetailDividerItem = new AppDetailDividerItem(0, false, 0, 7, null);
        int size = list.size() - 1;
        while (size >= 0) {
            int viewType = ((RecyclerData) list.get(size)).getViewType();
            Integer valueOf = size < list.size() + -1 ? Integer.valueOf(((RecyclerData) list.get(size + 1)).getViewType()) : null;
            if (viewType == AppDetailViewItemType.MORE_ARTICLE.ordinal()) {
                arrayList.add(0, appDetailDividerItem);
            } else {
                if (viewType == AppDetailViewItemType.ARTICLE.ordinal()) {
                    int ordinal = AppDetailViewItemType.MORE_ARTICLE.ordinal();
                    if (valueOf == null || valueOf.intValue() != ordinal) {
                        AppDetailDividerItem appDetailDividerItem2 = new AppDetailDividerItem(0, false, 56, 3, null);
                        arrayList.add(0, appDetailDividerItem2);
                    }
                }
                if (viewType == CommonItemType.VITRIN_APP.getValue()) {
                    arrayList.add(0, appDetailDividerItem);
                } else if (viewType == AppDetailViewItemType.REVIEW_ACTION.ordinal()) {
                    arrayList.add(0, appDetailDividerItem);
                } else {
                    if (viewType == AppDetailViewItemType.REVIEW_INFO.ordinal()) {
                        int ordinal2 = AppDetailViewItemType.MY_REVIEW.ordinal();
                        if (valueOf == null || valueOf.intValue() != ordinal2) {
                            arrayList.add(0, appDetailDividerItem);
                        }
                    }
                    if (viewType == AppDetailViewItemType.APP_MORE_DESCRIPTION.ordinal()) {
                        arrayList.add(0, appDetailDividerItem);
                    } else if (viewType == AppDetailViewItemType.CHANGE_LOG.ordinal()) {
                        arrayList.add(0, appDetailDividerItem);
                    } else if (viewType == AppDetailViewItemType.APP_MY_RATE.ordinal()) {
                        arrayList.add(0, appDetailDividerItem);
                    } else {
                        if (viewType == AppDetailViewItemType.DEVELOPER_INFO.ordinal()) {
                            int ordinal3 = AppDetailViewItemType.SCREEN_SHOT_SECTION.ordinal();
                            if (valueOf != null && valueOf.intValue() == ordinal3) {
                                AppDetailDividerItem appDetailDividerItem3 = new AppDetailDividerItem(16, false, 0, 4, null);
                                arrayList.add(0, appDetailDividerItem3);
                            }
                        }
                        if (viewType == AppDetailViewItemType.DEVELOPER_INFO.ordinal()) {
                            AppDetailDividerItem appDetailDividerItem4 = new AppDetailDividerItem(16, false, 0, 4, null);
                            arrayList.add(0, appDetailDividerItem4);
                        } else {
                            if (viewType == AppDetailViewItemType.APP_INFO.ordinal()) {
                                int ordinal4 = AppDetailViewItemType.SCREEN_SHOT_SECTION.ordinal();
                                if (valueOf == null || valueOf.intValue() != ordinal4) {
                                    arrayList.add(0, appDetailDividerItem);
                                }
                            }
                            if (viewType == AppDetailViewItemType.EDITOR_CHOICE.ordinal()) {
                                int ordinal5 = AppDetailViewItemType.SCREEN_SHOT_SECTION.ordinal();
                                if (valueOf == null || valueOf.intValue() != ordinal5) {
                                    arrayList.add(0, appDetailDividerItem);
                                }
                            }
                        }
                    }
                }
            }
            arrayList.add(0, list.get(size));
            size--;
        }
        return arrayList;
    }

    public final void c(AppInfoItem appInfoItem) {
        h.f.b.j.b(appInfoItem, "item");
        this.x.h(appInfoItem.getPackageName());
    }

    public final List<RecyclerData> e(List<? extends RecyclerData> list) {
        List<RecyclerData> a2 = u.a(list);
        int a3 = a(AppDetailViewItemType.APP_MY_RATE, list);
        if (a3 >= 0) {
            a2.remove(a3);
        }
        return a2;
    }

    public final void f(String str) {
        h.f.b.j.b(str, "<set-?>");
        this.f6288l = str;
    }

    public final void j() {
        a(new AppDetailViewModel$changeBookmarkState$1(this, null));
    }

    public final LiveData<EntityState> l() {
        c.c.a.b.d.b bVar = this.x;
        String str = this.f6288l;
        if (str != null) {
            return bVar.d(str);
        }
        h.f.b.j.c("packageName");
        throw null;
    }

    public final Intent c(String str) {
        h.f.b.j.b(str, "packageName");
        return this.x.n(str);
    }

    public final List<RecyclerData> d(List<? extends RecyclerData> list) {
        List<RecyclerData> a2 = u.a(list);
        int a3 = a(AppDetailViewItemType.CHANGE_LOG, list);
        if (a3 >= 0) {
            a2.remove(a3);
        }
        return a2;
    }

    public final void f(List<? extends RecyclerData> list) {
        if (list != null) {
            boolean u2 = u();
            List<RecyclerData> a2 = a(list, u2);
            if (!u2) {
                a2 = d((List<? extends RecyclerData>) e((List<? extends RecyclerData>) a2));
            }
            List<RecyclerData> b2 = b((List<? extends RecyclerData>) a2);
            AppInfoItem c2 = c((List<? extends RecyclerData>) b2);
            if (c2 != null) {
                Boolean a3 = k().a();
                c2.setBought(a3 != null ? a3.booleanValue() : false);
            }
            Boolean bool = null;
            if (c2 != null) {
                c.c.a.b.d.b bVar = this.x;
                String str = this.f6288l;
                if (str != null) {
                    c2.setApplicationInstalled(bVar.p(str));
                } else {
                    h.f.b.j.c("packageName");
                    throw null;
                }
            }
            if (c2 != null) {
                Context context = this.s;
                String str2 = this.f6288l;
                if (str2 != null) {
                    PackageInfo b3 = c.c.a.d.b.d.b(context, str2);
                    if (b3 != null) {
                        bool = Boolean.valueOf(h.c(b3));
                    }
                    c2.setUnInstallable(bool);
                } else {
                    h.f.b.j.c("packageName");
                    throw null;
                }
            }
            a(c((List<? extends RecyclerData>) b2));
            a(b2);
        }
    }

    public final void c(int i2) {
        a(new AppDetailViewModel$onPostCommentClicked$1(this, i2, null));
    }

    public final AppInfoItem c(List<? extends RecyclerData> list) {
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
                if (((RecyclerData) t2) instanceof AppInfoItem) {
                    break;
                }
            }
            recyclerData = (RecyclerData) t2;
        } else {
            recyclerData = null;
        }
        if (!(recyclerData instanceof AppInfoItem)) {
            recyclerData = null;
        }
        return (AppInfoItem) recyclerData;
    }

    public final void e(String str) {
        C1125ra unused = C1103g.b(this, null, null, new AppDetailViewModel$registerOnProgressChange$1(this, str, null), 3, null);
    }

    /* renamed from: a */
    public void d(s sVar) {
        h.f.b.j.b(sVar, "params");
        C1125ra unused = C1103g.b(this, null, null, new AppDetailViewModel$makeData$1(this, sVar, null), 3, null);
        C1125ra unused2 = C1103g.b(this, null, null, new AppDetailViewModel$makeData$2(this, null), 3, null);
    }

    public final Intent d(String str) {
        h.f.b.j.b(str, "packageName");
        return this.x.o(str);
    }

    public final void d(int i2) {
        Pair<AppMyRateItem, Integer> q2 = q();
        if (q2 != null) {
            int intValue = q2.b().intValue();
            q2.a().setMyRate(i2);
            this.p.a(Integer.valueOf(intValue));
        }
    }

    public final List<RecyclerData> a(List<? extends RecyclerData> list, boolean z2) {
        return u.f6285c.a(list, z2);
    }

    public final void a(AppInfoItem appInfoItem) {
        if (appInfoItem != null) {
            EntityState a2 = this.x.a(appInfoItem.getPackageName(), Long.valueOf(appInfoItem.getVersionCode()));
            if (a2 == EntityState.UPDATE_NEEDED) {
                a(new AppDetailViewModel$handleAppState$$inlined$let$lambda$1(appInfoItem, null, this, appInfoItem));
            }
            appInfoItem.setAppState(a2);
            b(a2);
        }
    }

    public final EntityState a(long j2) {
        c.c.a.b.d.b bVar = this.x;
        String str = this.f6288l;
        if (str != null) {
            return bVar.a(str, Long.valueOf(j2));
        }
        h.f.b.j.c("packageName");
        throw null;
    }

    public static /* synthetic */ AppInfoItem a(w wVar, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            Resource resource = (Resource) wVar.g().a();
            list = resource != null ? (List) resource.a() : null;
        }
        return wVar.c((List<? extends RecyclerData>) list);
    }

    public final boolean a(EntityState entityState) {
        return entityState == EntityState.DOWNLOADING;
    }

    public final void a(AppInfoItem appInfoItem, Long l2) {
        h.f.b.j.b(appInfoItem, "item");
        c.c.a.b.d.b bVar = this.x;
        String packageName = appInfoItem.getPackageName();
        String name = appInfoItem.getName();
        boolean isFree = appInfoItem.isFree();
        String referrer = appInfoItem.getReferrer();
        if (referrer == null) {
            referrer = e.a();
        }
        AppDownloaderModel appDownloaderModel = new AppDownloaderModel(packageName, name, isFree, referrer, Long.valueOf(appInfoItem.getVersionCode()), l2);
        bVar.a(appDownloaderModel);
    }

    public final void a(DownloaderProgressInfo downloaderProgressInfo) {
        this.m.b(downloaderProgressInfo);
    }

    public final void b(EntityState entityState) {
        h.f.b.j.b(entityState, "appState");
        if (a(entityState)) {
            String str = this.f6288l;
            if (str != null) {
                e(str);
            } else {
                h.f.b.j.c("packageName");
                throw null;
            }
        }
    }

    public final Intent a(String str) {
        h.f.b.j.b(str, "packageName");
        return this.x.l(str);
    }

    public final void a(PackageChangeModel packageChangeModel) {
        h.f.b.j.b(packageChangeModel, "packageChangeModel");
        String packageName = packageChangeModel.getPackageName();
        String str = this.f6288l;
        if (str == null) {
            h.f.b.j.c("packageName");
            throw null;
        } else if (h.f.b.j.a((Object) packageName, (Object) str)) {
            AppInfoItem a2 = a(this, null, 1, null);
            if (a2 != null) {
                c.c.a.b.d.b bVar = this.x;
                String str2 = this.f6288l;
                if (str2 != null) {
                    a2.setApplicationInstalled(bVar.p(str2));
                } else {
                    h.f.b.j.c("packageName");
                    throw null;
                }
            }
            a(a(this, null, 1, null));
        }
    }

    public final Uri b(String str) {
        h.f.b.j.b(str, "packageName");
        return this.x.m(str);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v3, resolved type: java.lang.Long} */
    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r1v1, types: [com.farsitel.bazaar.data.entity.ErrorModel] */
    /* JADX WARNING: type inference failed for: r1v5 */
    /* JADX WARNING: type inference failed for: r1v6 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(com.farsitel.bazaar.common.model.appdetail.AppInfoItem r6) {
        /*
            r5 = this;
            java.lang.String r0 = "item"
            h.f.b.j.b(r6, r0)
            boolean r0 = r6.getCanBeInstalled()
            r1 = 0
            if (r0 == 0) goto L_0x0026
            c.c.a.c.h.e r0 = c.c.a.c.h.e.f4731a
            android.content.Context r2 = r5.s
            java.lang.String r3 = r6.getPackageName()
            android.content.pm.PackageInfo r0 = r0.e(r2, r3)
            if (r0 == 0) goto L_0x0022
            long r0 = c.c.a.c.b.h.b(r0)
            java.lang.Long r1 = java.lang.Long.valueOf(r0)
        L_0x0022:
            r5.a((com.farsitel.bazaar.common.model.appdetail.AppInfoItem) r6, (java.lang.Long) r1)
            goto L_0x0058
        L_0x0026:
            b.r.r r6 = r5.g()
            com.farsitel.bazaar.core.model.Resource r0 = new com.farsitel.bazaar.core.model.Resource
            com.farsitel.bazaar.core.model.AppDetailState$Payment r2 = com.farsitel.bazaar.core.model.AppDetailState.Payment.f12157a
            b.r.r r3 = r5.g()
            java.lang.Object r3 = r3.a()
            com.farsitel.bazaar.core.model.Resource r3 = (com.farsitel.bazaar.core.model.Resource) r3
            if (r3 == 0) goto L_0x0041
            java.lang.Object r3 = r3.a()
            java.util.List r3 = (java.util.List) r3
            goto L_0x0042
        L_0x0041:
            r3 = r1
        L_0x0042:
            b.r.r r4 = r5.g()
            java.lang.Object r4 = r4.a()
            com.farsitel.bazaar.core.model.Resource r4 = (com.farsitel.bazaar.core.model.Resource) r4
            if (r4 == 0) goto L_0x0052
            com.farsitel.bazaar.data.entity.ErrorModel r1 = r4.c()
        L_0x0052:
            r0.<init>(r2, r3, r1)
            r6.b(r0)
        L_0x0058:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.b.w.b(com.farsitel.bazaar.common.model.appdetail.AppInfoItem):void");
    }

    public final void a(int i2, int i3, Intent intent) {
        switch (i2) {
            case 1001:
                if (i3 == -1) {
                    j();
                    return;
                }
                return;
            case 1002:
                if (i3 == -1) {
                    c(p());
                    return;
                }
                return;
            case 1003:
                if (i3 == -1) {
                    w();
                    return;
                }
                return;
            default:
                return;
        }
    }

    public final int a(AppDetailViewItemType appDetailViewItemType, List<? extends RecyclerData> list) {
        int i2 = 0;
        for (RecyclerData viewType : list) {
            if (viewType.getViewType() == appDetailViewItemType.ordinal()) {
                return i2;
            }
            i2++;
        }
        return -1;
    }
}
