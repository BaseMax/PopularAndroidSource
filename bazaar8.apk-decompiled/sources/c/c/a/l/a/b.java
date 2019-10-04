package c.c.a.l.a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.l.l;
import h.f.b.j;
import h.h;
import java.util.List;

/* compiled from: TrackAdapter.kt */
public final class b extends RecyclerView.a<g> {

    /* renamed from: c  reason: collision with root package name */
    public final List<c> f6089c;

    /* renamed from: d  reason: collision with root package name */
    public final h.f.a.b<Integer, h> f6090d;

    public b(List<c> list, h.f.a.b<? super Integer, h> bVar) {
        j.b(list, "items");
        j.b(bVar, "click");
        this.f6089c = list;
        this.f6090d = bVar;
    }

    /* renamed from: a */
    public void b(g gVar, int i2) {
        j.b(gVar, "holder");
        gVar.a(this.f6089c.get(i2), i2, this.f6090d);
    }

    public int a() {
        return this.f6089c.size();
    }

    public g b(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(l.item_bottom_sheet_row, viewGroup, false);
        j.a((Object) inflate, "from(parent.context).inf…sheet_row, parent, false)");
        return new g(inflate);
    }
}
