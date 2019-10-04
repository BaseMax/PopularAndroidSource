package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.ColorStateList;
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
import com.google.android.material.a;
import com.google.android.material.snackbar.BaseTransientBottomBar;

public final class Snackbar extends BaseTransientBottomBar<Snackbar> {
    public static final int LENGTH_INDEFINITE = -2;
    public static final int LENGTH_LONG = 0;
    public static final int LENGTH_SHORT = -1;
    private static final int[] f = {a.b.snackbarButtonStyle};
    private final AccessibilityManager d;
    private boolean e;
    private BaseTransientBottomBar.a<Snackbar> g;

    public static final class SnackbarLayout extends BaseTransientBottomBar.SnackbarBaseLayout {
        public SnackbarLayout(Context context) {
            super(context);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* access modifiers changed from: protected */
        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                }
            }
        }
    }

    public static class a extends BaseTransientBottomBar.a<Snackbar> {
        public static final int DISMISS_EVENT_ACTION = 1;
        public static final int DISMISS_EVENT_CONSECUTIVE = 4;
        public static final int DISMISS_EVENT_MANUAL = 3;
        public static final int DISMISS_EVENT_SWIPE = 0;
        public static final int DISMISS_EVENT_TIMEOUT = 2;

        public final void onDismissed(Snackbar snackbar, int i) {
        }

        public final void onShown(Snackbar snackbar) {
        }
    }

    private Snackbar(ViewGroup viewGroup, View view, a aVar) {
        super(viewGroup, view, aVar);
        this.d = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    public final void show() {
        super.show();
    }

    public final void dismiss() {
        super.dismiss();
    }

    public final boolean isShown() {
        return super.isShown();
    }

    public static Snackbar make(View view, int i, int i2) {
        return make(view, view.getResources().getText(i), i2);
    }

    public final Snackbar setText(CharSequence charSequence) {
        ((SnackbarContentLayout) this.f3961b.getChildAt(0)).getMessageView().setText(charSequence);
        return this;
    }

    public final Snackbar setText(int i) {
        return setText(getContext().getText(i));
    }

    public final Snackbar setAction(int i, View.OnClickListener onClickListener) {
        return setAction(getContext().getText(i), onClickListener);
    }

    public final Snackbar setAction(CharSequence charSequence, final View.OnClickListener onClickListener) {
        Button actionView = ((SnackbarContentLayout) this.f3961b.getChildAt(0)).getActionView();
        if (TextUtils.isEmpty(charSequence) || onClickListener == null) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
            this.e = false;
        } else {
            this.e = true;
            actionView.setVisibility(0);
            actionView.setText(charSequence);
            actionView.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    onClickListener.onClick(view);
                    Snackbar.this.a(1);
                }
            });
        }
        return this;
    }

    public final int getDuration() {
        if (!this.e || !this.d.isTouchExplorationEnabled()) {
            return super.getDuration();
        }
        return -2;
    }

    public final Snackbar setActionTextColor(ColorStateList colorStateList) {
        ((SnackbarContentLayout) this.f3961b.getChildAt(0)).getActionView().setTextColor(colorStateList);
        return this;
    }

    public final Snackbar setActionTextColor(int i) {
        ((SnackbarContentLayout) this.f3961b.getChildAt(0)).getActionView().setTextColor(i);
        return this;
    }

    @Deprecated
    public final Snackbar setCallback(a aVar) {
        BaseTransientBottomBar.a<Snackbar> aVar2 = this.g;
        if (aVar2 != null) {
            removeCallback(aVar2);
        }
        if (aVar != null) {
            addCallback(aVar);
        }
        this.g = aVar;
        return this;
    }

    public static Snackbar make(View view, CharSequence charSequence, int i) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2 = null;
        while (true) {
            if (!(view instanceof CoordinatorLayout)) {
                if (view instanceof FrameLayout) {
                    if (view.getId() == 16908290) {
                        viewGroup = (ViewGroup) view;
                        break;
                    }
                    viewGroup2 = (ViewGroup) view;
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
                    viewGroup = viewGroup2;
                    break;
                }
            } else {
                viewGroup = (ViewGroup) view;
                break;
            }
        }
        if (viewGroup != null) {
            LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
            TypedArray obtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes(f);
            int resourceId = obtainStyledAttributes.getResourceId(0, -1);
            obtainStyledAttributes.recycle();
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) from.inflate(resourceId != -1 ? a.h.mtrl_layout_snackbar_include : a.h.design_layout_snackbar_include, viewGroup, false);
            Snackbar snackbar = new Snackbar(viewGroup, snackbarContentLayout, snackbarContentLayout);
            snackbar.setText(charSequence);
            snackbar.setDuration(i);
            return snackbar;
        }
        throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
    }
}
