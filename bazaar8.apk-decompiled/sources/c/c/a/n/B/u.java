package c.c.a.n.b;

import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.AppDescriptionItem;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;
import com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem;
import com.farsitel.bazaar.common.model.appdetail.AppMyRateItem;
import com.farsitel.bazaar.common.model.appdetail.AppReviewInfoItem;
import com.farsitel.bazaar.common.model.appdetail.AppReviewItem;
import com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem;
import com.farsitel.bazaar.common.model.appdetail.ArticleItem;
import com.farsitel.bazaar.common.model.appdetail.ArticleTitleItem;
import com.farsitel.bazaar.common.model.appdetail.ChangeLogItem;
import com.farsitel.bazaar.common.model.appdetail.DeveloperInfoSectionItem;
import com.farsitel.bazaar.common.model.appdetail.EditorChoiceItem;
import com.farsitel.bazaar.common.model.appdetail.MoreArticleItem;
import com.farsitel.bazaar.common.model.appdetail.ReportItem;
import com.farsitel.bazaar.common.model.appdetail.ReviewActionItem;
import com.farsitel.bazaar.common.model.appdetail.ScreenshotSectionItem;
import com.farsitel.bazaar.common.model.page.VitrinItem;
import h.a.l;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AppDetailResponseOrder.kt */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public static final ArrayList<Class<?>> f6283a = l.a((T[]) new Class[]{AppInfoItem.class, EditorChoiceItem.class, ChangeLogItem.class, AppMyRateItem.class, DeveloperInfoSectionItem.class, AppScreenshotItem.class, ScreenshotSectionItem.class, AppDescriptionItem.class, AppMoreDescriptionItem.class, AppReviewInfoItem.class, AppReviewItem.class, ReviewActionItem.class, VitrinItem.App.class, ArticleTitleItem.class, ArticleItem.class, MoreArticleItem.class, ReportItem.class});

    /* renamed from: b  reason: collision with root package name */
    public static final ArrayList<Class<?>> f6284b = l.a((T[]) new Class[]{AppInfoItem.class, EditorChoiceItem.class, AppScreenshotItem.class, ScreenshotSectionItem.class, ChangeLogItem.class, AppDescriptionItem.class, AppMoreDescriptionItem.class, AppMyRateItem.class, AppReviewInfoItem.class, AppReviewItem.class, ReviewActionItem.class, VitrinItem.App.class, DeveloperInfoSectionItem.class, ArticleTitleItem.class, ArticleItem.class, MoreArticleItem.class, ReportItem.class});

    /* renamed from: c  reason: collision with root package name */
    public static final u f6285c = new u();

    public final List<RecyclerData> a(List<? extends RecyclerData> list, boolean z) {
        j.b(list, "list");
        ArrayList<Class<?>> arrayList = z ? f6283a : f6284b;
        ArrayList arrayList2 = new ArrayList();
        for (Class cls : arrayList) {
            ArrayList arrayList3 = new ArrayList();
            for (T next : list) {
                if (j.a((Object) ((RecyclerData) next).getClass(), (Object) cls)) {
                    arrayList3.add(next);
                }
            }
            arrayList2.addAll(arrayList3);
        }
        return arrayList2;
    }
}
