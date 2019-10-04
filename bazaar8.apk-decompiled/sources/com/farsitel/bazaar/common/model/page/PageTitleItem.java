package com.farsitel.bazaar.common.model.page;

import h.f.b.j;

/* compiled from: PageItem.kt */
public final class PageTitleItem {
    public final String title;

    public PageTitleItem(String str) {
        this.title = str;
    }

    public static /* synthetic */ PageTitleItem copy$default(PageTitleItem pageTitleItem, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = pageTitleItem.title;
        }
        return pageTitleItem.copy(str);
    }

    public final String component1() {
        return this.title;
    }

    public final PageTitleItem copy(String str) {
        return new PageTitleItem(str);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof PageTitleItem) && j.a((Object) this.title, (Object) ((PageTitleItem) obj).title));
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "PageTitleItem(title=" + this.title + ")";
    }
}
