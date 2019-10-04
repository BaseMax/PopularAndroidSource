package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.a;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.k;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.b;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {
    public static final int LENGTH_INDEFINITE = -2;
    public static final int LENGTH_LONG = 0;
    public static final int LENGTH_SHORT = -1;

    /* renamed from: a  reason: collision with root package name */
    static final Handler f3960a = new Handler(Looper.getMainLooper(), new Handler.Callback() {
        public final boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                ((BaseTransientBottomBar) message.obj).a();
                return true;
            } else if (i != 1) {
                return false;
            } else {
                ((BaseTransientBottomBar) message.obj).b(message.arg1);
                return true;
            }
        }
    });
    /* access modifiers changed from: private */
    public static final boolean d = (Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 19);
    private static final int[] e = {a.b.snackbarStyle};

    /* renamed from: b  reason: collision with root package name */
    protected final SnackbarBaseLayout f3961b;
    final b.a c = new b.a() {
        public final void show() {
            Handler handler = BaseTransientBottomBar.f3960a;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }

        public final void dismiss(int i) {
            Handler handler = BaseTransientBottomBar.f3960a;
            handler.sendMessage(handler.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
        }
    };
    private final ViewGroup f;
    private final Context g;
    /* access modifiers changed from: private */
    public final a h;
    private int i;
    private List<a<B>> j;
    private Behavior k;
    private final AccessibilityManager l;

    public static class Behavior extends SwipeDismissBehavior<View> {
        private final b g = new b(this);

        public boolean canSwipeDismissView(View view) {
            return this.g.canSwipeDismissView(view);
        }

        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            this.g.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    protected static class SnackbarBaseLayout extends FrameLayout {

        /* renamed from: a  reason: collision with root package name */
        private final AccessibilityManager f3976a;

        /* renamed from: b  reason: collision with root package name */
        private final AccessibilityManagerCompat.TouchExplorationStateChangeListener f3977b;
        private d c;
        private c d;

        protected SnackbarBaseLayout(Context context) {
            this(context, null);
        }

        protected SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.k.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(a.k.SnackbarLayout_elevation)) {
                ViewCompat.setElevation(this, (float) obtainStyledAttributes.getDimensionPixelSize(a.k.SnackbarLayout_elevation, 0));
            }
            obtainStyledAttributes.recycle();
            this.f3976a = (AccessibilityManager) context.getSystemService("accessibility");
            this.f3977b = new AccessibilityManagerCompat.TouchExplorationStateChangeListener() {
                public final void onTouchExplorationStateChanged(boolean z) {
                    SnackbarBaseLayout.this.setClickableOrFocusableBasedOnAccessibility(z);
                }
            };
            AccessibilityManagerCompat.addTouchExplorationStateChangeListener(this.f3976a, this.f3977b);
            setClickableOrFocusableBasedOnAccessibility(this.f3976a.isTouchExplorationEnabled());
        }

        /* access modifiers changed from: private */
        public void setClickableOrFocusableBasedOnAccessibility(boolean z) {
            setClickable(!z);
            setFocusable(z);
        }

        /* access modifiers changed from: protected */
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            d dVar = this.c;
            if (dVar != null) {
                dVar.onLayoutChange(this, i, i2, i3, i4);
            }
        }

        /* access modifiers changed from: protected */
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            c cVar = this.d;
            if (cVar != null) {
                cVar.onViewAttachedToWindow(this);
            }
            ViewCompat.requestApplyInsets(this);
        }

        /* access modifiers changed from: protected */
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            c cVar = this.d;
            if (cVar != null) {
                cVar.onViewDetachedFromWindow(this);
            }
            AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(this.f3976a, this.f3977b);
        }

        /* access modifiers changed from: package-private */
        public void setOnLayoutChangeListener(d dVar) {
            this.c = dVar;
        }

        /* access modifiers changed from: package-private */
        public void setOnAttachStateChangeListener(c cVar) {
            this.d = cVar;
        }
    }

    public static abstract class a<B> {
        public static final int DISMISS_EVENT_ACTION = 1;
        public static final int DISMISS_EVENT_CONSECUTIVE = 4;
        public static final int DISMISS_EVENT_MANUAL = 3;
        public static final int DISMISS_EVENT_SWIPE = 0;
        public static final int DISMISS_EVENT_TIMEOUT = 2;

        public void onDismissed(B b2, int i) {
        }

        public void onShown(B b2) {
        }
    }

    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private b.a f3979a;

        public b(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.setStartAlphaSwipeDistance(0.1f);
            swipeDismissBehavior.setEndAlphaSwipeDistance(0.6f);
            swipeDismissBehavior.setSwipeDirection(0);
        }

        public final void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f3979a = baseTransientBottomBar.c;
        }

        public final boolean canSwipeDismissView(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        public final void onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    b.a().restoreTimeoutIfPaused(this.f3979a);
                }
            } else if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                b.a().pauseTimeout(this.f3979a);
            }
        }
    }

    protected interface c {
        void onViewAttachedToWindow(View view);

        void onViewDetachedFromWindow(View view);
    }

    protected interface d {
        void onLayoutChange(View view, int i, int i2, int i3, int i4);
    }

    protected BaseTransientBottomBar(ViewGroup viewGroup, View view, a aVar) {
        int i2;
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        } else if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        } else if (aVar != null) {
            this.f = viewGroup;
            this.h = aVar;
            this.g = viewGroup.getContext();
            k.checkAppCompatTheme(this.g);
            LayoutInflater from = LayoutInflater.from(this.g);
            TypedArray obtainStyledAttributes = this.g.obtainStyledAttributes(e);
            int resourceId = obtainStyledAttributes.getResourceId(0, -1);
            obtainStyledAttributes.recycle();
            if (resourceId != -1) {
                i2 = a.h.mtrl_layout_snackbar;
            } else {
                i2 = a.h.design_layout_snackbar;
            }
            this.f3961b = (SnackbarBaseLayout) from.inflate(i2, this.f, false);
            this.f3961b.addView(view);
            ViewCompat.setAccessibilityLiveRegion(this.f3961b, 1);
            ViewCompat.setImportantForAccessibility(this.f3961b, 1);
            ViewCompat.setFitsSystemWindows(this.f3961b, true);
            ViewCompat.setOnApplyWindowInsetsListener(this.f3961b, new OnApplyWindowInsetsListener() {
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                    return windowInsetsCompat;
                }
            });
            ViewCompat.setAccessibilityDelegate(this.f3961b, new AccessibilityDelegateCompat() {
                public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                    accessibilityNodeInfoCompat.addAction(1048576);
                    accessibilityNodeInfoCompat.setDismissable(true);
                }

                public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
                    if (i != 1048576) {
                        return super.performAccessibilityAction(view, i, bundle);
                    }
                    BaseTransientBottomBar.this.dismiss();
                    return true;
                }
            });
            this.l = (AccessibilityManager) this.g.getSystemService("accessibility");
        } else {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
    }

    public B setDuration(int i2) {
        this.i = i2;
        return this;
    }

    public int getDuration() {
        return this.i;
    }

    public B setBehavior(Behavior behavior) {
        this.k = behavior;
        return this;
    }

    public Behavior getBehavior() {
        return this.k;
    }

    public Context getContext() {
        return this.g;
    }

    public View getView() {
        return this.f3961b;
    }

    public void show() {
        b.a().show(getDuration(), this.c);
    }

    public void dismiss() {
        a(3);
    }

    /* access modifiers changed from: protected */
    public final void a(int i2) {
        b.a().dismiss(this.c, i2);
    }

    public B addCallback(a<B> aVar) {
        if (aVar == null) {
            return this;
        }
        if (this.j == null) {
            this.j = new ArrayList();
        }
        this.j.add(aVar);
        return this;
    }

    public B removeCallback(a<B> aVar) {
        if (aVar == null) {
            return this;
        }
        List<a<B>> list = this.j;
        if (list == null) {
            return this;
        }
        list.remove(aVar);
        return this;
    }

    public boolean isShown() {
        return b.a().isCurrent(this.c);
    }

    public boolean isShownOrQueued() {
        return b.a().isCurrentOrNext(this.c);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (this.f3961b.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f3961b.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) layoutParams;
                Behavior behavior = this.k;
                if (behavior == null) {
                    behavior = new Behavior();
                }
                if (behavior instanceof Behavior) {
                    behavior.g.setBaseTransientBottomBar(this);
                }
                behavior.setListener(new SwipeDismissBehavior.a() {
                    public final void onDismiss(View view) {
                        view.setVisibility(8);
                        BaseTransientBottomBar.this.a(0);
                    }

                    public final void onDragStateChanged(int i) {
                        if (i == 0) {
                            b.a().restoreTimeoutIfPaused(BaseTransientBottomBar.this.c);
                        } else if (i == 1 || i == 2) {
                            b.a().pauseTimeout(BaseTransientBottomBar.this.c);
                        }
                    }
                });
                layoutParams2.setBehavior(behavior);
                layoutParams2.insetEdge = 80;
            }
            this.f.addView(this.f3961b);
        }
        this.f3961b.setOnAttachStateChangeListener(new c() {
            public final void onViewAttachedToWindow(View view) {
            }

            public final void onViewDetachedFromWindow(View view) {
                if (BaseTransientBottomBar.this.isShownOrQueued()) {
                    BaseTransientBottomBar.f3960a.post(new Runnable() {
                        public final void run() {
                            BaseTransientBottomBar.this.c(3);
                        }
                    });
                }
            }
        });
        if (!ViewCompat.isLaidOut(this.f3961b)) {
            this.f3961b.setOnLayoutChangeListener(new d() {
                public final void onLayoutChange(View view, int i, int i2, int i3, int i4) {
                    BaseTransientBottomBar.this.f3961b.setOnLayoutChangeListener(null);
                    if (BaseTransientBottomBar.this.d()) {
                        BaseTransientBottomBar.this.b();
                    } else {
                        BaseTransientBottomBar.this.c();
                    }
                }
            });
        } else if (d()) {
            b();
        } else {
            c();
        }
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        final int f2 = f();
        if (d) {
            ViewCompat.offsetTopAndBottom(this.f3961b, f2);
        } else {
            this.f3961b.setTranslationY((float) f2);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(new int[]{f2, 0});
        valueAnimator.setInterpolator(com.google.android.material.a.a.FAST_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimator.setDuration(250);
        valueAnimator.addListener(new AnimatorListenerAdapter() {
            public final void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.h.animateContentIn(70, 180);
            }

            public final void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.c();
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            private int c = f2;

            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.d) {
                    ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f3961b, intValue - this.c);
                } else {
                    BaseTransientBottomBar.this.f3961b.setTranslationY((float) intValue);
                }
                this.c = intValue;
            }
        });
        valueAnimator.start();
    }

    private int f() {
        int height = this.f3961b.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f3961b.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    /* access modifiers changed from: package-private */
    public final void b(final int i2) {
        if (!d() || this.f3961b.getVisibility() != 0) {
            c(i2);
            return;
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(new int[]{0, f()});
        valueAnimator.setInterpolator(com.google.android.material.a.a.FAST_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimator.setDuration(250);
        valueAnimator.addListener(new AnimatorListenerAdapter() {
            public final void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.h.animateContentOut(0, 180);
            }

            public final void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.c(i2);
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {

            /* renamed from: b  reason: collision with root package name */
            private int f3968b = 0;

            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.d) {
                    ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f3961b, intValue - this.f3968b);
                } else {
                    BaseTransientBottomBar.this.f3961b.setTranslationY((float) intValue);
                }
                this.f3968b = intValue;
            }
        });
        valueAnimator.start();
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        b.a().onShown(this.c);
        List<a<B>> list = this.j;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.j.get(size).onShown(this);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void c(int i2) {
        b.a().onDismissed(this.c);
        List<a<B>> list = this.j;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.j.get(size).onDismissed(this, i2);
            }
        }
        ViewParent parent = this.f3961b.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f3961b);
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean d() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = this.l.getEnabledAccessibilityServiceList(1);
        if (enabledAccessibilityServiceList == null || !enabledAccessibilityServiceList.isEmpty()) {
            return false;
        }
        return true;
    }
}
