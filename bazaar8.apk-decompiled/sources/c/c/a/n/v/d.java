package c.c.a.n.v;

import androidx.viewpager.widget.ViewPager;
import com.farsitel.bazaar.ui.appdetail.ScreenShotPagerItem;
import com.farsitel.bazaar.ui.screenshot.ScreenshotFragment;

/* compiled from: ScreenshotFragment.kt */
public final class d implements ViewPager.f {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ScreenshotFragment f7028a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ScreenShotPagerItem f7029b;

    public d(ScreenshotFragment screenshotFragment, ScreenShotPagerItem screenShotPagerItem) {
        this.f7028a = screenshotFragment;
        this.f7029b = screenShotPagerItem;
    }

    public void a(int i2) {
    }

    public void a(int i2, float f2, int i3) {
    }

    public void b(int i2) {
        this.f7028a.c(i2, this.f7029b.a().size());
    }
}
