package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.ListMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.a;
import java.util.ArrayList;

public final class g implements MenuPresenter {

    /* renamed from: a  reason: collision with root package name */
    LinearLayout f3941a;

    /* renamed from: b  reason: collision with root package name */
    MenuBuilder f3942b;
    b c;
    LayoutInflater d;
    int e;
    boolean f;
    ColorStateList g;
    ColorStateList h;
    Drawable i;
    int j;
    int k;
    int l;
    final View.OnClickListener m = new View.OnClickListener() {
        public final void onClick(View view) {
            g.this.setUpdateSuspended(true);
            MenuItemImpl itemData = ((NavigationMenuItemView) view).getItemData();
            boolean performItemAction = g.this.f3942b.performItemAction(itemData, g.this, 0);
            if (itemData != null && itemData.isCheckable() && performItemAction) {
                g.this.c.setCheckedItem(itemData);
            }
            g.this.setUpdateSuspended(false);
            g.this.updateMenuView(false);
        }
    };
    private NavigationMenuView n;
    private MenuPresenter.Callback o;
    private int p;
    private int q;

    static class a extends j {
        public a(View view) {
            super(view);
        }
    }

    class b extends RecyclerView.Adapter<j> {

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<d> f3945b = new ArrayList<>();
        private MenuItemImpl c;
        private boolean d;

        public final long getItemId(int i) {
            return (long) i;
        }

        b() {
            a();
        }

        public final int getItemCount() {
            return this.f3945b.size();
        }

        public final int getItemViewType(int i) {
            d dVar = this.f3945b.get(i);
            if (dVar instanceof e) {
                return 2;
            }
            if (dVar instanceof c) {
                return 3;
            }
            if (dVar instanceof f) {
                return ((f) dVar).getMenuItem().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        public final j onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                return new C0075g(g.this.d, viewGroup, g.this.m);
            }
            if (i == 1) {
                return new i(g.this.d, viewGroup);
            }
            if (i == 2) {
                return new h(g.this.d, viewGroup);
            }
            if (i != 3) {
                return null;
            }
            return new a(g.this.f3941a);
        }

        public final void onBindViewHolder(j jVar, int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType == 0) {
                NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) jVar.itemView;
                navigationMenuItemView.setIconTintList(g.this.h);
                if (g.this.f) {
                    navigationMenuItemView.setTextAppearance(g.this.e);
                }
                if (g.this.g != null) {
                    navigationMenuItemView.setTextColor(g.this.g);
                }
                ViewCompat.setBackground(navigationMenuItemView, g.this.i != null ? g.this.i.getConstantState().newDrawable() : null);
                f fVar = (f) this.f3945b.get(i);
                navigationMenuItemView.setNeedsEmptyIcon(fVar.f3948a);
                navigationMenuItemView.setHorizontalPadding(g.this.j);
                navigationMenuItemView.setIconPadding(g.this.k);
                navigationMenuItemView.initialize(fVar.getMenuItem(), 0);
            } else if (itemViewType != 1) {
                if (itemViewType == 2) {
                    e eVar = (e) this.f3945b.get(i);
                    jVar.itemView.setPadding(0, eVar.getPaddingTop(), 0, eVar.getPaddingBottom());
                }
            } else {
                ((TextView) jVar.itemView).setText(((f) this.f3945b.get(i)).getMenuItem().getTitle());
            }
        }

        public final void onViewRecycled(j jVar) {
            if (jVar instanceof C0075g) {
                ((NavigationMenuItemView) jVar.itemView).recycle();
            }
        }

        public final void update() {
            a();
            notifyDataSetChanged();
        }

        private void a() {
            if (!this.d) {
                this.d = true;
                this.f3945b.clear();
                this.f3945b.add(new c());
                int size = g.this.f3942b.getVisibleItems().size();
                int i = -1;
                boolean z = false;
                int i2 = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    MenuItemImpl menuItemImpl = g.this.f3942b.getVisibleItems().get(i3);
                    if (menuItemImpl.isChecked()) {
                        setCheckedItem(menuItemImpl);
                    }
                    if (menuItemImpl.isCheckable()) {
                        menuItemImpl.setExclusiveCheckable(false);
                    }
                    if (menuItemImpl.hasSubMenu()) {
                        SubMenu subMenu = menuItemImpl.getSubMenu();
                        if (subMenu.hasVisibleItems()) {
                            if (i3 != 0) {
                                this.f3945b.add(new e(g.this.l, 0));
                            }
                            this.f3945b.add(new f(menuItemImpl));
                            int size2 = this.f3945b.size();
                            int size3 = subMenu.size();
                            boolean z2 = false;
                            for (int i4 = 0; i4 < size3; i4++) {
                                MenuItemImpl menuItemImpl2 = (MenuItemImpl) subMenu.getItem(i4);
                                if (menuItemImpl2.isVisible()) {
                                    if (!z2 && menuItemImpl2.getIcon() != null) {
                                        z2 = true;
                                    }
                                    if (menuItemImpl2.isCheckable()) {
                                        menuItemImpl2.setExclusiveCheckable(false);
                                    }
                                    if (menuItemImpl.isChecked()) {
                                        setCheckedItem(menuItemImpl);
                                    }
                                    this.f3945b.add(new f(menuItemImpl2));
                                }
                            }
                            if (z2) {
                                a(size2, this.f3945b.size());
                            }
                        }
                    } else {
                        int groupId = menuItemImpl.getGroupId();
                        if (groupId != i) {
                            i2 = this.f3945b.size();
                            boolean z3 = menuItemImpl.getIcon() != null;
                            if (i3 != 0) {
                                i2++;
                                this.f3945b.add(new e(g.this.l, g.this.l));
                            }
                            z = z3;
                        } else if (!z && menuItemImpl.getIcon() != null) {
                            a(i2, this.f3945b.size());
                            z = true;
                        }
                        f fVar = new f(menuItemImpl);
                        fVar.f3948a = z;
                        this.f3945b.add(fVar);
                        i = groupId;
                    }
                }
                this.d = false;
            }
        }

        private void a(int i, int i2) {
            while (i < i2) {
                ((f) this.f3945b.get(i)).f3948a = true;
                i++;
            }
        }

        public final void setCheckedItem(MenuItemImpl menuItemImpl) {
            if (this.c != menuItemImpl && menuItemImpl.isCheckable()) {
                MenuItemImpl menuItemImpl2 = this.c;
                if (menuItemImpl2 != null) {
                    menuItemImpl2.setChecked(false);
                }
                this.c = menuItemImpl;
                menuItemImpl.setChecked(true);
            }
        }

        public final MenuItemImpl getCheckedItem() {
            return this.c;
        }

        public final Bundle createInstanceState() {
            Bundle bundle = new Bundle();
            MenuItemImpl menuItemImpl = this.c;
            if (menuItemImpl != null) {
                bundle.putInt("android:menu:checked", menuItemImpl.getItemId());
            }
            SparseArray sparseArray = new SparseArray();
            int size = this.f3945b.size();
            for (int i = 0; i < size; i++) {
                d dVar = this.f3945b.get(i);
                if (dVar instanceof f) {
                    MenuItemImpl menuItem = ((f) dVar).getMenuItem();
                    View actionView = menuItem != null ? menuItem.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(menuItem.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }

        public final void restoreInstanceState(Bundle bundle) {
            int i = bundle.getInt("android:menu:checked", 0);
            if (i != 0) {
                this.d = true;
                int size = this.f3945b.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    d dVar = this.f3945b.get(i2);
                    if (dVar instanceof f) {
                        MenuItemImpl menuItem = ((f) dVar).getMenuItem();
                        if (menuItem != null && menuItem.getItemId() == i) {
                            setCheckedItem(menuItem);
                            break;
                        }
                    }
                    i2++;
                }
                this.d = false;
                a();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:action_views");
            if (sparseParcelableArray != null) {
                int size2 = this.f3945b.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    d dVar2 = this.f3945b.get(i3);
                    if (dVar2 instanceof f) {
                        MenuItemImpl menuItem2 = ((f) dVar2).getMenuItem();
                        if (menuItem2 != null) {
                            View actionView = menuItem2.getActionView();
                            if (actionView != null) {
                                ParcelableSparseArray parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(menuItem2.getItemId());
                                if (parcelableSparseArray != null) {
                                    actionView.restoreHierarchyState(parcelableSparseArray);
                                }
                            }
                        }
                    }
                }
            }
        }

        public final void setUpdateSuspended(boolean z) {
            this.d = z;
        }
    }

    static class c implements d {
        c() {
        }
    }

    interface d {
    }

    static class e implements d {

        /* renamed from: a  reason: collision with root package name */
        private final int f3946a;

        /* renamed from: b  reason: collision with root package name */
        private final int f3947b;

        public e(int i, int i2) {
            this.f3946a = i;
            this.f3947b = i2;
        }

        public final int getPaddingTop() {
            return this.f3946a;
        }

        public final int getPaddingBottom() {
            return this.f3947b;
        }
    }

    static class f implements d {

        /* renamed from: a  reason: collision with root package name */
        boolean f3948a;

        /* renamed from: b  reason: collision with root package name */
        private final MenuItemImpl f3949b;

        f(MenuItemImpl menuItemImpl) {
            this.f3949b = menuItemImpl;
        }

        public final MenuItemImpl getMenuItem() {
            return this.f3949b;
        }
    }

    /* renamed from: com.google.android.material.internal.g$g  reason: collision with other inner class name */
    static class C0075g extends j {
        public C0075g(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(a.h.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    static class h extends j {
        public h(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(a.h.design_navigation_item_separator, viewGroup, false));
        }
    }

    static class i extends j {
        public i(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(a.h.design_navigation_item_subheader, viewGroup, false));
        }
    }

    static abstract class j extends RecyclerView.ViewHolder {
        public j(View view) {
            super(view);
        }
    }

    public final boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public final boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public final boolean flagActionItems() {
        return false;
    }

    public final boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    public final void initForMenu(Context context, MenuBuilder menuBuilder) {
        this.d = LayoutInflater.from(context);
        this.f3942b = menuBuilder;
        this.l = context.getResources().getDimensionPixelOffset(a.d.design_navigation_separator_vertical_padding);
    }

    public final MenuView getMenuView(ViewGroup viewGroup) {
        if (this.n == null) {
            this.n = (NavigationMenuView) this.d.inflate(a.h.design_navigation_menu, viewGroup, false);
            if (this.c == null) {
                this.c = new b();
            }
            this.f3941a = (LinearLayout) this.d.inflate(a.h.design_navigation_item_header, this.n, false);
            this.n.setAdapter(this.c);
        }
        return this.n;
    }

    public final void updateMenuView(boolean z) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.update();
        }
    }

    public final void setCallback(MenuPresenter.Callback callback) {
        this.o = callback;
    }

    public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.o;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    public final int getId() {
        return this.p;
    }

    public final void setId(int i2) {
        this.p = i2;
    }

    public final Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        if (this.n != null) {
            SparseArray sparseArray = new SparseArray();
            this.n.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray(ListMenuPresenter.VIEWS_TAG, sparseArray);
        }
        b bVar = this.c;
        if (bVar != null) {
            bundle.putBundle("android:menu:adapter", bVar.createInstanceState());
        }
        if (this.f3941a != null) {
            SparseArray sparseArray2 = new SparseArray();
            this.f3941a.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        }
        return bundle;
    }

    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(ListMenuPresenter.VIEWS_TAG);
            if (sparseParcelableArray != null) {
                this.n.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                this.c.restoreInstanceState(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray2 != null) {
                this.f3941a.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    public final void setCheckedItem(MenuItemImpl menuItemImpl) {
        this.c.setCheckedItem(menuItemImpl);
    }

    public final MenuItemImpl getCheckedItem() {
        return this.c.getCheckedItem();
    }

    public final View inflateHeaderView(int i2) {
        View inflate = this.d.inflate(i2, this.f3941a, false);
        addHeaderView(inflate);
        return inflate;
    }

    public final void addHeaderView(View view) {
        this.f3941a.addView(view);
        NavigationMenuView navigationMenuView = this.n;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    public final void removeHeaderView(View view) {
        this.f3941a.removeView(view);
        if (this.f3941a.getChildCount() == 0) {
            NavigationMenuView navigationMenuView = this.n;
            navigationMenuView.setPadding(0, this.q, 0, navigationMenuView.getPaddingBottom());
        }
    }

    public final int getHeaderCount() {
        return this.f3941a.getChildCount();
    }

    public final View getHeaderView(int i2) {
        return this.f3941a.getChildAt(i2);
    }

    public final ColorStateList getItemTintList() {
        return this.h;
    }

    public final void setItemIconTintList(ColorStateList colorStateList) {
        this.h = colorStateList;
        updateMenuView(false);
    }

    public final ColorStateList getItemTextColor() {
        return this.g;
    }

    public final void setItemTextColor(ColorStateList colorStateList) {
        this.g = colorStateList;
        updateMenuView(false);
    }

    public final void setItemTextAppearance(int i2) {
        this.e = i2;
        this.f = true;
        updateMenuView(false);
    }

    public final Drawable getItemBackground() {
        return this.i;
    }

    public final void setItemBackground(Drawable drawable) {
        this.i = drawable;
        updateMenuView(false);
    }

    public final int getItemHorizontalPadding() {
        return this.j;
    }

    public final void setItemHorizontalPadding(int i2) {
        this.j = i2;
        updateMenuView(false);
    }

    public final int getItemIconPadding() {
        return this.k;
    }

    public final void setItemIconPadding(int i2) {
        this.k = i2;
        updateMenuView(false);
    }

    public final void setUpdateSuspended(boolean z) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.setUpdateSuspended(z);
        }
    }

    public final void dispatchApplyWindowInsets(WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        if (this.q != systemWindowInsetTop) {
            this.q = systemWindowInsetTop;
            if (this.f3941a.getChildCount() == 0) {
                NavigationMenuView navigationMenuView = this.n;
                navigationMenuView.setPadding(0, this.q, 0, navigationMenuView.getPaddingBottom());
            }
        }
        ViewCompat.dispatchApplyWindowInsets(this.f3941a, windowInsetsCompat);
    }
}
