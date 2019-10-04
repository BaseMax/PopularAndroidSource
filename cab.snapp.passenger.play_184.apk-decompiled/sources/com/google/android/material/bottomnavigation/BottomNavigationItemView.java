package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.a;

public class BottomNavigationItemView extends FrameLayout implements MenuView.ItemView {
    public static final int INVALID_ITEM_POSITION = -1;

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f3824a = {16842912};

    /* renamed from: b  reason: collision with root package name */
    private final int f3825b;
    private float c;
    private float d;
    private float e;
    private int f;
    private boolean g;
    private ImageView h;
    private final TextView i;
    private final TextView j;
    private int k;
    private MenuItemImpl l;
    private ColorStateList m;

    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setShortcut(boolean z, char c2) {
    }

    public boolean showsIcon() {
        return true;
    }

    public BottomNavigationItemView(Context context) {
        this(context, null);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.k = -1;
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(a.h.design_bottom_navigation_item, this, true);
        setBackgroundResource(a.e.design_bottom_navigation_item_background);
        this.f3825b = resources.getDimensionPixelSize(a.d.design_bottom_navigation_margin);
        this.h = (ImageView) findViewById(a.f.icon);
        this.i = (TextView) findViewById(a.f.smallLabel);
        this.j = (TextView) findViewById(a.f.largeLabel);
        ViewCompat.setImportantForAccessibility(this.i, 2);
        ViewCompat.setImportantForAccessibility(this.j, 2);
        setFocusable(true);
        a(this.i.getTextSize(), this.j.getTextSize());
    }

    public void initialize(MenuItemImpl menuItemImpl, int i2) {
        this.l = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitle());
        setId(menuItemImpl.getItemId());
        if (!TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(menuItemImpl.getContentDescription());
        }
        TooltipCompat.setTooltipText(this, menuItemImpl.getTooltipText());
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
    }

    public void setItemPosition(int i2) {
        this.k = i2;
    }

    public int getItemPosition() {
        return this.k;
    }

    public void setShifting(boolean z) {
        if (this.g != z) {
            this.g = z;
            if (this.l != null) {
                setChecked(this.l.isChecked());
            }
        }
    }

    public void setLabelVisibilityMode(int i2) {
        if (this.f != i2) {
            this.f = i2;
            if (this.l != null) {
                setChecked(this.l.isChecked());
            }
        }
    }

    public MenuItemImpl getItemData() {
        return this.l;
    }

    public void setTitle(CharSequence charSequence) {
        this.i.setText(charSequence);
        this.j.setText(charSequence);
        MenuItemImpl menuItemImpl = this.l;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(charSequence);
        }
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        TextView textView = this.j;
        textView.setPivotX((float) (textView.getWidth() / 2));
        TextView textView2 = this.j;
        textView2.setPivotY((float) textView2.getBaseline());
        TextView textView3 = this.i;
        textView3.setPivotX((float) (textView3.getWidth() / 2));
        TextView textView4 = this.i;
        textView4.setPivotY((float) textView4.getBaseline());
        int i2 = this.f;
        if (i2 != -1) {
            if (i2 == 0) {
                if (z) {
                    a(this.h, this.f3825b, 49);
                    a(this.j, 1.0f, 1.0f, 0);
                } else {
                    a(this.h, this.f3825b, 17);
                    a(this.j, 0.5f, 0.5f, 4);
                }
                this.i.setVisibility(4);
            } else if (i2 != 1) {
                if (i2 == 2) {
                    a(this.h, this.f3825b, 17);
                    this.j.setVisibility(8);
                    this.i.setVisibility(8);
                }
            } else if (z) {
                a(this.h, (int) (((float) this.f3825b) + this.c), 49);
                a(this.j, 1.0f, 1.0f, 0);
                TextView textView5 = this.i;
                float f2 = this.d;
                a(textView5, f2, f2, 4);
            } else {
                a(this.h, this.f3825b, 49);
                TextView textView6 = this.j;
                float f3 = this.e;
                a(textView6, f3, f3, 4);
                a(this.i, 1.0f, 1.0f, 0);
            }
        } else if (this.g) {
            if (z) {
                a(this.h, this.f3825b, 49);
                a(this.j, 1.0f, 1.0f, 0);
            } else {
                a(this.h, this.f3825b, 17);
                a(this.j, 0.5f, 0.5f, 4);
            }
            this.i.setVisibility(4);
        } else if (z) {
            a(this.h, (int) (((float) this.f3825b) + this.c), 49);
            a(this.j, 1.0f, 1.0f, 0);
            TextView textView7 = this.i;
            float f4 = this.d;
            a(textView7, f4, f4, 4);
        } else {
            a(this.h, this.f3825b, 49);
            TextView textView8 = this.j;
            float f5 = this.e;
            a(textView8, f5, f5, 4);
            a(this.i, 1.0f, 1.0f, 0);
        }
        refreshDrawableState();
        setSelected(z);
    }

    private static void a(View view, int i2, int i3) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i2;
        layoutParams.gravity = i3;
        view.setLayoutParams(layoutParams);
    }

    private static void a(View view, float f2, float f3, int i2) {
        view.setScaleX(f2);
        view.setScaleY(f3);
        view.setVisibility(i2);
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.i.setEnabled(z);
        this.j.setEnabled(z);
        this.h.setEnabled(z);
        if (z) {
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        } else {
            ViewCompat.setPointerIcon(this, null);
        }
    }

    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        MenuItemImpl menuItemImpl = this.l;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.l.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f3824a);
        }
        return onCreateDrawableState;
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = DrawableCompat.wrap(drawable).mutate();
            DrawableCompat.setTintList(drawable, this.m);
        }
        this.h.setImageDrawable(drawable);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.m = colorStateList;
        MenuItemImpl menuItemImpl = this.l;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    public void setIconSize(int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.h.getLayoutParams();
        layoutParams.width = i2;
        layoutParams.height = i2;
        this.h.setLayoutParams(layoutParams);
    }

    public void setTextAppearanceInactive(int i2) {
        TextViewCompat.setTextAppearance(this.i, i2);
        a(this.i.getTextSize(), this.j.getTextSize());
    }

    public void setTextAppearanceActive(int i2) {
        TextViewCompat.setTextAppearance(this.j, i2);
        a(this.i.getTextSize(), this.j.getTextSize());
    }

    public void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.i.setTextColor(colorStateList);
            this.j.setTextColor(colorStateList);
        }
    }

    private void a(float f2, float f3) {
        this.c = f2 - f3;
        this.d = (f3 * 1.0f) / f2;
        this.e = (f2 * 1.0f) / f3;
    }

    public void setItemBackground(int i2) {
        setItemBackground(i2 == 0 ? null : ContextCompat.getDrawable(getContext(), i2));
    }

    public void setItemBackground(Drawable drawable) {
        ViewCompat.setBackground(this, drawable);
    }
}
