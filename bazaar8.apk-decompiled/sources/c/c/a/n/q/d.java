package c.c.a.n.q;

import android.content.pm.PackageInfo;
import b.c.a.c.a;
import c.c.a.c.b.h;
import c.c.a.c.h.e;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.ui.malicious.MaliciousAppHeaderItem;
import h.a.u;
import h.f.b.j;
import i.a.H;
import java.util.List;

/* compiled from: MaliciousAppViewModel.kt */
final class d<I, O> implements a<X, Y> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MaliciousAppViewModel$makeData$1 f6768a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ H f6769b;

    public d(MaliciousAppViewModel$makeData$1 maliciousAppViewModel$makeData$1, H h2) {
        this.f6768a = maliciousAppViewModel$makeData$1;
        this.f6769b = h2;
    }

    /* renamed from: a */
    public final List<PageTypeItem> apply(List<? extends PageTypeItem> list) {
        String str;
        j.a((Object) list, "list");
        for (PageTypeItem pageTypeItem : list) {
            if (pageTypeItem instanceof ListItem.App) {
                ListItem.App app = (ListItem.App) pageTypeItem;
                PageAppItem app2 = app.getApp();
                PackageInfo e2 = e.f4731a.e(this.f6768a.this$0.B, app.getApp().getPackageName());
                if (e2 != null) {
                    str = h.a(e2, this.f6768a.this$0.B, this.f6768a.this$0.q());
                    if (str != null) {
                        app2.setAppName(str);
                        app.getApp().setEntityState(EntityState.MALICIOUS_APP);
                    }
                }
                str = "";
                app2.setAppName(str);
                app.getApp().setEntityState(EntityState.MALICIOUS_APP);
            } else {
                throw new IllegalStateException("Check failed.");
            }
        }
        if (!(!list.isEmpty())) {
            return list;
        }
        List<PageTypeItem> a2 = u.a(list);
        a2.add(this.f6768a.this$0.A, new MaliciousAppHeaderItem(list.size()));
        return a2;
    }
}
