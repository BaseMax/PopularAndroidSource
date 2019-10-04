package com.farsitel.bazaar.ui.mybazaar;

import com.farsitel.bazaar.analytics.model.what.WhatType;
import h.f.b.f;
import h.f.b.j;

/* compiled from: MyBazaarItem.kt */
public final class MyBazaarItem extends MyBazaarParentRowItem {
    public final WhatType analyticsEvent;
    public String badgeNumber;
    public final boolean hasArrow;
    public final int icon;
    public final int id;
    public final Integer navigationResId;
    public final int title;
    public final int viewType;

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MyBazaarItem(int i2, int i3, int i4, boolean z, String str, Integer num, WhatType whatType, int i5, f fVar) {
        this(i2, i3, i4, (i5 & 8) != 0 ? true : z, (i5 & 16) != 0 ? null : str, (i5 & 32) != 0 ? null : num, whatType);
    }

    public final void a(String str) {
        this.badgeNumber = str;
    }

    public int b() {
        return this.id;
    }

    public final String c() {
        return this.badgeNumber;
    }

    public final boolean d() {
        return this.hasArrow;
    }

    public int e() {
        return this.icon;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MyBazaarItem) {
                MyBazaarItem myBazaarItem = (MyBazaarItem) obj;
                if (b() == myBazaarItem.b()) {
                    if (g() == myBazaarItem.g()) {
                        if (e() == myBazaarItem.e()) {
                            if (!(this.hasArrow == myBazaarItem.hasArrow) || !j.a((Object) this.badgeNumber, (Object) myBazaarItem.badgeNumber) || !j.a((Object) this.navigationResId, (Object) myBazaarItem.navigationResId) || !j.a((Object) a(), (Object) myBazaarItem.a())) {
                                return false;
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final Integer f() {
        return this.navigationResId;
    }

    public int g() {
        return this.title;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        int a2 = ((((Integer.valueOf(b()).hashCode() * 31) + Integer.valueOf(g()).hashCode()) * 31) + Integer.valueOf(e()).hashCode()) * 31;
        boolean z = this.hasArrow;
        if (z) {
            z = true;
        }
        int i2 = (a2 + (z ? 1 : 0)) * 31;
        String str = this.badgeNumber;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        Integer num = this.navigationResId;
        int hashCode2 = (hashCode + (num != null ? num.hashCode() : 0)) * 31;
        WhatType a3 = a();
        if (a3 != null) {
            i3 = a3.hashCode();
        }
        return hashCode2 + i3;
    }

    public String toString() {
        return "MyBazaarItem(id=" + b() + ", title=" + g() + ", icon=" + e() + ", hasArrow=" + this.hasArrow + ", badgeNumber=" + this.badgeNumber + ", navigationResId=" + this.navigationResId + ", analyticsEvent=" + a() + ")";
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public MyBazaarItem(int i2, int i3, int i4, boolean z, String str, Integer num, WhatType whatType) {
        super(i2, i3, i4, whatType);
        j.b(whatType, "analyticsEvent");
        this.id = i2;
        this.title = i3;
        this.icon = i4;
        this.hasArrow = z;
        this.badgeNumber = str;
        this.navigationResId = num;
        this.analyticsEvent = whatType;
        this.viewType = MyBazaarItemViewType.ITEM.ordinal();
    }

    public WhatType a() {
        return this.analyticsEvent;
    }
}
