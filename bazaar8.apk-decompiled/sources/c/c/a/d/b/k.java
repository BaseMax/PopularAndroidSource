package c.c.a.d.b;

import androidx.recyclerview.widget.RecyclerView;
import h.f.b.j;

/* compiled from: RecyclerViewExt.kt */
public final class k {
    public static final void a(RecyclerView recyclerView) {
        j.b(recyclerView, "$this$removeAllItemDecorations");
        while (recyclerView.getItemDecorationCount() > 0) {
            recyclerView.j(0);
        }
    }
}
