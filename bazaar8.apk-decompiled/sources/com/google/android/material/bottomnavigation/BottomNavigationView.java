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
import androidx.customview.view.AbsSavedState;
import b.b.f.a.k;
import b.b.f.a.t;
import b.b.f.g;
import b.b.g.pa;
import b.i.k.z;
import c.e.a.c.c;
import c.e.a.c.e.d;
import c.e.a.c.j;
import c.e.a.c.l.p;

public class BottomNavigationView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public final k f13335a;

    /* renamed from: b  reason: collision with root package name */
    public final d f13336b;

    /* renamed from: c  reason: collision with root package name */
    public final BottomNavigationPresenter f13337c;

    /* renamed from: d  reason: collision with root package name */
    public MenuInflater f13338d;

    /* renamed from: e  reason: collision with root package name */
    public b f13339e;

    /* renamed from: f  reason: collision with root package name */
    public a f13340f;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new g();

        /* renamed from: c  reason: collision with root package name */
        public Bundle f13341c;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public final void a(Parcel parcel, ClassLoader classLoader) {
            this.f13341c = parcel.readBundle(classLoader);
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeBundle(this.f13341c);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader);
        }
    }

    public interface a {
        void b(MenuItem menuItem);
    }

    public interface b {
        boolean a(MenuItem menuItem);
    }

    public BottomNavigationView(Context context) {
        this(context, null);
    }

    private MenuInflater getMenuInflater() {
        if (this.f13338d == null) {
            this.f13338d = new g(getContext());
        }
        return this.f13338d;
    }

    public Drawable getItemBackground() {
        return this.f13336b.getItemBackground();
    }

    @Deprecated
    public int getItemBackgroundResource() {
        return this.f13336b.getItemBackgroundRes();
    }

    public int getItemIconSize() {
        return this.f13336b.getItemIconSize();
    }

    public ColorStateList getItemIconTintList() {
        return this.f13336b.getIconTintList();
    }

    public int getItemTextAppearanceActive() {
        return this.f13336b.getItemTextAppearanceActive();
    }

    public int getItemTextAppearanceInactive() {
        return this.f13336b.getItemTextAppearanceInactive();
    }

    public ColorStateList getItemTextColor() {
        return this.f13336b.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f13336b.getLabelVisibilityMode();
    }

    public int getMaxItemCount() {
        return 5;
    }

    public Menu getMenu() {
        return this.f13335a;
    }

    public int getSelectedItemId() {
        return this.f13336b.getSelectedItemId();
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        this.f13335a.d(savedState.f13341c);
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f13341c = new Bundle();
        this.f13335a.f(savedState.f13341c);
        return savedState;
    }

    public void setItemBackground(Drawable drawable) {
        this.f13336b.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(int i2) {
        this.f13336b.setItemBackgroundRes(i2);
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        if (this.f13336b.b() != z) {
            this.f13336b.setItemHorizontalTranslationEnabled(z);
            this.f13337c.a(false);
        }
    }

    public void setItemIconSize(int i2) {
        this.f13336b.setItemIconSize(i2);
    }

    public void setItemIconSizeRes(int i2) {
        setItemIconSize(getResources().getDimensionPixelSize(i2));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f13336b.setIconTintList(colorStateList);
    }

    public void setItemTextAppearanceActive(int i2) {
        this.f13336b.setItemTextAppearanceActive(i2);
    }

    public void setItemTextAppearanceInactive(int i2) {
        this.f13336b.setItemTextAppearanceInactive(i2);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f13336b.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i2) {
        if (this.f13336b.getLabelVisibilityMode() != i2) {
            this.f13336b.setLabelVisibilityMode(i2);
            this.f13337c.a(false);
        }
    }

    public void setOnNavigationItemReselectedListener(a aVar) {
        this.f13340f = aVar;
    }

    public void setOnNavigationItemSelectedListener(b bVar) {
        this.f13339e = bVar;
    }

    public void setSelectedItemId(int i2) {
        MenuItem findItem = this.f13335a.findItem(i2);
        if (findItem != null && !this.f13335a.a(findItem, (t) this.f13337c, 0)) {
            findItem.setChecked(true);
        }
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.e.a.c.b.bottomNavigationStyle);
    }

    public void a(int i2) {
        this.f13337c.b(true);
        getMenuInflater().inflate(i2, this.f13335a);
        this.f13337c.b(false);
        this.f13337c.a(true);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13337c = new BottomNavigationPresenter();
        this.f13335a = new c.e.a.c.e.b(context);
        this.f13336b = new d(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.f13336b.setLayoutParams(layoutParams);
        this.f13337c.a(this.f13336b);
        this.f13337c.a(1);
        this.f13336b.setPresenter(this.f13337c);
        this.f13335a.a((t) this.f13337c);
        this.f13337c.a(getContext(), this.f13335a);
        pa d2 = p.d(context, attributeSet, c.e.a.c.k.BottomNavigationView, i2, j.Widget_Design_BottomNavigationView, c.e.a.c.k.BottomNavigationView_itemTextAppearanceInactive, c.e.a.c.k.BottomNavigationView_itemTextAppearanceActive);
        if (d2.g(c.e.a.c.k.BottomNavigationView_itemIconTint)) {
            this.f13336b.setIconTintList(d2.a(c.e.a.c.k.BottomNavigationView_itemIconTint));
        } else {
            d dVar = this.f13336b;
            dVar.setIconTintList(dVar.a(16842808));
        }
        setItemIconSize(d2.c(c.e.a.c.k.BottomNavigationView_itemIconSize, getResources().getDimensionPixelSize(c.e.a.c.d.design_bottom_navigation_icon_size)));
        if (d2.g(c.e.a.c.k.BottomNavigationView_itemTextAppearanceInactive)) {
            setItemTextAppearanceInactive(d2.g(c.e.a.c.k.BottomNavigationView_itemTextAppearanceInactive, 0));
        }
        if (d2.g(c.e.a.c.k.BottomNavigationView_itemTextAppearanceActive)) {
            setItemTextAppearanceActive(d2.g(c.e.a.c.k.BottomNavigationView_itemTextAppearanceActive, 0));
        }
        if (d2.g(c.e.a.c.k.BottomNavigationView_itemTextColor)) {
            setItemTextColor(d2.a(c.e.a.c.k.BottomNavigationView_itemTextColor));
        }
        if (d2.g(c.e.a.c.k.BottomNavigationView_elevation)) {
            z.a((View) this, (float) d2.c(c.e.a.c.k.BottomNavigationView_elevation, 0));
        }
        setLabelVisibilityMode(d2.e(c.e.a.c.k.BottomNavigationView_labelVisibilityMode, -1));
        setItemHorizontalTranslationEnabled(d2.a(c.e.a.c.k.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        this.f13336b.setItemBackgroundRes(d2.g(c.e.a.c.k.BottomNavigationView_itemBackground, 0));
        if (d2.g(c.e.a.c.k.BottomNavigationView_menu)) {
            a(d2.g(c.e.a.c.k.BottomNavigationView_menu, 0));
        }
        d2.a();
        addView(this.f13336b, layoutParams);
        if (Build.VERSION.SDK_INT < 21) {
            a(context);
        }
        this.f13335a.a((k.a) new f(this));
    }

    public final void a(Context context) {
        View view = new View(context);
        view.setBackgroundColor(b.i.b.a.a(context, c.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(c.e.a.c.d.design_bottom_navigation_shadow_height)));
        addView(view);
    }
}
