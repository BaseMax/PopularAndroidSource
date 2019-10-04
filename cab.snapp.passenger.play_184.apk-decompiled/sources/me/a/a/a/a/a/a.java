package me.a.a.a.a.a;

import android.view.View;
import android.widget.AbsListView;

public final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    protected final AbsListView f8679a;

    public a(AbsListView absListView) {
        this.f8679a = absListView;
    }

    public final View getView() {
        return this.f8679a;
    }

    public final boolean isInAbsoluteStart() {
        return this.f8679a.getChildCount() > 0 && !canScrollListUp();
    }

    public final boolean isInAbsoluteEnd() {
        return this.f8679a.getChildCount() > 0 && !canScrollListDown();
    }

    public final boolean canScrollListUp() {
        int top = this.f8679a.getChildAt(0).getTop();
        if (this.f8679a.getFirstVisiblePosition() > 0 || top < this.f8679a.getListPaddingTop()) {
            return true;
        }
        return false;
    }

    public final boolean canScrollListDown() {
        int childCount = this.f8679a.getChildCount();
        int count = this.f8679a.getCount();
        int firstVisiblePosition = this.f8679a.getFirstVisiblePosition() + childCount;
        int bottom = this.f8679a.getChildAt(childCount - 1).getBottom();
        if (firstVisiblePosition < count || bottom > this.f8679a.getHeight() - this.f8679a.getListPaddingBottom()) {
            return true;
        }
        return false;
    }
}
