package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.a;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.f;
import com.google.android.material.internal.g;
import com.google.android.material.internal.k;

public class NavigationView extends ScrimInsetsFrameLayout {
    private static final int[] d = {16842912};
    private static final int[] e = {-16842910};
    a c;
    private final f f;
    private final g g;
    private final int h;
    private MenuInflater i;

    public static class SavedState extends AbsSavedState {
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
        public Bundle menuState;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.menuState = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.menuState);
        }
    }

    public interface a {
        boolean onNavigationItemSelected(MenuItem menuItem);
    }

    public NavigationView(Context context) {
        this(context, null);
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.navigationViewStyle);
    }

    public NavigationView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        ColorStateList colorStateList;
        int i3;
        boolean z;
        this.g = new g();
        this.f = new f(context);
        TintTypedArray obtainTintedStyledAttributes = k.obtainTintedStyledAttributes(context, attributeSet, a.k.NavigationView, i2, a.j.Widget_Design_NavigationView, new int[0]);
        ViewCompat.setBackground(this, obtainTintedStyledAttributes.getDrawable(a.k.NavigationView_android_background));
        if (obtainTintedStyledAttributes.hasValue(a.k.NavigationView_elevation)) {
            ViewCompat.setElevation(this, (float) obtainTintedStyledAttributes.getDimensionPixelSize(a.k.NavigationView_elevation, 0));
        }
        ViewCompat.setFitsSystemWindows(this, obtainTintedStyledAttributes.getBoolean(a.k.NavigationView_android_fitsSystemWindows, false));
        this.h = obtainTintedStyledAttributes.getDimensionPixelSize(a.k.NavigationView_android_maxWidth, 0);
        if (obtainTintedStyledAttributes.hasValue(a.k.NavigationView_itemIconTint)) {
            colorStateList = obtainTintedStyledAttributes.getColorStateList(a.k.NavigationView_itemIconTint);
        } else {
            colorStateList = a(16842808);
        }
        if (obtainTintedStyledAttributes.hasValue(a.k.NavigationView_itemTextAppearance)) {
            i3 = obtainTintedStyledAttributes.getResourceId(a.k.NavigationView_itemTextAppearance, 0);
            z = true;
        } else {
            z = false;
            i3 = 0;
        }
        ColorStateList colorStateList2 = null;
        colorStateList2 = obtainTintedStyledAttributes.hasValue(a.k.NavigationView_itemTextColor) ? obtainTintedStyledAttributes.getColorStateList(a.k.NavigationView_itemTextColor) : colorStateList2;
        if (!z && colorStateList2 == null) {
            colorStateList2 = a(16842806);
        }
        Drawable drawable = obtainTintedStyledAttributes.getDrawable(a.k.NavigationView_itemBackground);
        if (obtainTintedStyledAttributes.hasValue(a.k.NavigationView_itemHorizontalPadding)) {
            this.g.setItemHorizontalPadding(obtainTintedStyledAttributes.getDimensionPixelSize(a.k.NavigationView_itemHorizontalPadding, 0));
        }
        int dimensionPixelSize = obtainTintedStyledAttributes.getDimensionPixelSize(a.k.NavigationView_itemIconPadding, 0);
        this.f.setCallback(new MenuBuilder.Callback() {
            public final void onMenuModeChange(MenuBuilder menuBuilder) {
            }

            public final boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
                return NavigationView.this.c != null && NavigationView.this.c.onNavigationItemSelected(menuItem);
            }
        });
        this.g.setId(1);
        this.g.initForMenu(context, this.f);
        this.g.setItemIconTintList(colorStateList);
        if (z) {
            this.g.setItemTextAppearance(i3);
        }
        this.g.setItemTextColor(colorStateList2);
        this.g.setItemBackground(drawable);
        this.g.setItemIconPadding(dimensionPixelSize);
        this.f.addMenuPresenter(this.g);
        addView((View) this.g.getMenuView(this));
        if (obtainTintedStyledAttributes.hasValue(a.k.NavigationView_menu)) {
            inflateMenu(obtainTintedStyledAttributes.getResourceId(a.k.NavigationView_menu, 0));
        }
        if (obtainTintedStyledAttributes.hasValue(a.k.NavigationView_headerLayout)) {
            inflateHeaderView(obtainTintedStyledAttributes.getResourceId(a.k.NavigationView_headerLayout, 0));
        }
        obtainTintedStyledAttributes.recycle();
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.menuState = new Bundle();
        this.f.savePresenterStates(savedState.menuState);
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f.restorePresenterStates(savedState.menuState);
    }

    public void setNavigationItemSelectedListener(a aVar) {
        this.c = aVar;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i2), this.h), 1073741824);
        } else if (mode == 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(this.h, 1073741824);
        }
        super.onMeasure(i2, i3);
    }

    public final void onInsetsChanged(WindowInsetsCompat windowInsetsCompat) {
        this.g.dispatchApplyWindowInsets(windowInsetsCompat);
    }

    public void inflateMenu(int i2) {
        this.g.setUpdateSuspended(true);
        getMenuInflater().inflate(i2, this.f);
        this.g.setUpdateSuspended(false);
        this.g.updateMenuView(false);
    }

    public Menu getMenu() {
        return this.f;
    }

    public View inflateHeaderView(int i2) {
        return this.g.inflateHeaderView(i2);
    }

    public void addHeaderView(View view) {
        this.g.addHeaderView(view);
    }

    public void removeHeaderView(View view) {
        this.g.removeHeaderView(view);
    }

    public int getHeaderCount() {
        return this.g.getHeaderCount();
    }

    public View getHeaderView(int i2) {
        return this.g.getHeaderView(i2);
    }

    public ColorStateList getItemIconTintList() {
        return this.g.getItemTintList();
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.g.setItemIconTintList(colorStateList);
    }

    public ColorStateList getItemTextColor() {
        return this.g.getItemTextColor();
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.g.setItemTextColor(colorStateList);
    }

    public Drawable getItemBackground() {
        return this.g.getItemBackground();
    }

    public void setItemBackgroundResource(int i2) {
        setItemBackground(ContextCompat.getDrawable(getContext(), i2));
    }

    public void setItemBackground(Drawable drawable) {
        this.g.setItemBackground(drawable);
    }

    public int getItemHorizontalPadding() {
        return this.g.getItemHorizontalPadding();
    }

    public void setItemHorizontalPadding(int i2) {
        this.g.setItemHorizontalPadding(i2);
    }

    public void setItemHorizontalPaddingResource(int i2) {
        this.g.setItemHorizontalPadding(getResources().getDimensionPixelSize(i2));
    }

    public int getItemIconPadding() {
        return this.g.getItemIconPadding();
    }

    public void setItemIconPadding(int i2) {
        this.g.setItemIconPadding(i2);
    }

    public void setItemIconPaddingResource(int i2) {
        this.g.setItemIconPadding(getResources().getDimensionPixelSize(i2));
    }

    public void setCheckedItem(int i2) {
        MenuItem findItem = this.f.findItem(i2);
        if (findItem != null) {
            this.g.setCheckedItem((MenuItemImpl) findItem);
        }
    }

    public void setCheckedItem(MenuItem menuItem) {
        MenuItem findItem = this.f.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.g.setCheckedItem((MenuItemImpl) findItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }

    public MenuItem getCheckedItem() {
        return this.g.getCheckedItem();
    }

    public void setItemTextAppearance(int i2) {
        this.g.setItemTextAppearance(i2);
    }

    private MenuInflater getMenuInflater() {
        if (this.i == null) {
            this.i = new SupportMenuInflater(getContext());
        }
        return this.i;
    }

    private ColorStateList a(int i2) {
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
}
