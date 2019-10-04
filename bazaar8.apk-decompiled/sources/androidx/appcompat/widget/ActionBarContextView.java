package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import b.b.a;
import b.b.f;
import b.b.f.a.k;
import b.b.f.a.t;
import b.b.f.b;
import b.b.g;
import b.b.g.C0205a;
import b.b.g.Da;
import b.b.g.pa;
import b.b.j;
import b.i.k.z;

public class ActionBarContextView extends C0205a {

    /* renamed from: i  reason: collision with root package name */
    public CharSequence f329i;

    /* renamed from: j  reason: collision with root package name */
    public CharSequence f330j;

    /* renamed from: k  reason: collision with root package name */
    public View f331k;

    /* renamed from: l  reason: collision with root package name */
    public View f332l;
    public LinearLayout m;
    public TextView n;
    public TextView o;
    public int p;
    public int q;
    public boolean r;
    public int s;

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public void a(b bVar) {
        View view = this.f331k;
        if (view == null) {
            this.f331k = LayoutInflater.from(getContext()).inflate(this.s, this, false);
            addView(this.f331k);
        } else if (view.getParent() == null) {
            addView(this.f331k);
        }
        this.f331k.findViewById(f.action_mode_close_button).setOnClickListener(new C0209c(this, bVar));
        k kVar = (k) bVar.c();
        ActionMenuPresenter actionMenuPresenter = this.f2145d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.d();
        }
        this.f2145d = new ActionMenuPresenter(getContext());
        this.f2145d.c(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        kVar.a((t) this.f2145d, this.f2143b);
        this.f2144c = (ActionMenuView) this.f2145d.b((ViewGroup) this);
        z.a((View) this.f2144c, (Drawable) null);
        addView(this.f2144c, layoutParams);
    }

    public final void b() {
        if (this.m == null) {
            LayoutInflater.from(getContext()).inflate(g.abc_action_bar_title_item, this);
            this.m = (LinearLayout) getChildAt(getChildCount() - 1);
            this.n = (TextView) this.m.findViewById(f.action_bar_title);
            this.o = (TextView) this.m.findViewById(f.action_bar_subtitle);
            if (this.p != 0) {
                this.n.setTextAppearance(getContext(), this.p);
            }
            if (this.q != 0) {
                this.o.setTextAppearance(getContext(), this.q);
            }
        }
        this.n.setText(this.f329i);
        this.o.setText(this.f330j);
        boolean z = !TextUtils.isEmpty(this.f329i);
        boolean z2 = !TextUtils.isEmpty(this.f330j);
        int i2 = 0;
        this.o.setVisibility(z2 ? 0 : 8);
        LinearLayout linearLayout = this.m;
        if (!z && !z2) {
            i2 = 8;
        }
        linearLayout.setVisibility(i2);
        if (this.m.getParent() == null) {
            addView(this.m);
        }
    }

    public boolean c() {
        return this.r;
    }

    public void d() {
        removeAllViews();
        this.f332l = null;
        this.f2144c = null;
    }

    public boolean e() {
        ActionMenuPresenter actionMenuPresenter = this.f2145d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.j();
        }
        return false;
    }

    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f330j;
    }

    public CharSequence getTitle() {
        return this.f329i;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.f2145d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.f();
            this.f2145d.g();
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.setSource(this);
            accessibilityEvent.setClassName(ActionBarContextView.class.getName());
            accessibilityEvent.setPackageName(getContext().getPackageName());
            accessibilityEvent.setContentDescription(this.f329i);
            return;
        }
        super.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        boolean a2 = Da.a(this);
        int paddingRight = a2 ? (i4 - i2) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i5 - i3) - getPaddingTop()) - getPaddingBottom();
        View view = this.f331k;
        if (view == null || view.getVisibility() == 8) {
            i6 = paddingRight;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f331k.getLayoutParams();
            int i7 = a2 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i8 = a2 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int a3 = C0205a.a(paddingRight, i7, a2);
            i6 = C0205a.a(a3 + a(this.f331k, a3, paddingTop, paddingTop2, a2), i8, a2);
        }
        LinearLayout linearLayout = this.m;
        if (!(linearLayout == null || this.f332l != null || linearLayout.getVisibility() == 8)) {
            i6 += a(this.m, i6, paddingTop, paddingTop2, a2);
        }
        int i9 = i6;
        View view2 = this.f332l;
        if (view2 != null) {
            a(view2, i9, paddingTop, paddingTop2, a2);
        }
        int paddingLeft = a2 ? getPaddingLeft() : (i4 - i2) - getPaddingRight();
        ActionMenuView actionMenuView = this.f2144c;
        if (actionMenuView != null) {
            a(actionMenuView, paddingLeft, paddingTop, paddingTop2, !a2);
        }
    }

    public void onMeasure(int i2, int i3) {
        int i4 = 1073741824;
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        } else if (View.MeasureSpec.getMode(i3) != 0) {
            int size = View.MeasureSpec.getSize(i2);
            int i5 = this.f2146e;
            if (i5 <= 0) {
                i5 = View.MeasureSpec.getSize(i3);
            }
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int i6 = i5 - paddingTop;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
            View view = this.f331k;
            if (view != null) {
                int a2 = a(view, paddingLeft, makeMeasureSpec, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f331k.getLayoutParams();
                paddingLeft = a2 - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
            }
            ActionMenuView actionMenuView = this.f2144c;
            if (actionMenuView != null && actionMenuView.getParent() == this) {
                paddingLeft = a(this.f2144c, paddingLeft, makeMeasureSpec, 0);
            }
            LinearLayout linearLayout = this.m;
            if (linearLayout != null && this.f332l == null) {
                if (this.r) {
                    this.m.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                    int measuredWidth = this.m.getMeasuredWidth();
                    boolean z = measuredWidth <= paddingLeft;
                    if (z) {
                        paddingLeft -= measuredWidth;
                    }
                    this.m.setVisibility(z ? 0 : 8);
                } else {
                    paddingLeft = a(linearLayout, paddingLeft, makeMeasureSpec, 0);
                }
            }
            View view2 = this.f332l;
            if (view2 != null) {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                int i7 = layoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
                int i8 = layoutParams.width;
                if (i8 >= 0) {
                    paddingLeft = Math.min(i8, paddingLeft);
                }
                if (layoutParams.height == -2) {
                    i4 = Integer.MIN_VALUE;
                }
                int i9 = layoutParams.height;
                if (i9 >= 0) {
                    i6 = Math.min(i9, i6);
                }
                this.f332l.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i7), View.MeasureSpec.makeMeasureSpec(i6, i4));
            }
            if (this.f2146e <= 0) {
                int childCount = getChildCount();
                int i10 = 0;
                for (int i11 = 0; i11 < childCount; i11++) {
                    int measuredHeight = getChildAt(i11).getMeasuredHeight() + paddingTop;
                    if (measuredHeight > i10) {
                        i10 = measuredHeight;
                    }
                }
                setMeasuredDimension(size, i10);
                return;
            }
            setMeasuredDimension(size, i5);
        } else {
            throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
    }

    public void setContentHeight(int i2) {
        this.f2146e = i2;
    }

    public void setCustomView(View view) {
        View view2 = this.f332l;
        if (view2 != null) {
            removeView(view2);
        }
        this.f332l = view;
        if (view != null) {
            LinearLayout linearLayout = this.m;
            if (linearLayout != null) {
                removeView(linearLayout);
                this.m = null;
            }
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f330j = charSequence;
        b();
    }

    public void setTitle(CharSequence charSequence) {
        this.f329i = charSequence;
        b();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.r) {
            requestLayout();
        }
        this.r = z;
    }

    public /* bridge */ /* synthetic */ void setVisibility(int i2) {
        super.setVisibility(i2);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        pa a2 = pa.a(context, attributeSet, j.ActionMode, i2, 0);
        z.a((View) this, a2.b(j.ActionMode_background));
        this.p = a2.g(j.ActionMode_titleTextStyle, 0);
        this.q = a2.g(j.ActionMode_subtitleTextStyle, 0);
        this.f2146e = a2.f(j.ActionMode_height, 0);
        this.s = a2.g(j.ActionMode_closeItemLayout, g.abc_action_mode_close_item_material);
        a2.a();
    }

    public void a() {
        if (this.f331k == null) {
            d();
        }
    }
}
