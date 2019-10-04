package me.a.a.a.a.a;

import android.view.View;
import android.widget.HorizontalScrollView;

public final class b implements c {

    /* renamed from: a  reason: collision with root package name */
    protected final HorizontalScrollView f8680a;

    public b(HorizontalScrollView horizontalScrollView) {
        this.f8680a = horizontalScrollView;
    }

    public final View getView() {
        return this.f8680a;
    }

    public final boolean isInAbsoluteStart() {
        return !this.f8680a.canScrollHorizontally(-1);
    }

    public final boolean isInAbsoluteEnd() {
        return !this.f8680a.canScrollHorizontally(1);
    }
}
