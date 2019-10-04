package c.c.a.n.A;

import android.content.Context;
import c.c.a.b.d.b;
import c.c.a.e.d.b.ba;
import c.c.a.n.c.c.t;
import c.c.a.n.c.c.u;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: UpgradableAppsViewModel.kt */
public final class g extends t<None> {
    public static final /* synthetic */ i[] x;
    public final int A;
    public final Context B;
    public final ba C;
    public final b D;
    public final boolean y;
    public final c z = d.a(new UpgradableAppsViewModel$locale$2(this));

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(g.class), "locale", "getLocale()Ljava/util/Locale;");
        k.a((PropertyReference1) propertyReference1Impl);
        x = new i[]{propertyReference1Impl};
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public g(Context context, u uVar, ba baVar, b bVar) {
        super(context, uVar);
        j.b(context, "context");
        j.b(uVar, "env");
        j.b(baVar, "repository");
        j.b(bVar, "appManager");
        this.B = context;
        this.C = baVar;
        this.D = bVar;
    }

    public boolean o() {
        return this.y;
    }

    public final List<UpgradableApp> q() {
        ArrayList arrayList = new ArrayList();
        Resource e2 = e();
        if (e2 != null) {
            List list = (List) e2.a();
            if (list != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object next : list) {
                    if (next instanceof ListItem.App) {
                        arrayList2.add(next);
                    }
                }
                ArrayList<ListItem.App> arrayList3 = new ArrayList<>();
                for (Object next2 : arrayList2) {
                    if (((ListItem.App) next2).getApp().getEntityState() != EntityState.FILE_EXISTS) {
                        arrayList3.add(next2);
                    }
                }
                for (ListItem.App fromAppItem : arrayList3) {
                    arrayList.add(UpgradableApp.Companion.fromAppItem(fromAppItem));
                }
            }
        }
        return arrayList;
    }

    public final List<ListItem.App> r() {
        Resource e2 = e();
        if (e2 != null) {
            List list = (List) e2.a();
            if (list != null) {
                ArrayList arrayList = new ArrayList();
                for (Object next : list) {
                    if (next instanceof ListItem.App) {
                        arrayList.add(next);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                for (Object next2 : arrayList) {
                    if (((ListItem.App) next2).getApp().getEntityState() == EntityState.FILE_EXISTS) {
                        arrayList2.add(next2);
                    }
                }
                return arrayList2;
            }
        }
        return null;
    }

    public final Context s() {
        return this.B;
    }

    public final Locale t() {
        c cVar = this.z;
        i iVar = x[0];
        return (Locale) cVar.getValue();
    }

    /* renamed from: a */
    public void d(None none) {
        j.b(none, "params");
        String string = this.B.getString(R.string.updates);
        j.a((Object) string, "context.getString(R.string.updates)");
        C1125ra unused = C1103g.b(this, null, null, new UpgradableAppsViewModel$makeData$1(this, string, null), 3, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00a5  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0067 A[EDGE_INSN: B:51:0x0067->B:31:0x0067 ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(java.util.Map<java.lang.String, ? extends com.farsitel.bazaar.common.model.ui.EntityState> r7) {
        /*
            r6 = this;
            java.lang.String r0 = "entitiesState"
            h.f.b.j.b(r7, r0)
            super.a((java.util.Map<java.lang.String, ? extends com.farsitel.bazaar.common.model.ui.EntityState>) r7)
            com.farsitel.bazaar.core.model.Resource r7 = r6.e()
            if (r7 == 0) goto L_0x00a9
            java.lang.Object r7 = r7.a()
            java.util.List r7 = (java.util.List) r7
            if (r7 == 0) goto L_0x00a9
            r0 = 1
            r1 = 0
            if (r7 == 0) goto L_0x0023
            boolean r7 = r7.isEmpty()
            if (r7 == 0) goto L_0x0021
            goto L_0x0023
        L_0x0021:
            r7 = 0
            goto L_0x0024
        L_0x0023:
            r7 = 1
        L_0x0024:
            if (r7 == 0) goto L_0x0028
            goto L_0x00a9
        L_0x0028:
            com.farsitel.bazaar.core.model.Resource r7 = r6.e()
            r2 = 0
            if (r7 == 0) goto L_0x006b
            java.lang.Object r7 = r7.a()
            java.util.List r7 = (java.util.List) r7
            if (r7 == 0) goto L_0x006b
            java.util.Iterator r7 = r7.iterator()
        L_0x003b:
            boolean r3 = r7.hasNext()
            if (r3 == 0) goto L_0x0066
            java.lang.Object r3 = r7.next()
            r4 = r3
            com.farsitel.bazaar.common.model.RecyclerData r4 = (com.farsitel.bazaar.common.model.RecyclerData) r4
            boolean r5 = r4 instanceof com.farsitel.bazaar.common.model.page.ListItem.App
            if (r5 != 0) goto L_0x004d
            r4 = r2
        L_0x004d:
            com.farsitel.bazaar.common.model.page.ListItem$App r4 = (com.farsitel.bazaar.common.model.page.ListItem.App) r4
            if (r4 == 0) goto L_0x0062
            com.farsitel.bazaar.common.model.page.PageAppItem r4 = r4.getApp()
            if (r4 == 0) goto L_0x0062
            com.farsitel.bazaar.common.model.ui.EntityState r4 = r4.getEntityState()
            if (r4 == 0) goto L_0x0062
            boolean r4 = r4.inDownloadProcess()
            goto L_0x0063
        L_0x0062:
            r4 = 0
        L_0x0063:
            if (r4 == 0) goto L_0x003b
            goto L_0x0067
        L_0x0066:
            r3 = r2
        L_0x0067:
            r7 = r3
            com.farsitel.bazaar.common.model.RecyclerData r7 = (com.farsitel.bazaar.common.model.RecyclerData) r7
            goto L_0x006c
        L_0x006b:
            r7 = r2
        L_0x006c:
            com.farsitel.bazaar.core.model.Resource r3 = r6.e()
            if (r3 == 0) goto L_0x00a5
            java.lang.Object r3 = r3.a()
            if (r3 == 0) goto L_0x00a1
            java.util.List r3 = (java.util.List) r3
            int r2 = r6.A
            java.lang.Object r2 = r3.get(r2)
            if (r2 == 0) goto L_0x0099
            com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsHeaderItem r2 = (com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsHeaderItem) r2
            if (r7 != 0) goto L_0x0087
            goto L_0x0088
        L_0x0087:
            r0 = 0
        L_0x0088:
            r2.a(r0)
            b.r.t r7 = r6.l()
            int r0 = r6.A
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r7.b(r0)
            return
        L_0x0099:
            kotlin.TypeCastException r7 = new kotlin.TypeCastException
            java.lang.String r0 = "null cannot be cast to non-null type com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsHeaderItem"
            r7.<init>(r0)
            throw r7
        L_0x00a1:
            h.f.b.j.a()
            throw r2
        L_0x00a5:
            h.f.b.j.a()
            throw r2
        L_0x00a9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.A.g.a(java.util.Map):void");
    }
}
