package c.c.a.n.b.a;

import c.c.a.n.c.d.g;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.AppDetailDividerItem;
import com.farsitel.bazaar.common.model.appdetail.ArticleItem;
import com.farsitel.bazaar.common.model.appdetail.MoreArticleItem;
import h.a.l;
import h.f.b.j;
import java.util.ArrayList;

/* compiled from: MoreArticleViewModel.kt */
public final class e extends g<RecyclerData, MoreArticleItem> {
    /* renamed from: a */
    public void d(MoreArticleItem moreArticleItem) {
        j.b(moreArticleItem, "params");
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (T next : moreArticleItem.getArticles()) {
            int i3 = i2 + 1;
            if (i2 >= 0) {
                arrayList.add((ArticleItem) next);
                if (i2 != moreArticleItem.getArticles().size() - 1) {
                    AppDetailDividerItem appDetailDividerItem = new AppDetailDividerItem(0, false, 56, 3, null);
                    arrayList.add(appDetailDividerItem);
                }
                i2 = i3;
            } else {
                l.b();
                throw null;
            }
        }
        a(arrayList);
    }
}
