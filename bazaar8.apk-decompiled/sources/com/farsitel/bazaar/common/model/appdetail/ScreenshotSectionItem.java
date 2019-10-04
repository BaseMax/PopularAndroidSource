package com.farsitel.bazaar.common.model.appdetail;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;
import java.util.List;

/* compiled from: ViewHolderItem.kt */
public final class ScreenshotSectionItem implements RecyclerData {
    public final List<AppScreenshotItem> entityListURL;
    public final int viewType = AppDetailViewItemType.SCREEN_SHOT_SECTION.ordinal();

    public ScreenshotSectionItem(List<AppScreenshotItem> list) {
        this.entityListURL = list;
    }

    public static /* synthetic */ ScreenshotSectionItem copy$default(ScreenshotSectionItem screenshotSectionItem, List<AppScreenshotItem> list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = screenshotSectionItem.entityListURL;
        }
        return screenshotSectionItem.copy(list);
    }

    public final List<AppScreenshotItem> component1() {
        return this.entityListURL;
    }

    public final ScreenshotSectionItem copy(List<AppScreenshotItem> list) {
        return new ScreenshotSectionItem(list);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof ScreenshotSectionItem) && j.a((Object) this.entityListURL, (Object) ((ScreenshotSectionItem) obj).entityListURL));
    }

    public final List<AppScreenshotItem> getEntityListURL() {
        return this.entityListURL;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        List<AppScreenshotItem> list = this.entityListURL;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "ScreenshotSectionItem(entityListURL=" + this.entityListURL + ")";
    }
}
