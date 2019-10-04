package c.c.a.n.w;

import android.view.KeyEvent;
import android.widget.TextView;
import com.farsitel.bazaar.ui.search.SearchFragment;

/* compiled from: SearchFragment.kt */
final class i implements TextView.OnEditorActionListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchFragment f7045a;

    public i(SearchFragment searchFragment) {
        this.f7045a = searchFragment;
    }

    public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 != 3) {
            return false;
        }
        SearchFragment.a(this.f7045a, null, null, null, 7, null);
        return true;
    }
}
