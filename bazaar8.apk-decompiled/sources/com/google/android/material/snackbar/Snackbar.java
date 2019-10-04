package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import c.e.a.c.b;
import c.e.a.c.h;
import c.e.a.c.s.n;
import com.google.android.material.snackbar.BaseTransientBottomBar;

public final class Snackbar extends BaseTransientBottomBar<Snackbar> {
    public static final int[] m = {b.snackbarButtonStyle};
    public final AccessibilityManager n;
    public boolean o;

    public static final class SnackbarLayout extends BaseTransientBottomBar.e {
        public SnackbarLayout(Context context) {
            super(context);
        }

        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                }
            }
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public Snackbar(ViewGroup viewGroup, View view, n nVar) {
        super(viewGroup, view, nVar);
        this.n = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    public static Snackbar a(View view, CharSequence charSequence, int i2) {
        ViewGroup a2 = a(view);
        if (a2 != null) {
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) LayoutInflater.from(a2.getContext()).inflate(a(a2.getContext()) ? h.mtrl_layout_snackbar_include : h.design_layout_snackbar_include, a2, false);
            Snackbar snackbar = new Snackbar(a2, snackbarContentLayout, snackbarContentLayout);
            snackbar.a(charSequence);
            snackbar.e(i2);
            return snackbar;
        }
        throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
    }

    public void c() {
        super.c();
    }

    public int e() {
        if (!this.o || !this.n.isTouchExplorationEnabled()) {
            return super.e();
        }
        return -2;
    }

    public Snackbar f(int i2) {
        ((SnackbarContentLayout) this.f13390f.getChildAt(0)).getActionView().setTextColor(i2);
        return this;
    }

    public void m() {
        super.m();
    }

    public static boolean a(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(m);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        if (resourceId != -1) {
            return true;
        }
        return false;
    }

    public static ViewGroup a(View view) {
        ViewGroup viewGroup = null;
        while (!(view instanceof CoordinatorLayout)) {
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    return (ViewGroup) view;
                }
                viewGroup = (ViewGroup) view;
            }
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent instanceof View) {
                    view = (View) parent;
                    continue;
                } else {
                    view = null;
                    continue;
                }
            }
            if (view == null) {
                return viewGroup;
            }
        }
        return (ViewGroup) view;
    }

    public Snackbar a(CharSequence charSequence) {
        ((SnackbarContentLayout) this.f13390f.getChildAt(0)).getMessageView().setText(charSequence);
        return this;
    }

    public Snackbar a(int i2, View.OnClickListener onClickListener) {
        a(d().getText(i2), onClickListener);
        return this;
    }

    public Snackbar a(CharSequence charSequence, View.OnClickListener onClickListener) {
        Button actionView = ((SnackbarContentLayout) this.f13390f.getChildAt(0)).getActionView();
        if (TextUtils.isEmpty(charSequence) || onClickListener == null) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
            this.o = false;
        } else {
            this.o = true;
            actionView.setVisibility(0);
            actionView.setText(charSequence);
            actionView.setOnClickListener(new o(this, onClickListener));
        }
        return this;
    }
}
