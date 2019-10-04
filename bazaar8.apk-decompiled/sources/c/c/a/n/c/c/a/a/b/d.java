package c.c.a.n.c.c.a.a.b;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.o;
import com.farsitel.bazaar.common.model.page.MovieItem;
import com.farsitel.bazaar.common.model.page.MovieVitrinSection;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import h.f.b.j;

/* compiled from: MovieVitrinViewHolder.kt */
public final class d extends o<MovieVitrinSection, MovieItem> {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public d(ViewGroup viewGroup, RecyclerView.o oVar, PageViewConfigItem pageViewConfigItem, o.a aVar) {
        super(viewGroup, oVar, aVar, pageViewConfigItem);
        j.b(viewGroup, "parent");
        j.b(oVar, "recyclerPool");
        j.b(aVar, "communicator");
    }

    public a<MovieItem> E() {
        return new c();
    }
}
