package b.G.a;

import androidx.viewpager.widget.ViewPager;

/* compiled from: ViewPager */
class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ViewPager f1312a;

    public d(ViewPager viewPager) {
        this.f1312a = viewPager;
    }

    public void run() {
        this.f1312a.setScrollState(0);
        this.f1312a.j();
    }
}
