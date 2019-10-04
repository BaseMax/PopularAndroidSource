package c.c.a.n.w;

import androidx.databinding.ViewDataBinding;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.ui.search.SearchHistoryItem;
import com.farsitel.bazaar.ui.search.SearchHistoryViewType;
import h.f.b.j;

/* compiled from: SearchHistoryAdapter.kt */
public final class p extends n<SearchHistoryItem> {
    public final ViewDataBinding v;
    public final o w;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public p(ViewDataBinding viewDataBinding, o oVar) {
        super(viewDataBinding);
        j.b(viewDataBinding, "dataBinding");
        j.b(oVar, "searchHistoryCommunicator");
        this.v = viewDataBinding;
        this.w = oVar;
    }

    /* renamed from: a */
    public void b(SearchHistoryItem searchHistoryItem) {
        j.b(searchHistoryItem, "item");
        super.b(searchHistoryItem);
        this.v.a(52, (Object) this.w);
        this.v.a(36, (Object) Integer.valueOf(g()));
        this.v.a(3, (Object) Boolean.valueOf(searchHistoryItem.getViewType() == SearchHistoryViewType.HISTORY.ordinal()));
    }
}
