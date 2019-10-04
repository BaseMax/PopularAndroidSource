package c.c.a.n.r;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.n.A.k;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.data.entity.UpgradableCount;
import h.f.b.j;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: AppChildMyBazaarFragment.kt */
public final class c extends f {
    public k Aa;
    public HashMap Ba;

    public void La() {
        HashMap hashMap = this.Ba;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public View e(int i2) {
        if (this.Ba == null) {
            this.Ba = new HashMap();
        }
        View view = (View) this.Ba.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Ba.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void f(int r8) {
        /*
            r7 = this;
            c.c.a.n.r.g r0 = c.c.a.n.r.f.a((c.c.a.n.r.f) r7)
            com.farsitel.bazaar.core.model.Resource r0 = r0.e()
            r1 = 0
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L_0x0055
            java.lang.Object r0 = r0.a()
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L_0x0055
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.util.Iterator r0 = r0.iterator()
        L_0x001e:
            boolean r5 = r0.hasNext()
            if (r5 == 0) goto L_0x0030
            java.lang.Object r5 = r0.next()
            boolean r6 = r5 instanceof com.farsitel.bazaar.ui.mybazaar.MyBazaarItem
            if (r6 == 0) goto L_0x001e
            r4.add(r5)
            goto L_0x001e
        L_0x0030:
            java.util.Iterator r0 = r4.iterator()
        L_0x0034:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L_0x0050
            java.lang.Object r4 = r0.next()
            r5 = r4
            com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem r5 = (com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem) r5
            int r5 = r5.b()
            r6 = 2131362363(0x7f0a023b, float:1.8344504E38)
            if (r5 != r6) goto L_0x004c
            r5 = 1
            goto L_0x004d
        L_0x004c:
            r5 = 0
        L_0x004d:
            if (r5 == 0) goto L_0x0034
            goto L_0x0051
        L_0x0050:
            r4 = r3
        L_0x0051:
            r0 = r4
            com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem r0 = (com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem) r0
            goto L_0x0056
        L_0x0055:
            r0 = r3
        L_0x0056:
            com.farsitel.bazaar.ui.mybazaar.MyBazaarItem r0 = (com.farsitel.bazaar.ui.mybazaar.MyBazaarItem) r0
            if (r0 == 0) goto L_0x0075
            if (r8 != 0) goto L_0x005d
            goto L_0x0072
        L_0x005d:
            android.content.Context r4 = r7.E()
            if (r4 == 0) goto L_0x0072
            r3 = 2131755331(0x7f100143, float:1.9141538E38)
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            r2[r1] = r8
            java.lang.String r3 = r4.getString(r3, r2)
        L_0x0072:
            r0.a(r3)
        L_0x0075:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.r.c.f(int):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void g(int r8) {
        /*
            r7 = this;
            c.c.a.n.r.g r0 = c.c.a.n.r.f.a((c.c.a.n.r.f) r7)
            com.farsitel.bazaar.core.model.Resource r0 = r0.e()
            r1 = 0
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L_0x0055
            java.lang.Object r0 = r0.a()
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L_0x0055
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.util.Iterator r0 = r0.iterator()
        L_0x001e:
            boolean r5 = r0.hasNext()
            if (r5 == 0) goto L_0x0030
            java.lang.Object r5 = r0.next()
            boolean r6 = r5 instanceof com.farsitel.bazaar.ui.mybazaar.MyBazaarItem
            if (r6 == 0) goto L_0x001e
            r4.add(r5)
            goto L_0x001e
        L_0x0030:
            java.util.Iterator r0 = r4.iterator()
        L_0x0034:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L_0x0050
            java.lang.Object r4 = r0.next()
            r5 = r4
            com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem r5 = (com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem) r5
            int r5 = r5.b()
            r6 = 2131362366(0x7f0a023e, float:1.834451E38)
            if (r5 != r6) goto L_0x004c
            r5 = 1
            goto L_0x004d
        L_0x004c:
            r5 = 0
        L_0x004d:
            if (r5 == 0) goto L_0x0034
            goto L_0x0051
        L_0x0050:
            r4 = r3
        L_0x0051:
            r0 = r4
            com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem r0 = (com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem) r0
            goto L_0x0056
        L_0x0055:
            r0 = r3
        L_0x0056:
            com.farsitel.bazaar.ui.mybazaar.MyBazaarItem r0 = (com.farsitel.bazaar.ui.mybazaar.MyBazaarItem) r0
            if (r0 == 0) goto L_0x0075
            if (r8 != 0) goto L_0x005d
            goto L_0x0072
        L_0x005d:
            android.content.Context r4 = r7.E()
            if (r4 == 0) goto L_0x0072
            r3 = 2131755331(0x7f100143, float:1.9141538E38)
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            r2[r1] = r8
            java.lang.String r3 = r4.getString(r3, r2)
        L_0x0072:
            r0.a(r3)
        L_0x0075:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.r.c.g(int):void");
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public final int qb() {
        k kVar = this.Aa;
        if (kVar != null) {
            UpgradableCount a2 = kVar.e().a();
            if (a2 != null) {
                return a2.getMaliciousAppCount();
            }
            return 0;
        }
        j.c("upgradableBadgeViewModel");
        throw null;
    }

    public final int rb() {
        k kVar = this.Aa;
        if (kVar != null) {
            UpgradableCount a2 = kVar.e().a();
            if (a2 != null) {
                return a2.getUpgradeableAppCount();
            }
            return 0;
        }
        j.c("upgradableBadgeViewModel");
        throw null;
    }

    public ArrayList<RecyclerData> b(int i2, int i3) {
        return ((g) cb()).a(i2, i3);
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        E a2 = G.a((Fragment) this, Ra()).a(k.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        k kVar = (k) a2;
        kVar.e().a(ba(), new a(this));
        this.Aa = kVar;
        ((g) cb()).j().a(ba(), new b(this));
    }
}
