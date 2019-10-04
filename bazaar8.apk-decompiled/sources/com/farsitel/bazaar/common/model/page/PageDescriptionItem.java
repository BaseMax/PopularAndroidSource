package com.farsitel.bazaar.common.model.page;

import h.f.b.j;

/* compiled from: PageType.kt */
public final class PageDescriptionItem implements PageTypeItem {
    public final String text;
    public final int viewType = CommonItemType.DESCRIPTION.getValue();

    public PageDescriptionItem(String str) {
        j.b(str, "text");
        this.text = str;
    }

    public static /* synthetic */ PageDescriptionItem copy$default(PageDescriptionItem pageDescriptionItem, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = pageDescriptionItem.text;
        }
        return pageDescriptionItem.copy(str);
    }

    public final String component1() {
        return this.text;
    }

    public final PageDescriptionItem copy(String str) {
        j.b(str, "text");
        return new PageDescriptionItem(str);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof PageDescriptionItem) && j.a((Object) this.text, (Object) ((PageDescriptionItem) obj).text));
    }

    public final String getText() {
        return this.text;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        String str = this.text;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "PageDescriptionItem(text=" + this.text + ")";
    }
}
