package c.c.a.n.c.c;

import c.c.a.n.c.c.a.a;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.common.model.page.VitrinItem;
import h.f.b.j;

/* compiled from: PageFragment.kt */
public final class c implements a<ListItem> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ n f6317a;

    public c(n nVar) {
        this.f6317a = nVar;
    }

    public void a(ListItem listItem) {
        j.b(listItem, "appItem");
        if (listItem instanceof ListItem.App) {
            ListItem.App app = (ListItem.App) listItem;
            this.f6317a.a(app.getApp().getEntityState(), app.getApp());
        }
    }

    public void b(ListItem listItem) {
        j.b(listItem, "appItem");
        if (listItem instanceof ListItem.App) {
            ListItem.App app = (ListItem.App) listItem;
            this.f6317a.a(app.getApp().getPackageName(), app.getApp().getReferrer());
        } else if (listItem instanceof ListItem.Hami) {
            PageAppItem app2 = ((ListItem.Hami) listItem).getHami().getApp();
            if (app2 != null) {
                this.f6317a.a(app2.getPackageName(), app2.getReferrer());
            }
        } else if (listItem instanceof VitrinItem.Hami) {
            PageAppItem app3 = ((VitrinItem.Hami) listItem).getHami().getApp();
            if (app3 != null) {
                this.f6317a.a(app3.getPackageName(), app3.getReferrer());
            }
        }
    }
}
