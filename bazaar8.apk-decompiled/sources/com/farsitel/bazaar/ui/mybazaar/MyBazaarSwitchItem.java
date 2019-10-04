package com.farsitel.bazaar.ui.mybazaar;

import com.farsitel.bazaar.analytics.model.what.WhatType;
import h.f.b.j;

/* compiled from: MyBazaarItem.kt */
public final class MyBazaarSwitchItem extends MyBazaarParentRowItem {
    public final WhatType analyticsEvent;
    public final int icon;
    public final int id;
    public boolean switchState;
    public final int title;
    public final int viewType = MyBazaarItemViewType.SWITCH_ITEM.ordinal();

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public MyBazaarSwitchItem(int i2, int i3, int i4, boolean z, WhatType whatType) {
        super(i2, i3, i4, whatType);
        j.b(whatType, "analyticsEvent");
        this.id = i2;
        this.title = i3;
        this.icon = i4;
        this.switchState = z;
        this.analyticsEvent = whatType;
    }

    public final void a(boolean z) {
        this.switchState = z;
    }

    public int b() {
        return this.id;
    }

    public int c() {
        return this.icon;
    }

    public final boolean d() {
        return this.switchState;
    }

    public int e() {
        return this.title;
    }

    public int getViewType() {
        return this.viewType;
    }

    public WhatType a() {
        return this.analyticsEvent;
    }
}
