package com.farsitel.bazaar.player.quality;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.f.b.j;

/* compiled from: AutoCloseBottomSheetBehavior.kt */
public final class AutoCloseBottomSheetBehavior<V extends View> extends BottomSheetBehavior<V> {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AutoCloseBottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        j.b(context, "context");
        j.b(attributeSet, "attrs");
    }

    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        j.b(coordinatorLayout, "parent");
        j.b(v, "child");
        j.b(motionEvent, "event");
        if (motionEvent.getAction() == 0 && c() == 3) {
            Rect rect = new Rect();
            v.getGlobalVisibleRect(rect);
            if (!rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
                c(4);
            }
        }
        return super.onInterceptTouchEvent(coordinatorLayout, v, motionEvent);
    }
}
