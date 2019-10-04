package me.a.a.a.a.a;

import android.view.View;
import androidx.viewpager.widget.ViewPager;

public final class g implements ViewPager.OnPageChangeListener, c {

    /* renamed from: a  reason: collision with root package name */
    protected final ViewPager f8689a;

    /* renamed from: b  reason: collision with root package name */
    protected int f8690b = 0;
    protected float c;

    public final void onPageScrollStateChanged(int i) {
    }

    public final void onPageSelected(int i) {
    }

    public g(ViewPager viewPager) {
        this.f8689a = viewPager;
        this.f8689a.addOnPageChangeListener(this);
        this.f8690b = this.f8689a.getCurrentItem();
        this.c = 0.0f;
    }

    public final View getView() {
        return this.f8689a;
    }

    public final boolean isInAbsoluteStart() {
        return this.f8690b == 0 && this.c == 0.0f;
    }

    public final boolean isInAbsoluteEnd() {
        return this.f8690b == this.f8689a.getAdapter().getCount() - 1 && this.c == 0.0f;
    }

    public final void onPageScrolled(int i, float f, int i2) {
        this.f8690b = i;
        this.c = f;
    }
}
