package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.customview.widget.ViewDragHelper;

public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public static final int SWIPE_DIRECTION_ANY = 2;
    public static final int SWIPE_DIRECTION_END_TO_START = 1;
    public static final int SWIPE_DIRECTION_START_TO_END = 0;

    /* renamed from: a  reason: collision with root package name */
    ViewDragHelper f3803a;

    /* renamed from: b  reason: collision with root package name */
    a f3804b;
    int c = 2;
    float d = 0.5f;
    float e = 0.0f;
    float f = 0.5f;
    private boolean g;
    private float h = 0.0f;
    private boolean i;
    private final ViewDragHelper.Callback j = new ViewDragHelper.Callback() {

        /* renamed from: b  reason: collision with root package name */
        private int f3806b;
        private int c = -1;

        public final boolean tryCaptureView(View view, int i) {
            return this.c == -1 && SwipeDismissBehavior.this.canSwipeDismissView(view);
        }

        public final void onViewCaptured(View view, int i) {
            this.c = i;
            this.f3806b = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        public final void onViewDragStateChanged(int i) {
            if (SwipeDismissBehavior.this.f3804b != null) {
                SwipeDismissBehavior.this.f3804b.onDragStateChanged(i);
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:23:0x005d, code lost:
            if (java.lang.Math.abs(r7.getLeft() - r6.f3806b) >= java.lang.Math.round(((float) r7.getWidth()) * r6.f3805a.d)) goto L_0x005f;
         */
        /* JADX WARNING: Removed duplicated region for block: B:27:0x0064  */
        /* JADX WARNING: Removed duplicated region for block: B:32:0x0071  */
        /* JADX WARNING: Removed duplicated region for block: B:35:0x0081  */
        /* JADX WARNING: Removed duplicated region for block: B:37:0x008c A[ADDED_TO_REGION] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onViewReleased(android.view.View r7, float r8, float r9) {
            /*
                r6 = this;
                r9 = -1
                r6.c = r9
                int r9 = r7.getWidth()
                r0 = 0
                r1 = 0
                r2 = 1
                int r3 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
                if (r3 == 0) goto L_0x0043
                int r3 = androidx.core.view.ViewCompat.getLayoutDirection(r7)
                if (r3 != r2) goto L_0x0016
                r3 = 1
                goto L_0x0017
            L_0x0016:
                r3 = 0
            L_0x0017:
                com.google.android.material.behavior.SwipeDismissBehavior r4 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r4 = r4.c
                r5 = 2
                if (r4 != r5) goto L_0x001f
                goto L_0x005f
            L_0x001f:
                com.google.android.material.behavior.SwipeDismissBehavior r4 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r4 = r4.c
                if (r4 != 0) goto L_0x0031
                if (r3 == 0) goto L_0x002c
                int r8 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
                if (r8 >= 0) goto L_0x0061
                goto L_0x005f
            L_0x002c:
                int r8 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
                if (r8 <= 0) goto L_0x0061
                goto L_0x005f
            L_0x0031:
                com.google.android.material.behavior.SwipeDismissBehavior r4 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r4 = r4.c
                if (r4 != r2) goto L_0x0061
                if (r3 == 0) goto L_0x003e
                int r8 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
                if (r8 <= 0) goto L_0x0061
                goto L_0x005f
            L_0x003e:
                int r8 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
                if (r8 >= 0) goto L_0x0061
                goto L_0x005f
            L_0x0043:
                int r8 = r7.getLeft()
                int r0 = r6.f3806b
                int r8 = r8 - r0
                int r0 = r7.getWidth()
                float r0 = (float) r0
                com.google.android.material.behavior.SwipeDismissBehavior r3 = com.google.android.material.behavior.SwipeDismissBehavior.this
                float r3 = r3.d
                float r0 = r0 * r3
                int r0 = java.lang.Math.round(r0)
                int r8 = java.lang.Math.abs(r8)
                if (r8 < r0) goto L_0x0061
            L_0x005f:
                r8 = 1
                goto L_0x0062
            L_0x0061:
                r8 = 0
            L_0x0062:
                if (r8 == 0) goto L_0x0071
                int r8 = r7.getLeft()
                int r0 = r6.f3806b
                if (r8 >= r0) goto L_0x006e
                int r0 = r0 - r9
                goto L_0x006f
            L_0x006e:
                int r0 = r0 + r9
            L_0x006f:
                r1 = 1
                goto L_0x0073
            L_0x0071:
                int r0 = r6.f3806b
            L_0x0073:
                com.google.android.material.behavior.SwipeDismissBehavior r8 = com.google.android.material.behavior.SwipeDismissBehavior.this
                androidx.customview.widget.ViewDragHelper r8 = r8.f3803a
                int r9 = r7.getTop()
                boolean r8 = r8.settleCapturedViewAt(r0, r9)
                if (r8 == 0) goto L_0x008c
                com.google.android.material.behavior.SwipeDismissBehavior$b r8 = new com.google.android.material.behavior.SwipeDismissBehavior$b
                com.google.android.material.behavior.SwipeDismissBehavior r9 = com.google.android.material.behavior.SwipeDismissBehavior.this
                r8.<init>(r7, r1)
                androidx.core.view.ViewCompat.postOnAnimation(r7, r8)
                return
            L_0x008c:
                if (r1 == 0) goto L_0x009b
                com.google.android.material.behavior.SwipeDismissBehavior r8 = com.google.android.material.behavior.SwipeDismissBehavior.this
                com.google.android.material.behavior.SwipeDismissBehavior$a r8 = r8.f3804b
                if (r8 == 0) goto L_0x009b
                com.google.android.material.behavior.SwipeDismissBehavior r8 = com.google.android.material.behavior.SwipeDismissBehavior.this
                com.google.android.material.behavior.SwipeDismissBehavior$a r8 = r8.f3804b
                r8.onDismiss(r7)
            L_0x009b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.AnonymousClass1.onViewReleased(android.view.View, float, float):void");
        }

        public final int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        public final int clampViewPositionHorizontal(View view, int i, int i2) {
            int i3;
            int i4;
            int width;
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            if (SwipeDismissBehavior.this.c != 0) {
                if (SwipeDismissBehavior.this.c != 1) {
                    i3 = this.f3806b - view.getWidth();
                    i4 = view.getWidth() + this.f3806b;
                } else if (z) {
                    i3 = this.f3806b;
                    width = view.getWidth();
                } else {
                    i3 = this.f3806b - view.getWidth();
                    i4 = this.f3806b;
                }
                return SwipeDismissBehavior.a(i3, i, i4);
            } else if (z) {
                i3 = this.f3806b - view.getWidth();
                i4 = this.f3806b;
                return SwipeDismissBehavior.a(i3, i, i4);
            } else {
                i3 = this.f3806b;
                width = view.getWidth();
            }
            i4 = width + i3;
            return SwipeDismissBehavior.a(i3, i, i4);
        }

        public final int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        public final void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            float width = ((float) this.f3806b) + (((float) view.getWidth()) * SwipeDismissBehavior.this.e);
            float width2 = ((float) this.f3806b) + (((float) view.getWidth()) * SwipeDismissBehavior.this.f);
            float f = (float) i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.a(1.0f - SwipeDismissBehavior.a(width, width2, f)));
            }
        }
    };

    public interface a {
        void onDismiss(View view);

        void onDragStateChanged(int i);
    }

    class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final View f3808b;
        private final boolean c;

        b(View view, boolean z) {
            this.f3808b = view;
            this.c = z;
        }

        public final void run() {
            if (SwipeDismissBehavior.this.f3803a == null || !SwipeDismissBehavior.this.f3803a.continueSettling(true)) {
                if (this.c && SwipeDismissBehavior.this.f3804b != null) {
                    SwipeDismissBehavior.this.f3804b.onDismiss(this.f3808b);
                }
                return;
            }
            ViewCompat.postOnAnimation(this.f3808b, this);
        }
    }

    static float a(float f2, float f3, float f4) {
        return (f4 - f2) / (f3 - f2);
    }

    public boolean canSwipeDismissView(View view) {
        return true;
    }

    public void setListener(a aVar) {
        this.f3804b = aVar;
    }

    public void setSwipeDirection(int i2) {
        this.c = i2;
    }

    public void setDragDismissDistance(float f2) {
        this.d = a(f2);
    }

    public void setStartAlphaSwipeDistance(float f2) {
        this.e = a(f2);
    }

    public void setEndAlphaSwipeDistance(float f2) {
        this.f = a(f2);
    }

    public void setSensitivity(float f2) {
        this.h = f2;
        this.i = true;
    }

    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        boolean z = this.g;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.g = coordinatorLayout.isPointInChildBounds(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            z = this.g;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.g = false;
        }
        if (!z) {
            return false;
        }
        if (this.f3803a == null) {
            if (this.i) {
                viewDragHelper = ViewDragHelper.create(coordinatorLayout, this.h, this.j);
            } else {
                viewDragHelper = ViewDragHelper.create(coordinatorLayout, this.j);
            }
            this.f3803a = viewDragHelper;
        }
        return this.f3803a.shouldInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper = this.f3803a;
        if (viewDragHelper == null) {
            return false;
        }
        viewDragHelper.processTouchEvent(motionEvent);
        return true;
    }

    static float a(float f2) {
        return Math.min(Math.max(0.0f, f2), 1.0f);
    }

    static int a(int i2, int i3, int i4) {
        return Math.min(Math.max(i2, i3), i4);
    }

    public int getDragState() {
        ViewDragHelper viewDragHelper = this.f3803a;
        if (viewDragHelper != null) {
            return viewDragHelper.getViewDragState();
        }
        return 0;
    }
}
