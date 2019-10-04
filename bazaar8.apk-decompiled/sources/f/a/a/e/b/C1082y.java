package f.a.a.e.b;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.y.a.C0346p;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.g.e.b;
import f.a.a.g.e.c;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: f.a.a.e.b.y  reason: case insensitive filesystem */
/* compiled from: ListInflater */
public class C1082y extends C1072n {

    /* renamed from: c  reason: collision with root package name */
    public List<C1072n> f14282c;

    /* renamed from: d  reason: collision with root package name */
    public String f14283d;

    /* renamed from: e  reason: collision with root package name */
    public String f14284e;

    /* renamed from: f  reason: collision with root package name */
    public AtomicBoolean f14285f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f14286g;

    /* renamed from: h  reason: collision with root package name */
    public int f14287h;

    /* renamed from: f.a.a.e.b.y$a */
    /* compiled from: ListInflater */
    public interface a {
        void a();
    }

    public C1082y() {
        this(false);
    }

    public C1082y(boolean z) {
        this.f14285f = new AtomicBoolean(false);
        this.f14287h = Integer.MAX_VALUE;
        this.f14286g = z;
    }

    public int b() {
        return f.inline_list;
    }

    public void c(String str) {
        this.f14283d = str;
    }

    public void d(String str) {
        this.f14284e = str;
    }

    public void a(List<C1072n> list) {
        this.f14282c = list;
    }

    public View a(g gVar, View view) {
        RecyclerView recyclerView = (RecyclerView) view.findViewById(e.recyclerView);
        recyclerView.setNestedScrollingEnabled(false);
        b bVar = new b(gVar, this.f14282c, this.f14287h);
        View findViewById = view.findViewById(e.inlineListTopBorder);
        recyclerView.setAdapter(bVar);
        recyclerView.setLayoutManager(new LinearLayoutManager(gVar.getApplicationContext(), 1, false));
        RecyclerView.h a2 = a(gVar);
        if (a2 != null) {
            recyclerView.a(a2);
        }
        findViewById.setVisibility(8);
        if (this.f14286g) {
            recyclerView.k(this.f14282c.size() - 1);
        }
        if (this.f14284e != null) {
            C1079v vVar = new C1079v(this, gVar, bVar, new c(), recyclerView);
            C1081x xVar = new C1081x(this, bVar, recyclerView, gVar, vVar);
            recyclerView.post(xVar);
        }
        return view;
    }

    public RecyclerView.h a(g gVar) {
        return new C0346p(gVar.f().getApplicationContext(), 1);
    }

    public void a(int i2) {
        this.f14287h = i2;
    }
}
