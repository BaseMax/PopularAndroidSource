package c.c.a.n.h;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import b.r.E;
import b.r.G;
import b.w.b.b;
import c.c.a.d;
import c.c.a.i.c;
import c.c.a.n.c.d.f;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.CategoriesScreen;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.categroy.CategoryItem;
import h.f.b.j;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.TypeCastException;

/* compiled from: ChildCategoryFragment.kt */
public final class e extends f<RecyclerData, ArrayList<RecyclerData>, g> {
    public static final a wa = new a(null);
    public HashMap Aa;
    public int xa = R.layout.fragment_recyclerview;
    public boolean ya;
    public final boolean za = true;

    /* compiled from: ChildCategoryFragment.kt */
    public static final class a {
        public a() {
        }

        public final e a(ArrayList<RecyclerData> arrayList) {
            j.b(arrayList, "items");
            e eVar = new e();
            Bundle bundle = new Bundle();
            bundle.putSerializable("categories", arrayList);
            eVar.m(bundle);
            return eVar;
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }
    }

    public void La() {
        HashMap hashMap = this.Aa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public boolean Ta() {
        return this.za;
    }

    public RecyclerView.h Xa() {
        return null;
    }

    public int Ya() {
        return this.xa;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        a(new f(this));
        super.a(view, bundle);
    }

    public View e(int i2) {
        if (this.Aa == null) {
            this.Aa = new HashMap();
        }
        View view = (View) this.Aa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Aa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public boolean hb() {
        return this.ya;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public CategoriesScreen Sa() {
        return new CategoriesScreen();
    }

    public b Ua() {
        return new b();
    }

    public ArrayList<RecyclerData> Za() {
        Bundle C = C();
        if (C != null) {
            Serializable serializable = C.getSerializable("categories");
            if (serializable != null) {
                return (ArrayList) serializable;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.ArrayList<com.farsitel.bazaar.common.model.RecyclerData> /* = java.util.ArrayList<com.farsitel.bazaar.common.model.RecyclerData> */");
        }
        j.a();
        throw null;
    }

    public g jb() {
        E a2 = G.a((Fragment) this, Ra()).a(g.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (g) a2;
    }

    public final void a(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        if (recyclerData instanceof CategoryItem) {
            CategoryItem categoryItem = (CategoryItem) recyclerData;
            c.a(b.a(this), d.l.a(d.f4738a, categoryItem.getSlug(), false, categoryItem.getName(), categoryItem.getReferrer(), 2, null));
            return;
        }
        throw new IllegalStateException("Check failed.");
    }
}
