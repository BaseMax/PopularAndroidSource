package c.c.a.n.w;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import c.c.a.f.C0473wb;
import c.c.a.n.c.d.a;
import com.farsitel.bazaar.ui.search.SearchHistoryItem;
import com.farsitel.bazaar.ui.search.SearchHistoryViewType;
import h.f.b.j;

/* compiled from: SearchHistoryAdapter.kt */
public final class n extends a<SearchHistoryItem> {

    /* renamed from: f  reason: collision with root package name */
    public final o f7053f;

    public n(o oVar) {
        j.b(oVar, "searchHistoryCommunicator");
        this.f7053f = oVar;
    }

    public c.c.a.n.c.d.n<SearchHistoryItem> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        if (i2 == SearchHistoryViewType.HISTORY.ordinal() || i2 == SearchHistoryViewType.NONE.ordinal()) {
            C0473wb a2 = C0473wb.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a2, "ItemSearchHistoryBinding….context), parent, false)");
            return new p(a2, this.f7053f);
        }
        throw new IllegalStateException("invalid type");
    }
}
