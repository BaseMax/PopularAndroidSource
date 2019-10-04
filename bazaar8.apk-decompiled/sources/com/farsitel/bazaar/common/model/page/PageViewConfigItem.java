package com.farsitel.bazaar.common.model.page;

import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: PageItem.kt */
public final class PageViewConfigItem implements Serializable {
    public final PageTitleItem pageTitleItem;
    public final boolean showNumberRow;

    public PageViewConfigItem() {
        this(null, false, 3, null);
    }

    public PageViewConfigItem(PageTitleItem pageTitleItem2, boolean z) {
        this.pageTitleItem = pageTitleItem2;
        this.showNumberRow = z;
    }

    public static /* synthetic */ PageViewConfigItem copy$default(PageViewConfigItem pageViewConfigItem, PageTitleItem pageTitleItem2, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            pageTitleItem2 = pageViewConfigItem.pageTitleItem;
        }
        if ((i2 & 2) != 0) {
            z = pageViewConfigItem.showNumberRow;
        }
        return pageViewConfigItem.copy(pageTitleItem2, z);
    }

    public final PageTitleItem component1() {
        return this.pageTitleItem;
    }

    public final boolean component2() {
        return this.showNumberRow;
    }

    public final PageViewConfigItem copy(PageTitleItem pageTitleItem2, boolean z) {
        return new PageViewConfigItem(pageTitleItem2, z);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof PageViewConfigItem) {
                PageViewConfigItem pageViewConfigItem = (PageViewConfigItem) obj;
                if (j.a((Object) this.pageTitleItem, (Object) pageViewConfigItem.pageTitleItem)) {
                    if (this.showNumberRow == pageViewConfigItem.showNumberRow) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final PageTitleItem getPageTitleItem() {
        return this.pageTitleItem;
    }

    public final boolean getShowNumberRow() {
        return this.showNumberRow;
    }

    public int hashCode() {
        PageTitleItem pageTitleItem2 = this.pageTitleItem;
        int hashCode = (pageTitleItem2 != null ? pageTitleItem2.hashCode() : 0) * 31;
        boolean z = this.showNumberRow;
        if (z) {
            z = true;
        }
        return hashCode + (z ? 1 : 0);
    }

    public String toString() {
        return "PageViewConfigItem(pageTitleItem=" + this.pageTitleItem + ", showNumberRow=" + this.showNumberRow + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PageViewConfigItem(PageTitleItem pageTitleItem2, boolean z, int i2, f fVar) {
        this((i2 & 1) != 0 ? null : pageTitleItem2, (i2 & 2) != 0 ? false : z);
    }
}
