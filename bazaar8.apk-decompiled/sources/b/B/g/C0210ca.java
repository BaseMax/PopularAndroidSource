package b.b.g;

import android.view.KeyEvent;
import android.view.View;
import androidx.appcompat.widget.SearchView;

/* renamed from: b.b.g.ca  reason: case insensitive filesystem */
/* compiled from: SearchView */
class C0210ca implements View.OnKeyListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchView f2158a;

    public C0210ca(SearchView searchView) {
        this.f2158a = searchView;
    }

    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        SearchView searchView = this.f2158a;
        if (searchView.ga == null) {
            return false;
        }
        if (searchView.q.isPopupShowing() && this.f2158a.q.getListSelection() != -1) {
            return this.f2158a.a(view, i2, keyEvent);
        }
        if (this.f2158a.q.a() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i2 != 66) {
            return false;
        }
        view.cancelLongPress();
        SearchView searchView2 = this.f2158a;
        searchView2.a(0, (String) null, searchView2.q.getText().toString());
        return true;
    }
}
