package b.b.g;

import android.view.View;
import androidx.appcompat.widget.SearchView;

/* compiled from: SearchView */
class Z implements View.OnFocusChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchView f2141a;

    public Z(SearchView searchView) {
        this.f2141a = searchView;
    }

    public void onFocusChange(View view, boolean z) {
        SearchView searchView = this.f2141a;
        View.OnFocusChangeListener onFocusChangeListener = searchView.N;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(searchView, z);
        }
    }
}
