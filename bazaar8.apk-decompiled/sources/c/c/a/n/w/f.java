package c.c.a.n.w;

import android.view.View;
import b.w.b.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.ui.search.SearchFragment;
import java.util.List;

/* compiled from: SearchFragment.kt */
final class f implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchFragment f7042a;

    public f(SearchFragment searchFragment) {
        this.f7042a = searchFragment;
    }

    public final void onClick(View view) {
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (valueOf != null && valueOf.intValue() == R.id.searchParentView) {
            Resource e2 = SearchFragment.f(this.f7042a).e();
            if (e2 != null) {
                List list = (List) e2.a();
                if (list != null && (!list.isEmpty())) {
                    this.f7042a.a(SearchFragment.SearchViewMode.SHOWING_RESULT);
                }
            }
        } else if (valueOf != null && valueOf.intValue() == R.id.voiceSearchButton) {
            this.f7042a.Cb();
        } else if (valueOf != null && valueOf.intValue() == R.id.clearSearchInputButton) {
            this.f7042a.zb();
        } else if (valueOf != null && valueOf.intValue() == R.id.backButton) {
            String a2 = this.f7042a.Za().a();
            if (!(a2 == null || a2.length() == 0)) {
                b.a(this.f7042a).i();
            }
            c.c.a.d.b.f.a(this.f7042a, null, 1, null);
        } else if (valueOf != null && valueOf.intValue() == R.id.searchButton) {
            SearchFragment.a(this.f7042a, null, null, null, 7, null);
        }
    }
}
