package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.a;
import com.google.android.material.internal.k;
import io.fabric.sdk.android.services.settings.t;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@CoordinatorLayout.DefaultBehavior(Behavior.class)
public class AppBarLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    boolean f3772a;

    /* renamed from: b  reason: collision with root package name */
    int f3773b;
    WindowInsetsCompat c;
    private int d;
    private int e;
    private int f;
    private List<a> g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private int[] l;

    protected static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public int f3775b;
        private int c;
        private ValueAnimator d;
        private int e = -1;
        private boolean f;
        private float g;
        private WeakReference<View> h;
        private a i;

        protected static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() {
                public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                public final SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(parcel, null);
                }

                public final SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };

            /* renamed from: a  reason: collision with root package name */
            int f3778a;

            /* renamed from: b  reason: collision with root package name */
            float f3779b;
            boolean c;

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f3778a = parcel.readInt();
                this.f3779b = parcel.readFloat();
                this.c = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.f3778a);
                parcel.writeFloat(this.f3779b);
                parcel.writeByte(this.c ? (byte) 1 : 0);
            }
        }

        public static abstract class a<T extends AppBarLayout> {
            public abstract boolean canDrag(T t);
        }

        private static boolean a(int i2, int i3) {
            return (i2 & i3) == i3;
        }

        /* access modifiers changed from: package-private */
        public final /* synthetic */ int a(View view) {
            return ((AppBarLayout) view).getTotalScrollRange();
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Removed duplicated region for block: B:36:0x00aa  */
        /* JADX WARNING: Removed duplicated region for block: B:37:0x00ac  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final /* synthetic */ int a(androidx.coordinatorlayout.widget.CoordinatorLayout r8, android.view.View r9, int r10, int r11, int r12) {
            /*
                r7 = this;
                com.google.android.material.appbar.AppBarLayout r9 = (com.google.android.material.appbar.AppBarLayout) r9
                int r0 = r7.a()
                r1 = 0
                if (r11 == 0) goto L_0x00b2
                if (r0 < r11) goto L_0x00b2
                if (r0 > r12) goto L_0x00b2
                int r10 = androidx.core.math.MathUtils.clamp((int) r10, (int) r11, (int) r12)
                if (r0 == r10) goto L_0x00b4
                boolean r11 = r9.f3772a
                if (r11 == 0) goto L_0x008d
                int r11 = java.lang.Math.abs(r10)
                int r12 = r9.getChildCount()
                r2 = 0
            L_0x0020:
                if (r2 >= r12) goto L_0x008d
                android.view.View r3 = r9.getChildAt(r2)
                android.view.ViewGroup$LayoutParams r4 = r3.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r4 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r4
                android.view.animation.Interpolator r5 = r4.getScrollInterpolator()
                int r6 = r3.getTop()
                if (r11 < r6) goto L_0x008a
                int r6 = r3.getBottom()
                if (r11 > r6) goto L_0x008a
                if (r5 == 0) goto L_0x008d
                int r12 = r4.getScrollFlags()
                r2 = r12 & 1
                if (r2 == 0) goto L_0x005e
                int r2 = r3.getHeight()
                int r6 = r4.topMargin
                int r2 = r2 + r6
                int r4 = r4.bottomMargin
                int r2 = r2 + r4
                int r2 = r2 + r1
                r12 = r12 & 2
                if (r12 == 0) goto L_0x005c
                int r12 = androidx.core.view.ViewCompat.getMinimumHeight(r3)
                int r12 = r2 - r12
                goto L_0x005f
            L_0x005c:
                r12 = r2
                goto L_0x005f
            L_0x005e:
                r12 = 0
            L_0x005f:
                boolean r2 = androidx.core.view.ViewCompat.getFitsSystemWindows(r3)
                if (r2 == 0) goto L_0x006a
                int r2 = r9.getTopInset()
                int r12 = r12 - r2
            L_0x006a:
                if (r12 <= 0) goto L_0x008d
                int r2 = r3.getTop()
                int r11 = r11 - r2
                float r12 = (float) r12
                float r11 = (float) r11
                float r11 = r11 / r12
                float r11 = r5.getInterpolation(r11)
                float r12 = r12 * r11
                int r11 = java.lang.Math.round(r12)
                int r12 = java.lang.Integer.signum(r10)
                int r2 = r3.getTop()
                int r2 = r2 + r11
                int r11 = r12 * r2
                goto L_0x008e
            L_0x008a:
                int r2 = r2 + 1
                goto L_0x0020
            L_0x008d:
                r11 = r10
            L_0x008e:
                boolean r12 = r7.setTopAndBottomOffset(r11)
                int r2 = r0 - r10
                int r11 = r10 - r11
                r7.f3775b = r11
                if (r12 != 0) goto L_0x00a1
                boolean r11 = r9.f3772a
                if (r11 == 0) goto L_0x00a1
                r8.dispatchDependentViewsChanged(r9)
            L_0x00a1:
                int r11 = r7.getTopAndBottomOffset()
                r9.a((int) r11)
                if (r10 >= r0) goto L_0x00ac
                r11 = -1
                goto L_0x00ad
            L_0x00ac:
                r11 = 1
            L_0x00ad:
                a((androidx.coordinatorlayout.widget.CoordinatorLayout) r8, r9, (int) r10, (int) r11, (boolean) r1)
                r1 = r2
                goto L_0x00b4
            L_0x00b2:
                r7.f3775b = r1
            L_0x00b4:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, int, int, int):int");
        }

        /* access modifiers changed from: package-private */
        public final /* synthetic */ int b(View view) {
            return -((AppBarLayout) view).getDownNestedScrollRange();
        }

        /* access modifiers changed from: package-private */
        public final /* synthetic */ boolean c(View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            a aVar = this.i;
            if (aVar != null) {
                return aVar.canDrag(appBarLayout);
            }
            WeakReference<View> weakReference = this.h;
            if (weakReference != null) {
                View view2 = (View) weakReference.get();
                if (view2 == null || !view2.isShown() || view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            return true;
        }

        public BaseBehavior() {
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:13:0x0029, code lost:
            if (((r3.getTotalScrollRange() != 0) && r2.getHeight() - r4.getHeight() <= r3.getHeight()) != false) goto L_0x002d;
         */
        /* JADX WARNING: Removed duplicated region for block: B:16:0x002f  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean onStartNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout r2, T r3, android.view.View r4, android.view.View r5, int r6, int r7) {
            /*
                r1 = this;
                r5 = r6 & 2
                r6 = 1
                r0 = 0
                if (r5 == 0) goto L_0x002c
                boolean r5 = r3.isLiftOnScroll()
                if (r5 != 0) goto L_0x002d
                int r5 = r3.getTotalScrollRange()
                if (r5 == 0) goto L_0x0014
                r5 = 1
                goto L_0x0015
            L_0x0014:
                r5 = 0
            L_0x0015:
                if (r5 == 0) goto L_0x0028
                int r2 = r2.getHeight()
                int r4 = r4.getHeight()
                int r2 = r2 - r4
                int r3 = r3.getHeight()
                if (r2 > r3) goto L_0x0028
                r2 = 1
                goto L_0x0029
            L_0x0028:
                r2 = 0
            L_0x0029:
                if (r2 == 0) goto L_0x002c
                goto L_0x002d
            L_0x002c:
                r6 = 0
            L_0x002d:
                if (r6 == 0) goto L_0x0036
                android.animation.ValueAnimator r2 = r1.d
                if (r2 == 0) goto L_0x0036
                r2.cancel()
            L_0x0036:
                r2 = 0
                r1.h = r2
                r1.c = r7
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.onStartNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, android.view.View, android.view.View, int, int):boolean");
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, T t, View view, int i2, int i3, int[] iArr, int i4) {
            int i5;
            int i6;
            if (i3 != 0) {
                if (i3 < 0) {
                    int i7 = -t.getTotalScrollRange();
                    i6 = i7;
                    i5 = t.getDownNestedPreScrollRange() + i7;
                } else {
                    i6 = -t.getUpNestedPreScrollRange();
                    i5 = 0;
                }
                if (i6 != i5) {
                    iArr[1] = b(coordinatorLayout, t, i3, i6, i5);
                    a(i3, t, view, i4);
                }
            }
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, T t, View view, int i2, int i3, int i4, int i5, int i6) {
            if (i5 < 0) {
                b(coordinatorLayout, t, i5, -t.getDownNestedScrollRange(), 0);
                a(i5, t, view, i6);
            }
            if (t.isLiftOnScroll()) {
                t.a(view.getScrollY() > 0);
            }
        }

        private void a(int i2, T t, View view, int i3) {
            if (i3 == 1) {
                int a2 = a();
                if ((i2 < 0 && a2 == 0) || (i2 > 0 && a2 == (-t.getDownNestedScrollRange()))) {
                    ViewCompat.stopNestedScroll(view, 1);
                }
            }
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, T t, View view, int i2) {
            if (this.c == 0 || i2 == 1) {
                a(coordinatorLayout, t);
            }
            this.h = new WeakReference<>(view);
        }

        public void setDragCallback(a aVar) {
            this.i = aVar;
        }

        private void a(final CoordinatorLayout coordinatorLayout, final T t, int i2) {
            int i3;
            int abs = Math.abs(a() - i2);
            float abs2 = Math.abs(0.0f);
            if (abs2 > 0.0f) {
                i3 = Math.round((((float) abs) / abs2) * 1000.0f) * 3;
            } else {
                i3 = (int) (((((float) abs) / ((float) t.getHeight())) + 1.0f) * 150.0f);
            }
            int a2 = a();
            if (a2 == i2) {
                ValueAnimator valueAnimator = this.d;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.d.cancel();
                }
                return;
            }
            ValueAnimator valueAnimator2 = this.d;
            if (valueAnimator2 == null) {
                this.d = new ValueAnimator();
                this.d.setInterpolator(com.google.android.material.a.a.DECELERATE_INTERPOLATOR);
                this.d.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        BaseBehavior.this.a_(coordinatorLayout, t, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                    }
                });
            } else {
                valueAnimator2.cancel();
            }
            this.d.setDuration((long) Math.min(i3, t.ANALYTICS_FLUSH_INTERVAL_SECS_DEFAULT));
            this.d.setIntValues(new int[]{a2, i2});
            this.d.start();
        }

        private static int a(T t, int i2) {
            int childCount = t.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = t.getChildAt(i3);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (a(layoutParams.getScrollFlags(), 32)) {
                    top -= layoutParams.topMargin;
                    bottom += layoutParams.bottomMargin;
                }
                int i4 = -i2;
                if (top <= i4 && bottom >= i4) {
                    return i3;
                }
            }
            return -1;
        }

        /* access modifiers changed from: private */
        public void a(CoordinatorLayout coordinatorLayout, T t) {
            int a2 = a();
            int a3 = a(t, a2);
            if (a3 >= 0) {
                View childAt = t.getChildAt(a3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int scrollFlags = layoutParams.getScrollFlags();
                if ((scrollFlags & 17) == 17) {
                    int i2 = -childAt.getTop();
                    int i3 = -childAt.getBottom();
                    if (a3 == t.getChildCount() - 1) {
                        i3 += t.getTopInset();
                    }
                    if (a(scrollFlags, 2)) {
                        i3 += ViewCompat.getMinimumHeight(childAt);
                    } else if (a(scrollFlags, 5)) {
                        int minimumHeight = ViewCompat.getMinimumHeight(childAt) + i3;
                        if (a2 < minimumHeight) {
                            i2 = minimumHeight;
                        } else {
                            i3 = minimumHeight;
                        }
                    }
                    if (a(scrollFlags, 32)) {
                        i2 += layoutParams.topMargin;
                        i3 -= layoutParams.bottomMargin;
                    }
                    if (a2 < (i3 + i2) / 2) {
                        i2 = i3;
                    }
                    a(coordinatorLayout, t, MathUtils.clamp(i2, -t.getTotalScrollRange(), 0));
                }
            }
        }

        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, T t, int i2, int i3, int i4, int i5) {
            if (((CoordinatorLayout.LayoutParams) t.getLayoutParams()).height != -2) {
                return super.onMeasureChild(coordinatorLayout, t, i2, i3, i4, i5);
            }
            coordinatorLayout.onMeasureChild(t, i2, i3, View.MeasureSpec.makeMeasureSpec(0, 0), i5);
            return true;
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, T t, int i2) {
            int i3;
            boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, t, i2);
            int pendingAction = t.getPendingAction();
            int i4 = this.e;
            if (i4 >= 0 && (pendingAction & 8) == 0) {
                View childAt = t.getChildAt(i4);
                int i5 = -childAt.getBottom();
                if (this.f) {
                    i3 = ViewCompat.getMinimumHeight(childAt) + t.getTopInset();
                } else {
                    i3 = Math.round(((float) childAt.getHeight()) * this.g);
                }
                a_(coordinatorLayout, t, i5 + i3);
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i6 = -t.getUpNestedPreScrollRange();
                    if (z) {
                        a(coordinatorLayout, t, i6);
                    } else {
                        a_(coordinatorLayout, t, i6);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        a(coordinatorLayout, t, 0);
                    } else {
                        a_(coordinatorLayout, t, 0);
                    }
                }
            }
            t.f3773b = 0;
            this.e = -1;
            setTopAndBottomOffset(MathUtils.clamp(getTopAndBottomOffset(), -t.getTotalScrollRange(), 0));
            a(coordinatorLayout, t, getTopAndBottomOffset(), 0, true);
            t.a(getTopAndBottomOffset());
            return onLayoutChild;
        }

        /* JADX WARNING: Removed duplicated region for block: B:18:0x0048  */
        /* JADX WARNING: Removed duplicated region for block: B:26:0x0061  */
        /* JADX WARNING: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private static void a(androidx.coordinatorlayout.widget.CoordinatorLayout r5, T r6, int r7, int r8, boolean r9) {
            /*
                android.view.View r0 = b((com.google.android.material.appbar.AppBarLayout) r6, (int) r7)
                if (r0 == 0) goto L_0x006e
                android.view.ViewGroup$LayoutParams r1 = r0.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$LayoutParams r1 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r1
                int r1 = r1.getScrollFlags()
                r2 = r1 & 1
                r3 = 1
                r4 = 0
                if (r2 == 0) goto L_0x0041
                int r2 = androidx.core.view.ViewCompat.getMinimumHeight(r0)
                if (r8 <= 0) goto L_0x002f
                r8 = r1 & 12
                if (r8 == 0) goto L_0x002f
                int r7 = -r7
                int r8 = r0.getBottom()
                int r8 = r8 - r2
                int r0 = r6.getTopInset()
                int r8 = r8 - r0
                if (r7 < r8) goto L_0x0041
            L_0x002d:
                r7 = 1
                goto L_0x0042
            L_0x002f:
                r8 = r1 & 2
                if (r8 == 0) goto L_0x0041
                int r7 = -r7
                int r8 = r0.getBottom()
                int r8 = r8 - r2
                int r0 = r6.getTopInset()
                int r8 = r8 - r0
                if (r7 < r8) goto L_0x0041
                goto L_0x002d
            L_0x0041:
                r7 = 0
            L_0x0042:
                boolean r8 = r6.isLiftOnScroll()
                if (r8 == 0) goto L_0x0057
                android.view.View r8 = a((androidx.coordinatorlayout.widget.CoordinatorLayout) r5)
                if (r8 == 0) goto L_0x0057
                int r7 = r8.getScrollY()
                if (r7 <= 0) goto L_0x0056
                r7 = 1
                goto L_0x0057
            L_0x0056:
                r7 = 0
            L_0x0057:
                boolean r7 = r6.a((boolean) r7)
                int r8 = android.os.Build.VERSION.SDK_INT
                r0 = 11
                if (r8 < r0) goto L_0x006e
                if (r9 != 0) goto L_0x006b
                if (r7 == 0) goto L_0x006e
                boolean r5 = b((androidx.coordinatorlayout.widget.CoordinatorLayout) r5, r6)
                if (r5 == 0) goto L_0x006e
            L_0x006b:
                r6.jumpDrawablesToCurrentState()
            L_0x006e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.a(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        private static boolean b(CoordinatorLayout coordinatorLayout, T t) {
            List<View> dependents = coordinatorLayout.getDependents(t);
            int size = dependents.size();
            int i2 = 0;
            while (i2 < size) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) dependents.get(i2).getLayoutParams()).getBehavior();
                if (!(behavior instanceof ScrollingViewBehavior)) {
                    i2++;
                } else if (((ScrollingViewBehavior) behavior).getOverlayTop() != 0) {
                    return true;
                } else {
                    return false;
                }
            }
            return false;
        }

        private static View b(AppBarLayout appBarLayout, int i2) {
            int abs = Math.abs(i2);
            int childCount = appBarLayout.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = appBarLayout.getChildAt(i3);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        private static View a(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (childAt instanceof NestedScrollingChild) {
                    return childAt;
                }
            }
            return null;
        }

        /* access modifiers changed from: package-private */
        public final int a() {
            return getTopAndBottomOffset() + this.f3775b;
        }

        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, T t) {
            Parcelable onSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, t);
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = t.getChildCount();
            boolean z = false;
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = t.getChildAt(i2);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset > 0 || bottom < 0) {
                    i2++;
                } else {
                    SavedState savedState = new SavedState(onSaveInstanceState);
                    savedState.f3778a = i2;
                    if (bottom == ViewCompat.getMinimumHeight(childAt) + t.getTopInset()) {
                        z = true;
                    }
                    savedState.c = z;
                    savedState.f3779b = ((float) bottom) / ((float) childAt.getHeight());
                    return savedState;
                }
            }
            return onSaveInstanceState;
        }

        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                super.onRestoreInstanceState(coordinatorLayout, t, savedState.getSuperState());
                this.e = savedState.f3778a;
                this.g = savedState.f3779b;
                this.f = savedState.c;
                return;
            }
            super.onRestoreInstanceState(coordinatorLayout, t, parcelable);
            this.e = -1;
        }
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            return super.onLayoutChild(coordinatorLayout, appBarLayout, i);
        }

        public /* bridge */ /* synthetic */ boolean onMeasureChild(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.onMeasureChild(coordinatorLayout, appBarLayout, i, i2, i3, i4);
        }

        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            super.onNestedPreScroll(coordinatorLayout, appBarLayout, view, i, i2, iArr, i3);
        }

        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5) {
            super.onNestedScroll(coordinatorLayout, appBarLayout, view, i, i2, i3, i4, i5);
        }

        public /* bridge */ /* synthetic */ void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.onRestoreInstanceState(coordinatorLayout, appBarLayout, parcelable);
        }

        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.onSaveInstanceState(coordinatorLayout, appBarLayout);
        }

        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
            return super.onStartNestedScroll(coordinatorLayout, appBarLayout, view, view2, i, i2);
        }

        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
            super.onStopNestedScroll(coordinatorLayout, appBarLayout, view, i);
        }

        public /* bridge */ /* synthetic */ void setDragCallback(BaseBehavior.a aVar) {
            super.setDragCallback(aVar);
        }

        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i) {
            return super.setLeftAndRightOffset(i);
        }

        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i) {
            return super.setTopAndBottomOffset(i);
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {
        public static final int SCROLL_FLAG_ENTER_ALWAYS = 4;
        public static final int SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED = 8;
        public static final int SCROLL_FLAG_EXIT_UNTIL_COLLAPSED = 2;
        public static final int SCROLL_FLAG_SCROLL = 1;
        public static final int SCROLL_FLAG_SNAP = 16;
        public static final int SCROLL_FLAG_SNAP_MARGINS = 32;

        /* renamed from: a  reason: collision with root package name */
        int f3780a = 1;

        /* renamed from: b  reason: collision with root package name */
        Interpolator f3781b;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.k.AppBarLayout_Layout);
            this.f3780a = obtainStyledAttributes.getInt(a.k.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(a.k.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f3781b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(a.k.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2, f);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.f3780a = layoutParams.f3780a;
            this.f3781b = layoutParams.f3781b;
        }

        public void setScrollFlags(int i) {
            this.f3780a = i;
        }

        public int getScrollFlags() {
            return this.f3780a;
        }

        public void setScrollInterpolator(Interpolator interpolator) {
            this.f3781b = interpolator;
        }

        public Interpolator getScrollInterpolator() {
            return this.f3781b;
        }
    }

    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        /* access modifiers changed from: package-private */
        public final /* synthetic */ View a(List list) {
            return b((List<View>) list);
        }

        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.onLayoutChild(coordinatorLayout, view, i);
        }

        public /* bridge */ /* synthetic */ boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return super.onMeasureChild(coordinatorLayout, view, i, i2, i3, i4);
        }

        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i) {
            return super.setLeftAndRightOffset(i);
        }

        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i) {
            return super.setTopAndBottomOffset(i);
        }

        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.k.ScrollingViewBehavior_Layout);
            setOverlayTop(obtainStyledAttributes.getDimensionPixelSize(a.k.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout b2 = b(coordinatorLayout.getDependencies(view));
            if (b2 != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f3793a;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    b2.setExpanded(false, !z);
                    return true;
                }
            }
            return false;
        }

        /* access modifiers changed from: package-private */
        public final float a(View view) {
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
                int a2 = behavior instanceof BaseBehavior ? ((BaseBehavior) behavior).a() : 0;
                if (downNestedPreScrollRange != 0 && totalScrollRange + a2 <= downNestedPreScrollRange) {
                    return 0.0f;
                }
                int i = totalScrollRange - downNestedPreScrollRange;
                if (i != 0) {
                    return (((float) a2) / ((float) i)) + 1.0f;
                }
            }
            return 0.0f;
        }

        private static AppBarLayout b(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        /* access modifiers changed from: package-private */
        public final int b(View view) {
            if (view instanceof AppBarLayout) {
                return ((AppBarLayout) view).getTotalScrollRange();
            }
            return super.b(view);
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).f3775b) + this.c) - c(view2));
            }
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.isLiftOnScroll()) {
                    appBarLayout.a(view.getScrollY() > 0);
                }
            }
            return false;
        }
    }

    public interface a<T extends AppBarLayout> {
        void onOffsetChanged(T t, int i);
    }

    public interface b extends a<AppBarLayout> {
        void onOffsetChanged(AppBarLayout appBarLayout, int i);
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = -1;
        this.e = -1;
        this.f = -1;
        this.f3773b = 0;
        setOrientation(1);
        if (Build.VERSION.SDK_INT >= 21) {
            b.a(this);
            b.a(this, attributeSet, a.j.Widget_Design_AppBarLayout);
        }
        TypedArray obtainStyledAttributes = k.obtainStyledAttributes(context, attributeSet, a.k.AppBarLayout, 0, a.j.Widget_Design_AppBarLayout, new int[0]);
        ViewCompat.setBackground(this, obtainStyledAttributes.getDrawable(a.k.AppBarLayout_android_background));
        if (obtainStyledAttributes.hasValue(a.k.AppBarLayout_expanded)) {
            a(obtainStyledAttributes.getBoolean(a.k.AppBarLayout_expanded, false), false, false);
        }
        if (Build.VERSION.SDK_INT >= 21 && obtainStyledAttributes.hasValue(a.k.AppBarLayout_elevation)) {
            b.a(this, (float) obtainStyledAttributes.getDimensionPixelSize(a.k.AppBarLayout_elevation, 0));
        }
        if (Build.VERSION.SDK_INT >= 26) {
            if (obtainStyledAttributes.hasValue(a.k.AppBarLayout_android_keyboardNavigationCluster)) {
                setKeyboardNavigationCluster(obtainStyledAttributes.getBoolean(a.k.AppBarLayout_android_keyboardNavigationCluster, false));
            }
            if (obtainStyledAttributes.hasValue(a.k.AppBarLayout_android_touchscreenBlocksFocus)) {
                setTouchscreenBlocksFocus(obtainStyledAttributes.getBoolean(a.k.AppBarLayout_android_touchscreenBlocksFocus, false));
            }
        }
        this.k = obtainStyledAttributes.getBoolean(a.k.AppBarLayout_liftOnScroll, false);
        obtainStyledAttributes.recycle();
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() {
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                AppBarLayout appBarLayout = AppBarLayout.this;
                WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(appBarLayout) ? windowInsetsCompat : null;
                if (!ObjectsCompat.equals(appBarLayout.c, windowInsetsCompat2)) {
                    appBarLayout.c = windowInsetsCompat2;
                    appBarLayout.a();
                }
                return windowInsetsCompat;
            }
        });
    }

    public void addOnOffsetChangedListener(a aVar) {
        if (this.g == null) {
            this.g = new ArrayList();
        }
        if (aVar != null && !this.g.contains(aVar)) {
            this.g.add(aVar);
        }
    }

    public void addOnOffsetChangedListener(b bVar) {
        addOnOffsetChangedListener((a) bVar);
    }

    public void removeOnOffsetChangedListener(a aVar) {
        List<a> list = this.g;
        if (list != null && aVar != null) {
            list.remove(aVar);
        }
    }

    public void removeOnOffsetChangedListener(b bVar) {
        removeOnOffsetChangedListener((a) bVar);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        a();
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0056, code lost:
        if (r3 != false) goto L_0x0058;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onLayout(boolean r2, int r3, int r4, int r5, int r6) {
        /*
            r1 = this;
            super.onLayout(r2, r3, r4, r5, r6)
            r1.a()
            r2 = 0
            r1.f3772a = r2
            int r3 = r1.getChildCount()
            r4 = 0
        L_0x000e:
            r5 = 1
            if (r4 >= r3) goto L_0x0027
            android.view.View r6 = r1.getChildAt(r4)
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            com.google.android.material.appbar.AppBarLayout$LayoutParams r6 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r6
            android.view.animation.Interpolator r6 = r6.getScrollInterpolator()
            if (r6 == 0) goto L_0x0024
            r1.f3772a = r5
            goto L_0x0027
        L_0x0024:
            int r4 = r4 + 1
            goto L_0x000e
        L_0x0027:
            boolean r3 = r1.h
            if (r3 != 0) goto L_0x005c
            boolean r3 = r1.k
            if (r3 != 0) goto L_0x0058
            int r3 = r1.getChildCount()
            r4 = 0
        L_0x0034:
            if (r4 >= r3) goto L_0x0055
            android.view.View r6 = r1.getChildAt(r4)
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            com.google.android.material.appbar.AppBarLayout$LayoutParams r6 = (com.google.android.material.appbar.AppBarLayout.LayoutParams) r6
            int r0 = r6.f3780a
            r0 = r0 & r5
            if (r0 != r5) goto L_0x004d
            int r6 = r6.f3780a
            r6 = r6 & 10
            if (r6 == 0) goto L_0x004d
            r6 = 1
            goto L_0x004e
        L_0x004d:
            r6 = 0
        L_0x004e:
            if (r6 == 0) goto L_0x0052
            r3 = 1
            goto L_0x0056
        L_0x0052:
            int r4 = r4 + 1
            goto L_0x0034
        L_0x0055:
            r3 = 0
        L_0x0056:
            if (r3 == 0) goto L_0x0059
        L_0x0058:
            r2 = 1
        L_0x0059:
            r1.b(r2)
        L_0x005c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.onLayout(boolean, int, int, int, int):void");
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.d = -1;
        this.e = -1;
        this.f = -1;
    }

    public void setOrientation(int i2) {
        if (i2 == 1) {
            super.setOrientation(i2);
            return;
        }
        throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }

    public void setExpanded(boolean z) {
        setExpanded(z, ViewCompat.isLaidOut(this));
    }

    public void setExpanded(boolean z, boolean z2) {
        a(z, z2, true);
    }

    private void a(boolean z, boolean z2, boolean z3) {
        int i2 = 0;
        int i3 = (z ? 1 : 2) | (z2 ? 4 : 0);
        if (z3) {
            i2 = 8;
        }
        this.f3773b = i3 | i2;
        requestLayout();
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    private static LayoutParams b() {
        return new LayoutParams(-1, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    private static LayoutParams a(ViewGroup.LayoutParams layoutParams) {
        if (Build.VERSION.SDK_INT >= 19 && (layoutParams instanceof LinearLayout.LayoutParams)) {
            return new LayoutParams((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public final int getTotalScrollRange() {
        int i2 = this.d;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = layoutParams.f3780a;
            if ((i5 & 1) == 0) {
                break;
            }
            i4 += measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin;
            if ((i5 & 2) != 0) {
                i4 -= ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i4 - getTopInset());
        this.d = max;
        return max;
    }

    /* access modifiers changed from: package-private */
    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    /* access modifiers changed from: package-private */
    public int getDownNestedPreScrollRange() {
        int i2;
        int i3 = this.e;
        if (i3 != -1) {
            return i3;
        }
        int i4 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = layoutParams.f3780a;
            if ((i5 & 5) != 5) {
                if (i4 > 0) {
                    break;
                }
            } else {
                int i6 = i4 + layoutParams.topMargin + layoutParams.bottomMargin;
                if ((i5 & 8) != 0) {
                    i4 = i6 + ViewCompat.getMinimumHeight(childAt);
                } else {
                    if ((i5 & 2) != 0) {
                        i2 = ViewCompat.getMinimumHeight(childAt);
                    } else {
                        i2 = getTopInset();
                    }
                    i4 = i6 + (measuredHeight - i2);
                }
            }
        }
        int max = Math.max(0, i4);
        this.e = max;
        return max;
    }

    /* access modifiers changed from: package-private */
    public int getDownNestedScrollRange() {
        int i2 = this.f;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int i5 = layoutParams.f3780a;
            if ((i5 & 1) == 0) {
                break;
            }
            i4 += measuredHeight;
            if ((i5 & 2) != 0) {
                i4 -= ViewCompat.getMinimumHeight(childAt) + getTopInset();
                break;
            }
            i3++;
        }
        int max = Math.max(0, i4);
        this.f = max;
        return max;
    }

    /* access modifiers changed from: package-private */
    public final void a(int i2) {
        List<a> list = this.g;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                a aVar = this.g.get(i3);
                if (aVar != null) {
                    aVar.onOffsetChanged(this, i2);
                }
            }
        }
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount > 0 ? ViewCompat.getMinimumHeight(getChildAt(childCount - 1)) : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i2) {
        if (this.l == null) {
            this.l = new int[4];
        }
        int[] iArr = this.l;
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + iArr.length);
        iArr[0] = this.i ? a.b.state_liftable : -a.b.state_liftable;
        iArr[1] = (!this.i || !this.j) ? -a.b.state_lifted : a.b.state_lifted;
        iArr[2] = this.i ? a.b.state_collapsible : -a.b.state_collapsible;
        iArr[3] = (!this.i || !this.j) ? -a.b.state_collapsed : a.b.state_collapsed;
        return mergeDrawableStates(onCreateDrawableState, iArr);
    }

    public boolean setLiftable(boolean z) {
        this.h = true;
        return b(z);
    }

    private boolean b(boolean z) {
        if (this.i == z) {
            return false;
        }
        this.i = z;
        refreshDrawableState();
        return true;
    }

    public boolean setLifted(boolean z) {
        return a(z);
    }

    /* access modifiers changed from: package-private */
    public final boolean a(boolean z) {
        if (this.j == z) {
            return false;
        }
        this.j = z;
        refreshDrawableState();
        return true;
    }

    public void setLiftOnScroll(boolean z) {
        this.k = z;
    }

    public boolean isLiftOnScroll() {
        return this.k;
    }

    @Deprecated
    public void setTargetElevation(float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            b.a(this, f2);
        }
    }

    /* access modifiers changed from: package-private */
    public int getPendingAction() {
        return this.f3773b;
    }

    /* access modifiers changed from: package-private */
    public final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.c;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getSystemWindowInsetTop();
        }
        return 0;
    }
}
