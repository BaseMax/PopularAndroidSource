package c.c.a.n.r;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import b.o.a.C0290n;
import b.r.E;
import b.r.G;
import b.w.C0313j;
import c.c.a.n.c.a.b;
import c.c.a.n.c.d.a;
import c.c.a.n.r.a.c;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.MyBazaarScreen;
import com.farsitel.bazaar.analytics.model.where.WhereType;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.ui.mybazaar.MyBazaarItem;
import com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem;
import com.farsitel.bazaar.ui.mybazaar.MyBazaarSwitchItem;
import h.f.b.j;
import java.util.ArrayList;
import kotlin.TypeCastException;

/* compiled from: ChildMyBazaarFragment.kt */
public abstract class f extends c.c.a.n.c.d.f<RecyclerData, ArrayList<RecyclerData>, g> {
    public int wa = R.layout.fragment_recyclerview;
    public boolean xa;
    public boolean ya;
    public final boolean za = true;

    public static final /* synthetic */ g a(f fVar) {
        return (g) fVar.cb();
    }

    public static /* synthetic */ void b(f fVar, int i2, int i3, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 1) != 0) {
                i2 = 0;
            }
            if ((i4 & 2) != 0) {
                i3 = 0;
            }
            fVar.c(i2, i3);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateList");
    }

    public WhereType Sa() {
        return new MyBazaarScreen();
    }

    public boolean Ta() {
        return this.za;
    }

    public int Ya() {
        return this.wa;
    }

    public abstract ArrayList<RecyclerData> b(int i2, int i3);

    public boolean bb() {
        return this.ya;
    }

    public void c(int i2, int i3) {
        ArrayList<RecyclerData> b2 = b(i2, i3);
        RecyclerView.a adapter = _a().getAdapter();
        if (adapter != null) {
            ((a) adapter).a(b2);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.ui.base.recycler.BaseRecyclerAdapter<com.farsitel.bazaar.common.model.RecyclerData>");
    }

    public boolean hb() {
        return this.xa;
    }

    public void k(boolean z) {
        this.ya = z;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v0, resolved type: com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v1, resolved type: com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v3, resolved type: com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v2, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v1, resolved type: com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v5, resolved type: com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void l(boolean r6) {
        /*
            r5 = this;
            c.c.a.n.r.g r0 = a((c.c.a.n.r.f) r5)
            com.farsitel.bazaar.core.model.Resource r0 = r0.e()
            r1 = 0
            if (r0 == 0) goto L_0x0050
            java.lang.Object r0 = r0.a()
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L_0x0050
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r0 = r0.iterator()
        L_0x001c:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L_0x002e
            java.lang.Object r3 = r0.next()
            boolean r4 = r3 instanceof com.farsitel.bazaar.ui.mybazaar.MyBazaarSwitchItem
            if (r4 == 0) goto L_0x001c
            r2.add(r3)
            goto L_0x001c
        L_0x002e:
            java.util.Iterator r0 = r2.iterator()
        L_0x0032:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L_0x004e
            java.lang.Object r2 = r0.next()
            r3 = r2
            com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem r3 = (com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem) r3
            int r3 = r3.b()
            r4 = 2131362362(0x7f0a023a, float:1.8344502E38)
            if (r3 != r4) goto L_0x004a
            r3 = 1
            goto L_0x004b
        L_0x004a:
            r3 = 0
        L_0x004b:
            if (r3 == 0) goto L_0x0032
            r1 = r2
        L_0x004e:
            com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem r1 = (com.farsitel.bazaar.ui.mybazaar.MyBazaarParentRowItem) r1
        L_0x0050:
            com.farsitel.bazaar.ui.mybazaar.MyBazaarSwitchItem r1 = (com.farsitel.bazaar.ui.mybazaar.MyBazaarSwitchItem) r1
            if (r1 == 0) goto L_0x0057
            r1.a(r6)
        L_0x0057:
            androidx.recyclerview.widget.RecyclerView r6 = r5._a()
            androidx.recyclerview.widget.RecyclerView$a r6 = r6.getAdapter()
            if (r6 == 0) goto L_0x0064
            r6.d()
        L_0x0064:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.r.f.l(boolean):void");
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public i Ua() {
        return new i();
    }

    public ArrayList<RecyclerData> Za() {
        return a(this, 0, 0, 3, null);
    }

    public g jb() {
        E a2 = G.a((Fragment) this, Ra()).a(g.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (g) a2;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        a(new e(this));
        super.a(view, bundle);
    }

    public final void a(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        if (recyclerData instanceof MyBazaarParentRowItem) {
            b.a(this, ((MyBazaarParentRowItem) recyclerData).a(), null, null, 6, null);
        } else {
            c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
            aVar.a(new Throwable("Unexpected item click in my bazaar " + recyclerData));
        }
        if (recyclerData instanceof MyBazaarItem) {
            C0313j a2 = b.w.b.b.a(this);
            Integer f2 = ((MyBazaarItem) recyclerData).f();
            if (f2 != null) {
                a2.b(f2.intValue());
            } else {
                j.a();
                throw null;
            }
        } else if (recyclerData instanceof MyBazaarSwitchItem) {
            MyBazaarSwitchItem myBazaarSwitchItem = (MyBazaarSwitchItem) recyclerData;
            if (myBazaarSwitchItem.b() == R.id.my_bazaar_kids) {
                a(myBazaarSwitchItem);
            }
        }
    }

    public final void a(MyBazaarSwitchItem myBazaarSwitchItem) {
        b.a(this, myBazaarSwitchItem.a(), null, null, 6, null);
        boolean d2 = myBazaarSwitchItem.d();
        l(!d2);
        c cVar = new c(new d(this, d2));
        C0290n D = D();
        j.a((Object) D, "childFragmentManager");
        cVar.a(D);
    }

    public static /* synthetic */ ArrayList a(f fVar, int i2, int i3, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 1) != 0) {
                i2 = 0;
            }
            if ((i4 & 2) != 0) {
                i3 = 0;
            }
            return fVar.b(i2, i3);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getChildData");
    }
}
