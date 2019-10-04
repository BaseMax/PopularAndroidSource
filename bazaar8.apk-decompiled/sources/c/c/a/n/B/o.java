package c.c.a.n.b;

import b.o.a.C0290n;
import c.c.a.n.b.d.a.a;
import c.c.a.n.v.e;
import com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;
import com.farsitel.bazaar.ui.appdetail.ScreenShotPagerItem;
import com.farsitel.bazaar.ui.screenshot.ScreenshotFragment;
import h.f.b.j;
import java.util.List;

/* compiled from: AppDetailFragment.kt */
public final class o implements a.C0090a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppDetailFragment f6258a;

    public o(AppDetailFragment appDetailFragment) {
        this.f6258a = appDetailFragment;
    }

    public void a(int i2, List<AppScreenshotItem> list) {
        j.b(list, "imageListURL");
        ScreenshotFragment screenshotFragment = new ScreenshotFragment();
        screenshotFragment.m(new e(new ScreenShotPagerItem(i2, list)).b());
        C0290n D = this.f6258a.D();
        j.a((Object) D, "childFragmentManager");
        screenshotFragment.a(D);
    }
}
