package c.c.a.n.k;

import android.content.Context;
import c.c.a.e.d.a.a;
import c.c.a.e.d.j.c;
import c.c.a.n.c.c.u;
import c.c.a.n.l.i;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.data.entity.FehrestTabPage;
import h.f.b.j;
import java.util.List;

/* compiled from: EditorChoiceViewModel.kt */
public final class d extends i {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public d(Context context, u uVar, c cVar, a aVar) {
        super(context, uVar, cVar, aVar);
        j.b(context, "context");
        j.b(uVar, "env");
        j.b(cVar, "fehrestRepository");
        j.b(aVar, "accountRepository");
    }

    public void a(FehrestTabPage fehrestTabPage) {
        j.b(fehrestTabPage, "page");
        Page page = fehrestTabPage.getPages().get(0);
        List<T> a2 = h.a.u.a(page.getItems());
        String title = page.getTitle();
        if (title == null) {
            title = "";
        }
        a2.add(0, new ListItem.EditorChoiceHeader(title));
        a(Page.copy$default(page, null, null, null, a2, null, 23, null));
    }
}
