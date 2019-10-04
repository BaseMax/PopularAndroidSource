package b.b.f.a;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import b.f.C0243b;
import b.i.d.a.b;
import java.util.Iterator;
import java.util.Map;

/* compiled from: BaseMenuWrapper */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public final Context f1836a;

    /* renamed from: b  reason: collision with root package name */
    public Map<b, MenuItem> f1837b;

    /* renamed from: c  reason: collision with root package name */
    public Map<b.i.d.a.c, SubMenu> f1838c;

    public c(Context context) {
        this.f1836a = context;
    }

    public final MenuItem a(MenuItem menuItem) {
        if (!(menuItem instanceof b)) {
            return menuItem;
        }
        b bVar = (b) menuItem;
        if (this.f1837b == null) {
            this.f1837b = new C0243b();
        }
        MenuItem menuItem2 = this.f1837b.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        p pVar = new p(this.f1836a, bVar);
        this.f1837b.put(bVar, pVar);
        return pVar;
    }

    public final void b() {
        Map<b, MenuItem> map = this.f1837b;
        if (map != null) {
            map.clear();
        }
        Map<b.i.d.a.c, SubMenu> map2 = this.f1838c;
        if (map2 != null) {
            map2.clear();
        }
    }

    public final void b(int i2) {
        Map<b, MenuItem> map = this.f1837b;
        if (map != null) {
            Iterator<b> it = map.keySet().iterator();
            while (true) {
                if (it.hasNext()) {
                    if (i2 == it.next().getItemId()) {
                        it.remove();
                        break;
                    }
                } else {
                    break;
                }
            }
        }
    }

    public final SubMenu a(SubMenu subMenu) {
        if (!(subMenu instanceof b.i.d.a.c)) {
            return subMenu;
        }
        b.i.d.a.c cVar = (b.i.d.a.c) subMenu;
        if (this.f1838c == null) {
            this.f1838c = new C0243b();
        }
        SubMenu subMenu2 = this.f1838c.get(cVar);
        if (subMenu2 == null) {
            subMenu2 = new B(this.f1836a, cVar);
            this.f1838c.put(cVar, subMenu2);
        }
        return subMenu2;
    }

    public final void a(int i2) {
        Map<b, MenuItem> map = this.f1837b;
        if (map != null) {
            Iterator<b> it = map.keySet().iterator();
            while (it.hasNext()) {
                if (i2 == it.next().getGroupId()) {
                    it.remove();
                }
            }
        }
    }
}
