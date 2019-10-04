package b.b.f.a;

import android.os.SystemClock;
import android.view.MenuItem;
import b.b.f.a.h;
import b.b.g.O;

/* compiled from: CascadingMenuPopup */
class g implements O {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ h f1845a;

    public g(h hVar) {
        this.f1845a = hVar;
    }

    public void a(k kVar, MenuItem menuItem) {
        h.a aVar = null;
        this.f1845a.f1852h.removeCallbacksAndMessages(null);
        int size = this.f1845a.f1854j.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (kVar == this.f1845a.f1854j.get(i2).f1858b) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 != -1) {
            int i3 = i2 + 1;
            if (i3 < this.f1845a.f1854j.size()) {
                aVar = this.f1845a.f1854j.get(i3);
            }
            this.f1845a.f1852h.postAtTime(new f(this, aVar, menuItem, kVar), kVar, SystemClock.uptimeMillis() + 200);
        }
    }

    public void b(k kVar, MenuItem menuItem) {
        this.f1845a.f1852h.removeCallbacksAndMessages(kVar);
    }
}
