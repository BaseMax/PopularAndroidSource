package com.farsitel.bazaar.data.feature.appdetail;

import com.farsitel.bazaar.common.model.appdetail.AppInfo;
import com.farsitel.bazaar.common.model.appdetail.Package;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.a;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.data.feature.appdetail.AppDetailRepository$getAppDetail$2$getReviewAsync$1", f = "AppDetailRepository.kt", l = {36}, m = "invokeSuspend")
/* compiled from: AppDetailRepository.kt */
final class AppDetailRepository$getAppDetail$2$getReviewAsync$1 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends ReviewItem>>>, Object> {
    public final /* synthetic */ Either $appDetailResponse;
    public int label;
    public H p$;
    public final /* synthetic */ AppDetailRepository$getAppDetail$2 this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppDetailRepository$getAppDetail$2$getReviewAsync$1(AppDetailRepository$getAppDetail$2 appDetailRepository$getAppDetail$2, Either either, b bVar) {
        super(2, bVar);
        this.this$0 = appDetailRepository$getAppDetail$2;
        this.$appDetailResponse = either;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        AppDetailRepository$getAppDetail$2$getReviewAsync$1 appDetailRepository$getAppDetail$2$getReviewAsync$1 = new AppDetailRepository$getAppDetail$2$getReviewAsync$1(this.this$0, this.$appDetailResponse, bVar);
        appDetailRepository$getAppDetail$2$getReviewAsync$1.p$ = (H) obj;
        return appDetailRepository$getAppDetail$2$getReviewAsync$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((AppDetailRepository$getAppDetail$2$getReviewAsync$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            c.c.a.e.d.r.c c2 = this.this$0.this$0.f5026c;
            AppDetailRepository$getAppDetail$2 appDetailRepository$getAppDetail$2 = this.this$0;
            String str = appDetailRepository$getAppDetail$2.$packageName;
            int i3 = appDetailRepository$getAppDetail$2.$fromIndex;
            int i4 = appDetailRepository$getAppDetail$2.$toIndex;
            String defaultSortTypeChoice = ((AppInfo) ((Either.Success) this.$appDetailResponse).getValue()).getComment().getDefaultSortTypeChoice();
            Package packageInfo = ((AppInfo) ((Either.Success) this.$appDetailResponse).getValue()).getPackageInfo();
            Long a3 = packageInfo != null ? a.a(packageInfo.getVersionCode()) : null;
            this.label = 1;
            obj = c2.a(str, i3, i4, defaultSortTypeChoice, a3, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return obj;
    }
}
