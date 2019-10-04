package c.e.a.c.e;

import android.view.MenuItem;
import b.b.f.a.k;
import com.google.android.material.bottomnavigation.BottomNavigationView;

/* compiled from: BottomNavigationView */
class f implements k.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BottomNavigationView f11271a;

    public f(BottomNavigationView bottomNavigationView) {
        this.f11271a = bottomNavigationView;
    }

    public void a(k kVar) {
    }

    public boolean a(k kVar, MenuItem menuItem) {
        boolean z = true;
        if (this.f11271a.f13340f == null || menuItem.getItemId() != this.f11271a.getSelectedItemId()) {
            if (this.f11271a.f13339e == null || this.f11271a.f13339e.a(menuItem)) {
                z = false;
            }
            return z;
        }
        this.f11271a.f13340f.b(menuItem);
        return true;
    }
}
