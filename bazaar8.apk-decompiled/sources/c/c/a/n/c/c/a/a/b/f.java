package c.c.a.n.c.c.a.a.b;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.o;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.farsitel.bazaar.common.model.page.PromoItem;
import com.farsitel.bazaar.common.model.page.PromoVitrinSection;
import h.f.b.j;

/* compiled from: PromoVitrinViewHolder.kt */
public final class f extends o<PromoVitrinSection, PromoItem> {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public f(ViewGroup viewGroup, RecyclerView.o oVar, PageViewConfigItem pageViewConfigItem, o.a aVar) {
        super(viewGroup, oVar, aVar, pageViewConfigItem);
        j.b(viewGroup, "parent");
        j.b(oVar, "recyclerPool");
        j.b(aVar, "communicator");
    }

    public a<PromoItem> E() {
        return new e();
    }
}
