package c.c.a.n.n;

import android.content.Context;
import c.c.a.e.d.l.d;
import c.c.a.n.c.c.t;
import c.c.a.n.c.c.u;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.ui.PackageChangeModel;
import com.farsitel.bazaar.common.model.ui.PackageChangeType;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* compiled from: InstalledAppsViewModel.kt */
public final class a extends t<None> {
    public final d A;
    public final boolean x;
    public final Locale y = c.c.a.d.a.a.f4744b.a(this.z).n();
    public final Context z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public a(Context context, u uVar, d dVar) {
        super(context, uVar);
        j.b(context, "context");
        j.b(uVar, "env");
        j.b(dVar, "installedAppRepository");
        this.z = context;
        this.A = dVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void f(java.lang.String r5) {
        /*
            r4 = this;
            com.farsitel.bazaar.core.model.Resource r0 = r4.e()
            if (r0 == 0) goto L_0x0051
            java.lang.Object r0 = r0.a()
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L_0x0051
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r0 = r0.iterator()
        L_0x0017:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L_0x0029
            java.lang.Object r2 = r0.next()
            boolean r3 = r2 instanceof com.farsitel.bazaar.common.model.page.ListItem.App
            if (r3 == 0) goto L_0x0017
            r1.add(r2)
            goto L_0x0017
        L_0x0029:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r1 = r1.iterator()
        L_0x0032:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x0052
            java.lang.Object r2 = r1.next()
            r3 = r2
            com.farsitel.bazaar.common.model.page.ListItem$App r3 = (com.farsitel.bazaar.common.model.page.ListItem.App) r3
            com.farsitel.bazaar.common.model.page.PageAppItem r3 = r3.getApp()
            java.lang.String r3 = r3.getPackageName()
            boolean r3 = h.f.b.j.a((java.lang.Object) r3, (java.lang.Object) r5)
            if (r3 == 0) goto L_0x0032
            r0.add(r2)
            goto L_0x0032
        L_0x0051:
            r0 = 0
        L_0x0052:
            r1 = 0
            if (r0 == 0) goto L_0x005e
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x005c
            goto L_0x005e
        L_0x005c:
            r0 = 0
            goto L_0x005f
        L_0x005e:
            r0 = 1
        L_0x005f:
            if (r0 == 0) goto L_0x008d
            com.farsitel.bazaar.core.model.Resource r0 = r4.e()
            if (r0 == 0) goto L_0x008d
            java.lang.Object r0 = r0.a()
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L_0x008d
            c.c.a.c.h.e r2 = c.c.a.c.h.e.f4731a
            android.content.Context r3 = r4.z
            android.content.pm.PackageInfo r5 = r2.e(r3, r5)
            if (r5 == 0) goto L_0x008d
            android.content.Context r2 = r4.z
            java.util.Locale r3 = r4.y
            com.farsitel.bazaar.common.model.page.ListItem$App r5 = c.c.a.c.b.h.b(r5, r2, r3)
            if (r5 == 0) goto L_0x008d
            java.util.List r0 = h.a.u.a(r0)
            r0.add(r1, r5)
            r4.a(r0)
        L_0x008d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.n.a.f(java.lang.String):void");
    }

    public final void g(String str) {
        Resource e2 = e();
        if (e2 != null) {
            List list = (List) e2.a();
            if (list != null) {
                ArrayList arrayList = new ArrayList();
                for (Object next : list) {
                    RecyclerData recyclerData = (RecyclerData) next;
                    if (!((recyclerData instanceof ListItem.App) && j.a((Object) ((ListItem.App) recyclerData).getApp().getEntityId(), (Object) str))) {
                        arrayList.add(next);
                    }
                }
                a(arrayList);
            }
        }
    }

    public boolean o() {
        return this.x;
    }

    public final Locale q() {
        return this.y;
    }

    /* renamed from: a */
    public void d(None none) {
        j.b(none, "params");
        C1125ra unused = C1103g.b(this, null, null, new InstalledAppsViewModel$makeData$1(this, null), 3, null);
    }

    public void a(PackageChangeModel packageChangeModel) {
        j.b(packageChangeModel, "packageChangedModel");
        super.a(packageChangeModel);
        if (packageChangeModel.getChangeType() == PackageChangeType.REMOVE) {
            g(packageChangeModel.getPackageName());
        } else if (packageChangeModel.getChangeType() == PackageChangeType.ADD) {
            f(packageChangeModel.getPackageName());
        }
    }
}
