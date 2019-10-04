package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.MenuItem;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;

public final class BottomNavigationPresenter implements MenuPresenter {

    /* renamed from: a  reason: collision with root package name */
    private MenuBuilder f3829a;

    /* renamed from: b  reason: collision with root package name */
    private BottomNavigationMenuView f3830b;
    private boolean c = false;
    private int d;

    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        int f3831a;

        public int describeContents() {
            return 0;
        }

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f3831a = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f3831a);
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

    public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
    }

    public final boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    public final void setCallback(MenuPresenter.Callback callback) {
    }

    public final void setBottomNavigationMenuView(BottomNavigationMenuView bottomNavigationMenuView) {
        this.f3830b = bottomNavigationMenuView;
    }

    public final void initForMenu(Context context, MenuBuilder menuBuilder) {
        this.f3829a = menuBuilder;
        this.f3830b.initialize(this.f3829a);
    }

    public final MenuView getMenuView(ViewGroup viewGroup) {
        return this.f3830b;
    }

    public final void updateMenuView(boolean z) {
        if (!this.c) {
            if (z) {
                this.f3830b.buildMenuView();
            } else {
                this.f3830b.updateMenuView();
            }
        }
    }

    public final void setId(int i) {
        this.d = i;
    }

    public final int getId() {
        return this.d;
    }

    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.f3831a = this.f3830b.getSelectedItemId();
        return savedState;
    }

    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            BottomNavigationMenuView bottomNavigationMenuView = this.f3830b;
            int i = ((SavedState) parcelable).f3831a;
            int size = bottomNavigationMenuView.c.size();
            for (int i2 = 0; i2 < size; i2++) {
                MenuItem item = bottomNavigationMenuView.c.getItem(i2);
                if (i == item.getItemId()) {
                    bottomNavigationMenuView.f3826a = i;
                    bottomNavigationMenuView.f3827b = i2;
                    item.setChecked(true);
                    return;
                }
            }
        }
    }

    public final void setUpdateSuspended(boolean z) {
        this.c = z;
    }
}
