package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import b.b.f;
import b.b.g.C0207b;
import b.b.g.V;
import b.b.j;
import b.i.k.z;

public class ActionBarContainer extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public boolean f319a;

    /* renamed from: b  reason: collision with root package name */
    public View f320b;

    /* renamed from: c  reason: collision with root package name */
    public View f321c;

    /* renamed from: d  reason: collision with root package name */
    public View f322d;

    /* renamed from: e  reason: collision with root package name */
    public Drawable f323e;

    /* renamed from: f  reason: collision with root package name */
    public Drawable f324f;

    /* renamed from: g  reason: collision with root package name */
    public Drawable f325g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f326h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f327i;

    /* renamed from: j  reason: collision with root package name */
    public int f328j;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    public final int a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    public final boolean b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f323e;
        if (drawable != null && drawable.isStateful()) {
            this.f323e.setState(getDrawableState());
        }
        Drawable drawable2 = this.f324f;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f324f.setState(getDrawableState());
        }
        Drawable drawable3 = this.f325g;
        if (drawable3 != null && drawable3.isStateful()) {
            this.f325g.setState(getDrawableState());
        }
    }

    public View getTabContainer() {
        return this.f320b;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f323e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f324f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f325g;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.f321c = findViewById(f.action_bar);
        this.f322d = findViewById(f.action_context_bar);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f319a || super.onInterceptTouchEvent(motionEvent);
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        View view = this.f320b;
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = (view == null || view.getVisibility() == 8) ? false : true;
        if (!(view == null || view.getVisibility() == 8)) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            view.layout(i2, (measuredHeight - view.getMeasuredHeight()) - layoutParams.bottomMargin, i4, measuredHeight - layoutParams.bottomMargin);
        }
        if (this.f326h) {
            Drawable drawable = this.f325g;
            if (drawable != null) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z2 = false;
            }
        } else {
            if (this.f323e != null) {
                if (this.f321c.getVisibility() == 0) {
                    this.f323e.setBounds(this.f321c.getLeft(), this.f321c.getTop(), this.f321c.getRight(), this.f321c.getBottom());
                } else {
                    View view2 = this.f322d;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f323e.setBounds(0, 0, 0, 0);
                    } else {
                        this.f323e.setBounds(this.f322d.getLeft(), this.f322d.getTop(), this.f322d.getRight(), this.f322d.getBottom());
                    }
                }
                z3 = true;
            }
            this.f327i = z4;
            if (z4) {
                Drawable drawable2 = this.f324f;
                if (drawable2 != null) {
                    drawable2.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                }
            }
            z2 = z3;
        }
        if (z2) {
            invalidate();
        }
    }

    public void onMeasure(int i2, int i3) {
        int i4;
        if (this.f321c == null && View.MeasureSpec.getMode(i3) == Integer.MIN_VALUE) {
            int i5 = this.f328j;
            if (i5 >= 0) {
                i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i5, View.MeasureSpec.getSize(i3)), Integer.MIN_VALUE);
            }
        }
        super.onMeasure(i2, i3);
        if (this.f321c != null) {
            int mode = View.MeasureSpec.getMode(i3);
            View view = this.f320b;
            if (!(view == null || view.getVisibility() == 8 || mode == 1073741824)) {
                if (!b(this.f321c)) {
                    i4 = a(this.f321c);
                } else {
                    i4 = !b(this.f322d) ? a(this.f322d) : 0;
                }
                setMeasuredDimension(getMeasuredWidth(), Math.min(i4 + a(this.f320b), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i3) : Integer.MAX_VALUE));
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f323e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f323e);
        }
        this.f323e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f321c;
            if (view != null) {
                this.f323e.setBounds(view.getLeft(), this.f321c.getTop(), this.f321c.getRight(), this.f321c.getBottom());
            }
        }
        boolean z = true;
        if (!this.f326h ? !(this.f323e == null && this.f324f == null) : this.f325g != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2 = this.f325g;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f325g);
        }
        this.f325g = drawable;
        boolean z = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f326h) {
                Drawable drawable3 = this.f325g;
                if (drawable3 != null) {
                    drawable3.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                }
            }
        }
        if (!this.f326h ? this.f323e == null && this.f324f == null : this.f325g == null) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2 = this.f324f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f324f);
        }
        this.f324f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f327i) {
                Drawable drawable3 = this.f324f;
                if (drawable3 != null) {
                    drawable3.setBounds(this.f320b.getLeft(), this.f320b.getTop(), this.f320b.getRight(), this.f320b.getBottom());
                }
            }
        }
        boolean z = true;
        if (!this.f326h ? !(this.f323e == null && this.f324f == null) : this.f325g != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(V v) {
        View view = this.f320b;
        if (view != null) {
            removeView(view);
        }
        this.f320b = v;
        if (v != null) {
            addView(v);
            ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            v.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f319a = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.f323e;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f324f;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f325g;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }

    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i2) {
        if (i2 != 0) {
            return super.startActionModeForChild(view, callback, i2);
        }
        return null;
    }

    public boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f323e && !this.f326h) || (drawable == this.f324f && this.f327i) || ((drawable == this.f325g && this.f326h) || super.verifyDrawable(drawable));
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        z.a((View) this, (Drawable) new C0207b(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.ActionBar);
        this.f323e = obtainStyledAttributes.getDrawable(j.ActionBar_background);
        this.f324f = obtainStyledAttributes.getDrawable(j.ActionBar_backgroundStacked);
        this.f328j = obtainStyledAttributes.getDimensionPixelSize(j.ActionBar_height, -1);
        if (getId() == f.split_action_bar) {
            this.f326h = true;
            this.f325g = obtainStyledAttributes.getDrawable(j.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        boolean z = false;
        if (!this.f326h ? this.f323e == null && this.f324f == null : this.f325g == null) {
            z = true;
        }
        setWillNotDraw(z);
    }
}
