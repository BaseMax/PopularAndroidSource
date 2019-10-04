package b.b.g;

import android.view.View;
import androidx.appcompat.widget.SearchView;

/* renamed from: b.b.g.ba  reason: case insensitive filesystem */
/* compiled from: SearchView */
class C0208ba implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchView f2155a;

    public C0208ba(SearchView searchView) {
        this.f2155a = searchView;
    }

    public void onClick(View view) {
        SearchView searchView = this.f2155a;
        if (view == searchView.u) {
            searchView.i();
        } else if (view == searchView.w) {
            searchView.h();
        } else if (view == searchView.v) {
            searchView.j();
        } else if (view == searchView.x) {
            searchView.l();
        } else if (view == searchView.q) {
            searchView.d();
        }
    }
}
