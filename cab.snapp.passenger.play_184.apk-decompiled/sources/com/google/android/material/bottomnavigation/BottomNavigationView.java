package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.a;
import com.google.android.material.internal.k;

public class BottomNavigationView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final MenuBuilder f3832a;

    /* renamed from: b  reason: collision with root package name */
    private final BottomNavigationMenuView f3833b;
    private final BottomNavigationPresenter c;
    private MenuInflater d;
    /* access modifiers changed from: private */
    public b e;
    /* access modifiers changed from: private */
    public a f;

    static class SavedState extends AbsSavedState {
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
        Bundle f3835a;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f3835a = parcel.readBundle(classLoader);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f3835a);
        }
    }

    public interface a {
        void onNavigationItemReselected(MenuItem menuItem);
    }

    public interface b {
        boolean onNavigationItemSelected(MenuItem menuItem);
    }

    public int getMaxItemCount() {
        return 5;
    }

    public BottomNavigationView(Context context) {
        this(context, null);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.bottomNavigationStyle);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new BottomNavigationPresenter();
        this.f3832a = new a(context);
        this.f3833b = new BottomNavigationMenuView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.f3833b.setLayoutParams(layoutParams);
        this.c.setBottomNavigationMenuView(this.f3833b);
        this.c.setId(1);
        this.f3833b.setPresenter(this.c);
        this.f3832a.addMenuPresenter(this.c);
        this.c.initForMenu(getContext(), this.f3832a);
        TintTypedArray obtainTintedStyledAttributes = k.obtainTintedStyledAttributes(context, attributeSet, a.k.BottomNavigationView, i, a.j.Widget_Design_BottomNavigationView, a.k.BottomNavigationView_itemTextAppearanceInactive, a.k.BottomNavigationView_itemTextAppearanceActive);
        if (obtainTintedStyledAttributes.hasValue(a.k.BottomNavigationView_itemIconTint)) {
            this.f3833b.setIconTintList(obtainTintedStyledAttributes.getColorStateList(a.k.BottomNavigationView_itemIconTint));
        } else {
            BottomNavigationMenuView bottomNavigationMenuView = this.f3833b;
            bottomNavigationMenuView.setIconTintList(bottomNavigationMenuView.createDefaultColorStateList(16842808));
        }
        setItemIconSize(obtainTintedStyledAttributes.getDimensionPixelSize(a.k.BottomNavigationView_itemIconSize, getResources().getDimensionPixelSize(a.d.design_bottom_navigation_icon_size)));
        if (obtainTintedStyledAttributes.hasValue(a.k.BottomNavigationView_itemTextAppearanceInactive)) {
            setItemTextAppearanceInactive(obtainTintedStyledAttributes.getResourceId(a.k.BottomNavigationView_itemTextAppearanceInactive, 0));
        }
        if (obtainTintedStyledAttributes.hasValue(a.k.BottomNavigationView_itemTextAppearanceActive)) {
            setItemTextAppearanceActive(obtainTintedStyledAttributes.getResourceId(a.k.BottomNavigationView_itemTextAppearanceActive, 0));
        }
        if (obtainTintedStyledAttributes.hasValue(a.k.BottomNavigationView_itemTextColor)) {
            setItemTextColor(obtainTintedStyledAttributes.getColorStateList(a.k.BottomNavigationView_itemTextColor));
        }
        if (obtainTintedStyledAttributes.hasValue(a.k.BottomNavigationView_elevation)) {
            ViewCompat.setElevation(this, (float) obtainTintedStyledAttributes.getDimensionPixelSize(a.k.BottomNavigationView_elevation, 0));
        }
        setLabelVisibilityMode(obtainTintedStyledAttributes.getInteger(a.k.BottomNavigationView_labelVisibilityMode, -1));
        setItemHorizontalTranslationEnabled(obtainTintedStyledAttributes.getBoolean(a.k.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        this.f3833b.setItemBackgroundRes(obtainTintedStyledAttributes.getResourceId(a.k.BottomNavigationView_itemBackground, 0));
        if (obtainTintedStyledAttributes.hasValue(a.k.BottomNavigationView_menu)) {
            inflateMenu(obtainTintedStyledAttributes.getResourceId(a.k.BottomNavigationView_menu, 0));
        }
        obtainTintedStyledAttributes.recycle();
        addView(this.f3833b, layoutParams);
        if (Build.VERSION.SDK_INT < 21) {
            View view = new View(context);
            view.setBackgroundColor(ContextCompat.getColor(context, a.c.design_bottom_navigation_shadow_color));
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(a.d.design_bottom_navigation_shadow_height)));
            addView(view);
        }
        this.f3832a.setCallback(new MenuBuilder.Callback() {
            public final void onMenuModeChange(MenuBuilder menuBuilder) {
            }

            public final boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
                if (BottomNavigationView.this.f != null && menuItem.getItemId() == BottomNavigationView.this.getSelectedItemId()) {
                    BottomNavigationView.this.f.onNavigationItemReselected(menuItem);
                    return true;
                } else if (BottomNavigationView.this.e == null || BottomNavigationView.this.e.onNavigationItemSelected(menuItem)) {
                    return false;
                } else {
                    return true;
                }
            }
        });
    }

    public void setOnNavigationItemSelectedListener(b bVar) {
        this.e = bVar;
    }

    public void setOnNavigationItemReselectedListener(a aVar) {
        this.f = aVar;
    }

    public Menu getMenu() {
        return this.f3832a;
    }

    public void inflateMenu(int i) {
        this.c.setUpdateSuspended(true);
        getMenuInflater().inflate(i, this.f3832a);
        this.c.setUpdateSuspended(false);
        this.c.updateMenuView(true);
    }

    public ColorStateList getItemIconTintList() {
        return this.f3833b.getIconTintList();
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f3833b.setIconTintList(colorStateList);
    }

    public void setItemIconSize(int i) {
        this.f3833b.setItemIconSize(i);
    }

    public void setItemIconSizeRes(int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    public int getItemIconSize() {
        return this.f3833b.getItemIconSize();
    }

    public ColorStateList getItemTextColor() {
        return this.f3833b.getItemTextColor();
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f3833b.setItemTextColor(colorStateList);
    }

    @Deprecated
    public int getItemBackgroundResource() {
        return this.f3833b.getItemBackgroundRes();
    }

    public void setItemBackgroundResource(int i) {
        this.f3833b.setItemBackgroundRes(i);
    }

    public Drawable getItemBackground() {
        return this.f3833b.getItemBackground();
    }

    public void setItemBackground(Drawable drawable) {
        this.f3833b.setItemBackground(drawable);
    }

    public int getSelectedItemId() {
        return this.f3833b.getSelectedItemId();
    }

    public void setSelectedItemId(int i) {
        MenuItem findItem = this.f3832a.findItem(i);
        if (findItem != null && !this.f3832a.performItemAction(findItem, this.c, 0)) {
            findItem.setChecked(true);
        }
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f3833b.getLabelVisibilityMode() != i) {
            this.f3833b.setLabelVisibilityMode(i);
            this.c.updateMenuView(false);
        }
    }

    public int getLabelVisibilityMode() {
        return this.f3833b.getLabelVisibilityMode();
    }

    public void setItemTextAppearanceInactive(int i) {
        this.f3833b.setItemTextAppearanceInactive(i);
    }

    public int getItemTextAppearanceInactive() {
        return this.f3833b.getItemTextAppearanceInactive();
    }

    public void setItemTextAppearanceActive(int i) {
        this.f3833b.setItemTextAppearanceActive(i);
    }

    public int getItemTextAppearanceActive() {
        return this.f3833b.getItemTextAppearanceActive();
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        if (this.f3833b.isItemHorizontalTranslationEnabled() != z) {
            this.f3833b.setItemHorizontalTranslationEnabled(z);
            this.c.updateMenuView(false);
        }
    }

    public boolean isItemHorizontalTranslationEnabled() {
        return this.f3833b.isItemHorizontalTranslationEnabled();
    }

    private MenuInflater getMenuInflater() {
        if (this.d == null) {
            this.d = new SupportMenuInflater(getContext());
        }
        return this.d;
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3835a = new Bundle();
        this.f3832a.savePresenterStates(savedState.f3835a);
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
        this.f3832a.restorePresenterStates(savedState.f3835a);
    }
}
