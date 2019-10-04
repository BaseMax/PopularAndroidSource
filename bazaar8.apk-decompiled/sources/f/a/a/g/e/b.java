package f.a.a.g.e;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import f.a.a.e.b.C1072n;
import f.a.a.e.g;
import java.util.List;

/* compiled from: InlineListAdapter */
public class b extends RecyclerView.a<a> {

    /* renamed from: c  reason: collision with root package name */
    public g f14478c;

    /* renamed from: d  reason: collision with root package name */
    public List<C1072n> f14479d;

    /* renamed from: e  reason: collision with root package name */
    public int f14480e;

    /* renamed from: f  reason: collision with root package name */
    public RecyclerView f14481f;

    /* renamed from: g  reason: collision with root package name */
    public NestedScrollView f14482g;

    /* compiled from: InlineListAdapter */
    public static class a extends RecyclerView.w {
        public a(View view) {
            super(view);
        }

        public View B() {
            return this.f891b;
        }
    }

    public b(g gVar, List<C1072n> list, int i2) {
        this.f14478c = gVar;
        this.f14479d = list;
        this.f14480e = i2;
    }

    public void a(RecyclerView recyclerView) {
        super.a(recyclerView);
        this.f14481f = recyclerView;
    }

    public NestedScrollView c(RecyclerView recyclerView) {
        View view;
        boolean z;
        View view2 = recyclerView;
        if (this.f14482g == null) {
            do {
                view = (View) view2.getParent();
                z = view instanceof NestedScrollView;
                view2 = view;
            } while (!z);
            this.f14482g = (NestedScrollView) view;
        }
        return this.f14482g;
    }

    public final View e() {
        if (this.f14478c.f() != null) {
            return this.f14478c.f().getCurrentFocus();
        }
        return null;
    }

    public void a(C1072n nVar) {
        a((List<C1072n>) new InlineListAdapter$1(this, nVar));
    }

    public void b(C1072n nVar) {
        int indexOf = this.f14479d.indexOf(nVar);
        this.f14479d.remove(indexOf);
        e(indexOf);
    }

    public void a(List<C1072n> list) {
        float f2;
        boolean z;
        NestedScrollView c2 = c(this.f14481f);
        int scrollY = c2.getScrollY();
        boolean z2 = c2.getChildAt(0).getBottom() - (c2.getHeight() + scrollY) < 10;
        if (this.f14479d.size() > (this.f14480e * 5) - 1) {
            int size = this.f14479d.size() - this.f14480e;
            f2 = 0.0f;
            for (int i2 = 0; i2 < size; i2++) {
                View c3 = this.f14481f.getLayoutManager().c(i2);
                if (c3 != null) {
                    f2 += (float) c3.getHeight();
                }
            }
            for (int i3 = 0; i3 < size; i3++) {
                this.f14479d.remove(0);
            }
            z = true;
        } else {
            z = false;
            f2 = 0.0f;
        }
        int size2 = this.f14479d.size();
        this.f14479d.addAll(size2, list);
        if (z) {
            d();
        } else if (list.size() == 1) {
            d(size2);
        } else {
            b(size2, list.size());
        }
        View e2 = e();
        if (z2) {
            c2.postDelayed(new a(this, c2, e2), 500);
        } else if (f2 > 0.0f) {
            int i4 = (int) (((float) scrollY) - f2);
            if (i4 >= 0) {
                c2.scrollTo(0, i4);
                return;
            }
            c2.e(130);
            if (e2 != null) {
                e2.requestFocus();
            }
        }
    }

    public a b(ViewGroup viewGroup, int i2) {
        Context f2 = this.f14478c.f();
        if (f2 == null) {
            f2 = this.f14478c.getApplicationContext();
        }
        return new a(LayoutInflater.from(f2).inflate(i2, viewGroup, false));
    }

    public int b(int i2) {
        return this.f14479d.get(i2).b();
    }

    /* renamed from: a */
    public void b(a aVar, int i2) {
        this.f14479d.get(i2).a(this.f14478c, aVar.B());
    }

    public int a() {
        return this.f14479d.size();
    }
}
