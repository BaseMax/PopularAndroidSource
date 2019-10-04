package c.c.a.n.A;

import android.content.pm.PackageInfo;
import b.c.a.c.a;
import c.c.a.c.b.h;
import c.c.a.c.h.e;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsHeaderItem;
import com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsViewModel$makeData$1;
import h.a.l;
import h.a.u;
import h.f.b.j;
import java.util.List;

/* compiled from: UpgradableAppsViewModel.kt */
final class f<I, O> implements a<X, Y> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UpgradableAppsViewModel$makeData$1.AnonymousClass1 f6158a;

    public f(UpgradableAppsViewModel$makeData$1.AnonymousClass1 r1) {
        this.f6158a = r1;
    }

    /* renamed from: a */
    public final List<PageTypeItem> apply(List<? extends PageTypeItem> list) {
        String str;
        j.a((Object) list, "appItems");
        for (PageTypeItem pageTypeItem : list) {
            if (pageTypeItem instanceof ListItem.App) {
                ListItem.App app = (ListItem.App) pageTypeItem;
                PageAppItem app2 = app.getApp();
                PackageInfo e2 = e.f4731a.e(this.f6158a.this$0.this$0.s(), app.getApp().getPackageName());
                if (e2 != null) {
                    str = h.a(e2, this.f6158a.this$0.this$0.s(), this.f6158a.this$0.this$0.t());
                    if (str != null) {
                        app2.setAppName(str);
                        app.getApp().setApplicationInstalled(this.f6158a.this$0.this$0.D.p(app.getApp().getPackageName()));
                    }
                }
                str = "";
                app2.setAppName(str);
                app.getApp().setApplicationInstalled(this.f6158a.this$0.this$0.D.p(app.getApp().getPackageName()));
            } else {
                throw new IllegalStateException("Check failed.");
            }
        }
        if (!(!list.isEmpty())) {
            return l.a();
        }
        List<PageTypeItem> a2 = u.a(list);
        a2.add(this.f6158a.this$0.this$0.A, new UpgradableAppsHeaderItem(list.size(), true));
        return a2;
    }
}
