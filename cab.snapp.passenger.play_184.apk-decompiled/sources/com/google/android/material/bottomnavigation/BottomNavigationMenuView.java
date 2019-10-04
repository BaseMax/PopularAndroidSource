package com.google.android.material.bottomnavigation;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.util.Pools;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.google.android.material.a;
import com.google.android.material.internal.j;

public class BottomNavigationMenuView extends ViewGroup implements MenuView {
    private static final int[] d = {16842912};
    private static final int[] e = {-16842910};

    /* renamed from: a  reason: collision with root package name */
    int f3826a;

    /* renamed from: b  reason: collision with root package name */
    int f3827b;
    /* access modifiers changed from: package-private */
    public MenuBuilder c;
    private final TransitionSet f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;
    private final int k;
    private final View.OnClickListener l;
    private final Pools.Pool<BottomNavigationItemView> m;
    private boolean n;
    private int o;
    private BottomNavigationItemView[] p;
    private ColorStateList q;
    private int r;
    private ColorStateList s;
    private final ColorStateList t;
    private int u;
    private int v;
    private Drawable w;
    private int x;
    private int[] y;
    /* access modifiers changed from: private */
    public BottomNavigationPresenter z;

    private static boolean a(int i2, int i3) {
        return i2 == -1 ? i3 > 3 : i2 == 0;
    }

    public int getWindowAnimations() {
        return 0;
    }

    public BottomNavigationMenuView(Context context) {
        this(context, null);
    }

    public BottomNavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.m = new Pools.SynchronizedPool(5);
        this.f3826a = 0;
        this.f3827b = 0;
        Resources resources = getResources();
        this.g = resources.getDimensionPixelSize(a.d.design_bottom_navigation_item_max_width);
        this.h = resources.getDimensionPixelSize(a.d.design_bottom_navigation_item_min_width);
        this.i = resources.getDimensionPixelSize(a.d.design_bottom_navigation_active_item_max_width);
        this.j = resources.getDimensionPixelSize(a.d.design_bottom_navigation_active_item_min_width);
        this.k = resources.getDimensionPixelSize(a.d.design_bottom_navigation_height);
        this.t = createDefaultColorStateList(16842808);
        this.f = new AutoTransition();
        this.f.setOrdering(0);
        this.f.setDuration(115);
        this.f.setInterpolator((TimeInterpolator) new FastOutSlowInInterpolator());
        this.f.addTransition(new j());
        this.l = new View.OnClickListener() {
            public final void onClick(View view) {
                MenuItemImpl itemData = ((BottomNavigationItemView) view).getItemData();
                if (!BottomNavigationMenuView.this.c.performItemAction(itemData, BottomNavigationMenuView.this.z, 0)) {
                    itemData.setChecked(true);
                }
            }
        };
        this.y = new int[5];
    }

    public void initialize(MenuBuilder menuBuilder) {
        this.c = menuBuilder;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int size = View.MeasureSpec.getSize(i2);
        int size2 = this.c.getVisibleItems().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.k, 1073741824);
        if (!a(this.o, size2) || !this.n) {
            int min = Math.min(size / (size2 == 0 ? 1 : size2), this.i);
            int i4 = size - (size2 * min);
            for (int i5 = 0; i5 < childCount; i5++) {
                if (getChildAt(i5).getVisibility() != 8) {
                    int[] iArr = this.y;
                    iArr[i5] = min;
                    if (i4 > 0) {
                        iArr[i5] = iArr[i5] + 1;
                        i4--;
                    }
                } else {
                    this.y[i5] = 0;
                }
            }
        } else {
            View childAt = getChildAt(this.f3827b);
            int i6 = this.j;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.i, Integer.MIN_VALUE), makeMeasureSpec);
                i6 = Math.max(i6, childAt.getMeasuredWidth());
            }
            int i7 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min2 = Math.min(size - (this.h * i7), Math.min(i6, this.i));
            int i8 = size - min2;
            int min3 = Math.min(i8 / (i7 == 0 ? 1 : i7), this.g);
            int i9 = i8 - (i7 * min3);
            int i10 = 0;
            while (i10 < childCount) {
                if (getChildAt(i10).getVisibility() != 8) {
                    this.y[i10] = i10 == this.f3827b ? min2 : min3;
                    if (i9 > 0) {
                        int[] iArr2 = this.y;
                        iArr2[i10] = iArr2[i10] + 1;
                        i9--;
                    }
                } else {
                    this.y[i10] = 0;
                }
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.y[i12], 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i11 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i11, View.MeasureSpec.makeMeasureSpec(i11, 1073741824), 0), View.resolveSizeAndState(this.k, makeMeasureSpec, 0));
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection(this) == 1) {
                    int i10 = i6 - i8;
                    childAt.layout(i10 - childAt.getMeasuredWidth(), 0, i10, i7);
                } else {
                    childAt.layout(i8, 0, childAt.getMeasuredWidth() + i8, i7);
                }
                i8 += childAt.getMeasuredWidth();
            }
        }
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.q = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView iconTintList : bottomNavigationItemViewArr) {
                iconTintList.setIconTintList(colorStateList);
            }
        }
    }

    public ColorStateList getIconTintList() {
        return this.q;
    }

    public void setItemIconSize(int i2) {
        this.r = i2;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView iconSize : bottomNavigationItemViewArr) {
                iconSize.setIconSize(i2);
            }
        }
    }

    public int getItemIconSize() {
        return this.r;
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.s = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView textColor : bottomNavigationItemViewArr) {
                textColor.setTextColor(colorStateList);
            }
        }
    }

    public ColorStateList getItemTextColor() {
        return this.s;
    }

    public void setItemTextAppearanceInactive(int i2) {
        this.u = i2;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextAppearanceInactive(i2);
                ColorStateList colorStateList = this.s;
                if (colorStateList != null) {
                    bottomNavigationItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public int getItemTextAppearanceInactive() {
        return this.u;
    }

    public void setItemTextAppearanceActive(int i2) {
        this.v = i2;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.setTextAppearanceActive(i2);
                ColorStateList colorStateList = this.s;
                if (colorStateList != null) {
                    bottomNavigationItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public int getItemTextAppearanceActive() {
        return this.v;
    }

    public void setItemBackgroundRes(int i2) {
        this.x = i2;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView itemBackground : bottomNavigationItemViewArr) {
                itemBackground.setItemBackground(i2);
            }
        }
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.x;
    }

    public void setItemBackground(Drawable drawable) {
        this.w = drawable;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView itemBackground : bottomNavigationItemViewArr) {
                itemBackground.setItemBackground(drawable);
            }
        }
    }

    public Drawable getItemBackground() {
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.p;
        if (bottomNavigationItemViewArr == null || bottomNavigationItemViewArr.length <= 0) {
            return this.w;
        }
        return bottomNavigationItemViewArr[0].getBackground();
    }

    public void setLabelVisibilityMode(int i2) {
        this.o = i2;
    }

    public int getLabelVisibilityMode() {
        return this.o;
    }

    public void setItemHorizontalTranslationEnabled(boolean z2) {
        this.n = z2;
    }

    public boolean isItemHorizontalTranslationEnabled() {
        return this.n;
    }

    public ColorStateList createDefaultColorStateList(int i2) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i2, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i3 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        return new ColorStateList(new int[][]{e, d, EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(e, defaultColor), i3, defaultColor});
    }

    public void setPresenter(BottomNavigationPresenter bottomNavigationPresenter) {
        this.z = bottomNavigationPresenter;
    }

    public void buildMenuView() {
        removeAllViews();
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.p;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                if (bottomNavigationItemView != null) {
                    this.m.release(bottomNavigationItemView);
                }
            }
        }
        if (this.c.size() == 0) {
            this.f3826a = 0;
            this.f3827b = 0;
            this.p = null;
            return;
        }
        this.p = new BottomNavigationItemView[this.c.size()];
        boolean a2 = a(this.o, this.c.getVisibleItems().size());
        for (int i2 = 0; i2 < this.c.size(); i2++) {
            this.z.setUpdateSuspended(true);
            this.c.getItem(i2).setCheckable(true);
            this.z.setUpdateSuspended(false);
            BottomNavigationItemView newItem = getNewItem();
            this.p[i2] = newItem;
            newItem.setIconTintList(this.q);
            newItem.setIconSize(this.r);
            newItem.setTextColor(this.t);
            newItem.setTextAppearanceInactive(this.u);
            newItem.setTextAppearanceActive(this.v);
            newItem.setTextColor(this.s);
            Drawable drawable = this.w;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.x);
            }
            newItem.setShifting(a2);
            newItem.setLabelVisibilityMode(this.o);
            newItem.initialize((MenuItemImpl) this.c.getItem(i2), 0);
            newItem.setItemPosition(i2);
            newItem.setOnClickListener(this.l);
            addView(newItem);
        }
        this.f3827b = Math.min(this.c.size() - 1, this.f3827b);
        this.c.getItem(this.f3827b).setChecked(true);
    }

    public void updateMenuView() {
        MenuBuilder menuBuilder = this.c;
        if (!(menuBuilder == null || this.p == null)) {
            int size = menuBuilder.size();
            if (size != this.p.length) {
                buildMenuView();
                return;
            }
            int i2 = this.f3826a;
            for (int i3 = 0; i3 < size; i3++) {
                MenuItem item = this.c.getItem(i3);
                if (item.isChecked()) {
                    this.f3826a = item.getItemId();
                    this.f3827b = i3;
                }
            }
            if (i2 != this.f3826a) {
                TransitionManager.beginDelayedTransition(this, this.f);
            }
            boolean a2 = a(this.o, this.c.getVisibleItems().size());
            for (int i4 = 0; i4 < size; i4++) {
                this.z.setUpdateSuspended(true);
                this.p[i4].setLabelVisibilityMode(this.o);
                this.p[i4].setShifting(a2);
                this.p[i4].initialize((MenuItemImpl) this.c.getItem(i4), 0);
                this.z.setUpdateSuspended(false);
            }
        }
    }

    private BottomNavigationItemView getNewItem() {
        BottomNavigationItemView acquire = this.m.acquire();
        return acquire == null ? new BottomNavigationItemView(getContext()) : acquire;
    }

    public int getSelectedItemId() {
        return this.f3826a;
    }
}
