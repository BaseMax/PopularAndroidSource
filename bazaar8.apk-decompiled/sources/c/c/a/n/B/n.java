package c.c.a.n.b;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import c.c.a.c.d.c;
import c.c.a.d.b.d;
import c.c.a.i.c;
import c.c.a.n.b.d.a;
import c.c.a.n.b.t;
import c.c.a.n.c.a.b;
import com.farsitel.bazaar.analytics.model.what.AppAuthorItemClick;
import com.farsitel.bazaar.analytics.model.what.AppCategoryButtonClick;
import com.farsitel.bazaar.analytics.model.what.AverageRateStarsClick;
import com.farsitel.bazaar.analytics.model.what.InstallButtonClick;
import com.farsitel.bazaar.analytics.model.what.LaunchButtonClick;
import com.farsitel.bazaar.analytics.model.what.PauseDownloadButtonClick;
import com.farsitel.bazaar.analytics.model.what.RunInlineButtonClick;
import com.farsitel.bazaar.analytics.model.what.UninstallButtonClick;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;
import com.farsitel.bazaar.common.model.appdetail.ReviewActionItem;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;
import h.f.b.j;
import ir.cafebazaar.inline.ui.InlineActivity;

/* compiled from: AppDetailFragment.kt */
public final class n implements a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppDetailFragment f6257a;

    public n(AppDetailFragment appDetailFragment) {
        this.f6257a = appDetailFragment;
    }

    public void a(AppInfoItem appInfoItem) {
        j.b(appInfoItem, "item");
        AppDetailFragment appDetailFragment = this.f6257a;
        b.a(appDetailFragment, new LaunchButtonClick(AppDetailFragment.a(appDetailFragment).b()), null, null, 6, null);
        Intent c2 = AppDetailFragment.h(this.f6257a).c(appInfoItem.getPackageName());
        if (c2 != null) {
            this.f6257a.a(c2);
        }
    }

    public void b(AppInfoItem appInfoItem) {
        j.b(appInfoItem, "item");
        Intent b2 = InlineActivity.b(appInfoItem.getPackageName());
        b2.putExtra("ref", appInfoItem.getReferrer());
        this.f6257a.a(b2);
    }

    public void c(AppInfoItem appInfoItem) {
        j.b(appInfoItem, "item");
        Intent a2 = AppDetailFragment.h(this.f6257a).a(appInfoItem.getPackageName());
        if (a2 == null) {
            AppDetailFragment appDetailFragment = this.f6257a;
            b.a(appDetailFragment, new RunInlineButtonClick(AppDetailFragment.a(appDetailFragment).b()), null, null, 6, null);
            d(appInfoItem);
            return;
        }
        AppDetailFragment appDetailFragment2 = this.f6257a;
        b.a(appDetailFragment2, new InstallButtonClick(AppDetailFragment.a(appDetailFragment2).b()), null, null, 6, null);
        Uri b2 = AppDetailFragment.h(this.f6257a).b(appInfoItem.getPackageName());
        Context E = this.f6257a.E();
        if (b2 != null && E != null && d.a(E, a2, b2)) {
            this.f6257a.a(a2);
        }
    }

    public void d(AppInfoItem appInfoItem) {
        j.b(appInfoItem, "item");
        AppDetailFragment.h(this.f6257a).b(appInfoItem);
    }

    public void e(AppInfoItem appInfoItem) {
        j.b(appInfoItem, "item");
        AppDetailFragment appDetailFragment = this.f6257a;
        b.a(appDetailFragment, new PauseDownloadButtonClick(AppDetailFragment.a(appDetailFragment).b()), null, null, 6, null);
        AppDetailFragment.h(this.f6257a).c(appInfoItem);
    }

    public void a(ReviewActionItem reviewActionItem) {
        j.b(reviewActionItem, "reviewAction");
        AppDetailFragment appDetailFragment = this.f6257a;
        b.a(appDetailFragment, new AverageRateStarsClick(AppDetailFragment.a(appDetailFragment).b()), null, null, 6, null);
        this.f6257a.a(reviewActionItem);
    }

    public void b(String str, String str2) {
        j.b(str, "categorySlug");
        j.b(str2, "categoryName");
        AppDetailFragment appDetailFragment = this.f6257a;
        b.a(appDetailFragment, new AppCategoryButtonClick(AppDetailFragment.a(appDetailFragment).b()), null, null, 6, null);
        c.a(b.w.b.b.a(this.f6257a), t.g.a(t.f6266a, str, false, str2, new c.b().a(this.f6257a.Za().b()), 2, null));
    }

    public void a(String str, String str2) {
        j.b(str, "authorSlug");
        j.b(str2, "authorName");
        AppDetailFragment appDetailFragment = this.f6257a;
        b.a(appDetailFragment, new AppAuthorItemClick(str2, AppDetailFragment.a(appDetailFragment).b()), null, null, 6, null);
        c.c.a.i.c.a(b.w.b.b.a(this.f6257a), t.g.a(t.f6266a, str, false, str2, new c.a().a(this.f6257a.Za().b()), 2, null));
    }

    public void a(String str) {
        j.b(str, "packageName");
        AppDetailFragment appDetailFragment = this.f6257a;
        b.a(appDetailFragment, new UninstallButtonClick(AppDetailFragment.a(appDetailFragment).b()), null, null, 6, null);
        AppDetailFragment appDetailFragment2 = this.f6257a;
        appDetailFragment2.a(AppDetailFragment.h(appDetailFragment2).d(str));
    }
}
