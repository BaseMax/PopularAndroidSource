package c.c.a.n.c.d;

import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import c.c.a.f.La;
import c.c.a.n.c.d.b.c;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.ui.base.recycler.loadmore.MoreItem;
import h.a.l;
import h.a.u;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BaseRecyclerAdapter.kt */
public abstract class a<T extends RecyclerData> extends RecyclerView.a<n<T>> {

    /* renamed from: c  reason: collision with root package name */
    public m<T> f6353c;

    /* renamed from: d  reason: collision with root package name */
    public c.c.a.n.c.b.a f6354d;

    /* renamed from: e  reason: collision with root package name */
    public ArrayList<T> f6355e = new ArrayList<>();

    public final void a(m<T> mVar) {
        this.f6353c = mVar;
    }

    public <T extends RecyclerData> void a(T t, int i2) {
        j.b(t, "data");
    }

    public abstract n<T> c(ViewGroup viewGroup, int i2);

    public final ArrayList<T> e() {
        return this.f6355e;
    }

    public final void f() {
        int a2 = l.a(this.f6355e);
        this.f6355e.remove(a2);
        e(a2);
    }

    public final void g() {
        if (this.f6355e.size() != 0 && (u.h(this.f6355e) instanceof MoreItem)) {
            f();
        }
    }

    public final void a(c.c.a.n.c.b.a aVar) {
        this.f6354d = aVar;
    }

    public final void a(ArrayList<T> arrayList) {
        j.b(arrayList, "value");
        this.f6355e = arrayList;
        d();
    }

    public n<T> b(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        if (i2 != R.layout.item_load_more) {
            n<T> c2 = c(viewGroup, i2);
            if (c2 != null) {
                c2.a(this.f6353c);
                if (c2 != null) {
                    return c2;
                }
            }
            throw new RuntimeException("ViewHolder must not be null");
        }
        La a2 = La.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        j.a((Object) a2, "ItemLoadMoreBinding.infl….context), parent, false)");
        c cVar = new c(a2, this.f6354d);
        View view = cVar.f891b;
        j.a((Object) view, "itemView");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof StaggeredGridLayoutManager.b)) {
            layoutParams = null;
        }
        StaggeredGridLayoutManager.b bVar = (StaggeredGridLayoutManager.b) layoutParams;
        if (bVar != null) {
            bVar.a(true);
        }
        return cVar;
    }

    public int a() {
        return this.f6355e.size();
    }

    /* renamed from: a */
    public void b(n<T> nVar, int i2) {
        j.b(nVar, "holder");
        if (nVar.g() >= 0 && !(this.f6355e.get(nVar.g()) instanceof MoreItem)) {
            a((RecyclerData) this.f6355e.get(i2), i2);
        }
        T t = this.f6355e.get(i2);
        j.a((Object) t, "items[position]");
        nVar.a((RecyclerData) t);
    }

    public final void a(T t) {
        j.b(t, "item");
        g();
        this.f6355e.add(t);
        d(l.a(this.f6355e));
    }

    public int b(int i2) {
        return ((RecyclerData) this.f6355e.get(i2)).getViewType();
    }

    public void b(RecyclerView recyclerView) {
        j.b(recyclerView, "recyclerView");
        this.f6353c = null;
        this.f6354d = null;
        super.b(recyclerView);
    }

    public final void a(List<? extends T> list) {
        j.b(list, "items");
        g();
        int size = this.f6355e.size();
        this.f6355e.addAll(list);
        b(size, list.size());
    }

    /* renamed from: a */
    public void d(n<T> nVar) {
        j.b(nVar, "holder");
        if (Build.VERSION.SDK_INT >= 19) {
            nVar.D();
        }
        nVar.C();
        super.d(nVar);
    }
}
