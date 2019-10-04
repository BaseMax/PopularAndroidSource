package b.b.f.a;

import android.view.MenuItem;
import b.b.f.a.h;

/* compiled from: CascadingMenuPopup */
class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ h.a f1841a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ MenuItem f1842b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ k f1843c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ g f1844d;

    public f(g gVar, h.a aVar, MenuItem menuItem, k kVar) {
        this.f1844d = gVar;
        this.f1841a = aVar;
        this.f1842b = menuItem;
        this.f1843c = kVar;
    }

    public void run() {
        h.a aVar = this.f1841a;
        if (aVar != null) {
            this.f1844d.f1845a.B = true;
            aVar.f1858b.a(false);
            this.f1844d.f1845a.B = false;
        }
        if (this.f1842b.isEnabled() && this.f1842b.hasSubMenu()) {
            this.f1843c.a(this.f1842b, 4);
        }
    }
}
