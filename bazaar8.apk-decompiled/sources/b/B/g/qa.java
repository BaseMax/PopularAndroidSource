package b.b.g;

import android.view.MenuItem;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;

/* compiled from: Toolbar */
class qa implements ActionMenuView.e {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Toolbar f2228a;

    public qa(Toolbar toolbar) {
        this.f2228a = toolbar;
    }

    public boolean onMenuItemClick(MenuItem menuItem) {
        Toolbar.c cVar = this.f2228a.G;
        if (cVar != null) {
            return cVar.onMenuItemClick(menuItem);
        }
        return false;
    }
}
