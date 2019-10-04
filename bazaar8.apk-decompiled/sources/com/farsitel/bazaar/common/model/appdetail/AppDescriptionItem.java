package com.farsitel.bazaar.common.model.appdetail;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class AppDescriptionItem implements RecyclerData {
    public final AppMoreDescriptionItem appMoreDescriptionItem;
    public final String shortDescription;
    public final int viewType = AppDetailViewItemType.APP_DESCRIPTION.ordinal();

    public AppDescriptionItem(String str, AppMoreDescriptionItem appMoreDescriptionItem2) {
        j.b(str, "shortDescription");
        j.b(appMoreDescriptionItem2, "appMoreDescriptionItem");
        this.shortDescription = str;
        this.appMoreDescriptionItem = appMoreDescriptionItem2;
    }

    public static /* synthetic */ AppDescriptionItem copy$default(AppDescriptionItem appDescriptionItem, String str, AppMoreDescriptionItem appMoreDescriptionItem2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = appDescriptionItem.shortDescription;
        }
        if ((i2 & 2) != 0) {
            appMoreDescriptionItem2 = appDescriptionItem.appMoreDescriptionItem;
        }
        return appDescriptionItem.copy(str, appMoreDescriptionItem2);
    }

    public final String component1() {
        return this.shortDescription;
    }

    public final AppMoreDescriptionItem component2() {
        return this.appMoreDescriptionItem;
    }

    public final AppDescriptionItem copy(String str, AppMoreDescriptionItem appMoreDescriptionItem2) {
        j.b(str, "shortDescription");
        j.b(appMoreDescriptionItem2, "appMoreDescriptionItem");
        return new AppDescriptionItem(str, appMoreDescriptionItem2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.appMoreDescriptionItem, (java.lang.Object) r3.appMoreDescriptionItem) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.appdetail.AppDescriptionItem
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.common.model.appdetail.AppDescriptionItem r3 = (com.farsitel.bazaar.common.model.appdetail.AppDescriptionItem) r3
            java.lang.String r0 = r2.shortDescription
            java.lang.String r1 = r3.shortDescription
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem r0 = r2.appMoreDescriptionItem
            com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem r3 = r3.appMoreDescriptionItem
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.appdetail.AppDescriptionItem.equals(java.lang.Object):boolean");
    }

    public final AppMoreDescriptionItem getAppMoreDescriptionItem() {
        return this.appMoreDescriptionItem;
    }

    public final String getShortDescription() {
        return this.shortDescription;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        String str = this.shortDescription;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        AppMoreDescriptionItem appMoreDescriptionItem2 = this.appMoreDescriptionItem;
        if (appMoreDescriptionItem2 != null) {
            i2 = appMoreDescriptionItem2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "AppDescriptionItem(shortDescription=" + this.shortDescription + ", appMoreDescriptionItem=" + this.appMoreDescriptionItem + ")";
    }
}
