package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import java.io.Serializable;

/* compiled from: Cinema.kt */
public final class TextTitleItem implements Serializable, RecyclerData {
    public final String text;
    public final String title;
    public final int viewType = CinemaViewItemType.OTHER_INFO_ITEM.ordinal();

    public TextTitleItem(String str, String str2) {
        this.text = str;
        this.title = str2;
    }

    public static /* synthetic */ TextTitleItem copy$default(TextTitleItem textTitleItem, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = textTitleItem.text;
        }
        if ((i2 & 2) != 0) {
            str2 = textTitleItem.title;
        }
        return textTitleItem.copy(str, str2);
    }

    public final String component1() {
        return this.text;
    }

    public final String component2() {
        return this.title;
    }

    public final TextTitleItem copy(String str, String str2) {
        return new TextTitleItem(str, str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.title, (java.lang.Object) r3.title) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.cinema.TextTitleItem
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.common.model.cinema.TextTitleItem r3 = (com.farsitel.bazaar.common.model.cinema.TextTitleItem) r3
            java.lang.String r0 = r2.text
            java.lang.String r1 = r3.text
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.title
            java.lang.String r3 = r3.title
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.cinema.TextTitleItem.equals(java.lang.Object):boolean");
    }

    public final String getText() {
        return this.text;
    }

    public final String getTitle() {
        return this.title;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        String str = this.text;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.title;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "TextTitleItem(text=" + this.text + ", title=" + this.title + ")";
    }
}
