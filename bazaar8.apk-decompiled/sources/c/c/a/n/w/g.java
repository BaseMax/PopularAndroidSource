package c.c.a.n.w;

import c.c.a.c.d.e;
import c.c.a.n.c.a.b;
import com.farsitel.bazaar.analytics.model.what.SearchHistoryItemClick;
import com.farsitel.bazaar.analytics.model.what.SearchPredictionItemClick;
import com.farsitel.bazaar.ui.search.SearchFragment;
import com.farsitel.bazaar.ui.search.SearchHistoryItem;
import com.farsitel.bazaar.ui.search.SearchHistoryType;
import h.f.b.j;

/* compiled from: SearchFragment.kt */
public final class g implements a<SearchHistoryItem> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchFragment f7043a;

    public g(SearchFragment searchFragment) {
        this.f7043a = searchFragment;
    }

    public void a(SearchHistoryItem searchHistoryItem) {
        j.b(searchHistoryItem, "item");
    }

    public void a(SearchHistoryItem searchHistoryItem, int i2) {
        int i3 = i2;
        j.b(searchHistoryItem, "item");
        if (searchHistoryItem.b() == SearchHistoryType.NONE) {
            SearchFragment searchFragment = this.f7043a;
            String a2 = searchHistoryItem.a();
            String d2 = SearchFragment.d(this.f7043a);
            String referrer = searchHistoryItem.getReferrer();
            if (referrer == null) {
                referrer = e.a();
            }
            b.a(searchFragment, new SearchPredictionItemClick(a2, d2, i3, referrer), null, null, 6, null);
        } else {
            b.a(this.f7043a, new SearchHistoryItemClick(i3, searchHistoryItem.a(), e.a()), null, null, 6, null);
        }
        this.f7043a.Da = true;
        this.f7043a.c(searchHistoryItem.a());
        SearchFragment.a(this.f7043a, null, null, searchHistoryItem.getReferrer(), 3, null);
    }
}
