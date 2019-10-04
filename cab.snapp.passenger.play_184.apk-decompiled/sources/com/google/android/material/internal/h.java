package com.google.android.material.internal;

import android.content.Context;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.SubMenuBuilder;

public final class h extends SubMenuBuilder {
    public h(Context context, f fVar, MenuItemImpl menuItemImpl) {
        super(context, fVar, menuItemImpl);
    }

    public final void onItemsChanged(boolean z) {
        super.onItemsChanged(z);
        ((MenuBuilder) getParentMenu()).onItemsChanged(z);
    }
}
