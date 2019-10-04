package c.c.a.n.w;

import com.farsitel.bazaar.ui.search.SearchFragment;
import com.farsitel.bazaar.ui.search.SearchHistoryItem;
import h.f.b.j;

/* compiled from: SearchFragment.kt */
public final class k implements o {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchFragment f7047a;

    public k(SearchFragment searchFragment) {
        this.f7047a = searchFragment;
    }

    public void a(SearchHistoryItem searchHistoryItem) {
        j.b(searchHistoryItem, "searchHistoryItem");
        SearchFragment.e(this.f7047a).a(searchHistoryItem);
        this.f7047a.a(searchHistoryItem);
    }
}
