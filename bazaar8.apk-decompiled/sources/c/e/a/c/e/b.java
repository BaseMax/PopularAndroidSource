package c.e.a.c.e;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import b.b.f.a.k;
import b.b.f.a.o;

/* compiled from: BottomNavigationMenu */
public final class b extends k {
    public b(Context context) {
        super(context);
    }

    public MenuItem a(int i2, int i3, int i4, CharSequence charSequence) {
        if (size() + 1 <= 5) {
            s();
            MenuItem a2 = super.a(i2, i3, i4, charSequence);
            if (a2 instanceof o) {
                ((o) a2).c(true);
            }
            r();
            return a2;
        }
        throw new IllegalArgumentException("Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()");
    }

    public SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        throw new UnsupportedOperationException("BottomNavigationView does not support submenus");
    }
}
