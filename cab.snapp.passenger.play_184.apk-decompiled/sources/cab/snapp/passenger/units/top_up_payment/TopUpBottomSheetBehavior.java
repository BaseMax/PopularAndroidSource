package cab.snapp.passenger.units.top_up_payment;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

class TopUpBottomSheetBehavior extends BottomSheetBehavior<FrameLayout> {
    private boolean l = true;

    public TopUpBottomSheetBehavior() {
    }

    public TopUpBottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setEnabled(boolean z) {
        this.l = z;
    }

    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, MotionEvent motionEvent) {
        if (!this.l) {
            return false;
        }
        return super.onInterceptTouchEvent(coordinatorLayout, frameLayout, motionEvent);
    }

    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, MotionEvent motionEvent) {
        if (!this.l) {
            return false;
        }
        return super.onTouchEvent(coordinatorLayout, frameLayout, motionEvent);
    }

    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, View view, View view2, int i, int i2) {
        if (!this.l) {
            return false;
        }
        return super.onStartNestedScroll(coordinatorLayout, frameLayout, view, view2, i, i2);
    }

    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, View view, int i, int i2, int[] iArr, int i3) {
        if (this.l) {
            super.onNestedPreScroll(coordinatorLayout, frameLayout, view, i, i2, iArr, i3);
        }
    }

    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, View view, int i) {
        if (this.l) {
            super.onStopNestedScroll(coordinatorLayout, frameLayout, view, i);
        }
    }

    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, View view, float f, float f2) {
        if (!this.l) {
            return false;
        }
        return super.onNestedPreFling(coordinatorLayout, frameLayout, view, f, f2);
    }
}
