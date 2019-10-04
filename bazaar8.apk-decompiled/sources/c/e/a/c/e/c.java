package c.e.a.c.e;

import android.view.MenuItem;
import android.view.View;
import b.b.f.a.o;
import b.b.f.a.t;

/* compiled from: BottomNavigationMenuView */
class c implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f11258a;

    public c(d dVar) {
        this.f11258a = dVar;
    }

    public void onClick(View view) {
        o itemData = ((a) view).getItemData();
        if (!this.f11258a.z.a((MenuItem) itemData, (t) this.f11258a.y, 0)) {
            itemData.setChecked(true);
        }
    }
}
