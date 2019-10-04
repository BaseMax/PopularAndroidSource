package com.farsitel.bazaar.ui.mybazaar;

import com.farsitel.bazaar.analytics.model.what.WhatType;
import h.f.b.j;

/* compiled from: MyBazaarItem.kt */
public abstract class MyBazaarParentRowItem extends MyBazaarRowItem {
    public final WhatType analyticsEvent;
    public final int icon;
    public final int id;
    public final int title;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public MyBazaarParentRowItem(int i2, int i3, int i4, WhatType whatType) {
        super(null);
        j.b(whatType, "analyticsEvent");
        this.id = i2;
        this.title = i3;
        this.icon = i4;
        this.analyticsEvent = whatType;
    }

    public WhatType a() {
        return this.analyticsEvent;
    }

    public int b() {
        return this.id;
    }
}
