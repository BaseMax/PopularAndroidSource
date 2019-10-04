package c.c.a.n.c.c;

import android.content.Context;
import android.net.Uri;
import c.c.a.b.f;
import c.c.a.n.c.c.a.a;
import com.farsitel.bazaar.common.model.page.HamiItem;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import h.f.b.j;

/* compiled from: PageFragment.kt */
public final class d implements a<HamiItem> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ n f6323a;

    public d(n nVar) {
        this.f6323a = nVar;
    }

    public void a(HamiItem hamiItem) {
        j.b(hamiItem, "appItem");
        PageAppItem app = hamiItem.getApp();
        if (app != null) {
            EntityState entityState = app.getEntityState();
            if (entityState != null) {
                n nVar = this.f6323a;
                PageAppItem app2 = hamiItem.getApp();
                if (app2 != null) {
                    nVar.a(entityState, app2);
                } else {
                    j.a();
                    throw null;
                }
            }
        }
    }

    public void b(HamiItem hamiItem) {
        j.b(hamiItem, "appItem");
        if (hamiItem.getApp() != null) {
            n nVar = this.f6323a;
            PageAppItem app = hamiItem.getApp();
            if (app != null) {
                nVar.a(app.getPackageName(), hamiItem.getReferrer());
            } else {
                j.a();
                throw null;
            }
        } else if (hamiItem.getLink() != null) {
            Context E = this.f6323a.E();
            String link = hamiItem.getLink();
            if (link != null) {
                Uri parse = Uri.parse(link);
                j.a((Object) parse, "Uri.parse(this)");
                f.a(E, parse, hamiItem.getReferrer());
                return;
            }
            j.a();
            throw null;
        }
    }
}
