package me.a.a.a.a.a;

import android.view.View;
import android.widget.ScrollView;

public final class e implements c {

    /* renamed from: a  reason: collision with root package name */
    protected final ScrollView f8687a;

    public e(ScrollView scrollView) {
        this.f8687a = scrollView;
    }

    public final View getView() {
        return this.f8687a;
    }

    public final boolean isInAbsoluteStart() {
        return !this.f8687a.canScrollVertically(-1);
    }

    public final boolean isInAbsoluteEnd() {
        return !this.f8687a.canScrollVertically(1);
    }
}
