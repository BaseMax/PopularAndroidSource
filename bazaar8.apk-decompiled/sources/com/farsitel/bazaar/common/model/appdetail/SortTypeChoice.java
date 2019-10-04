package com.farsitel.bazaar.common.model.appdetail;

import h.f.b.j;

/* compiled from: AppDetail.kt */
public final class SortTypeChoice {
    public final String identifier;
    public final String title;

    public SortTypeChoice(String str, String str2) {
        j.b(str, "identifier");
        j.b(str2, "title");
        this.identifier = str;
        this.title = str2;
    }

    public static /* synthetic */ SortTypeChoice copy$default(SortTypeChoice sortTypeChoice, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = sortTypeChoice.identifier;
        }
        if ((i2 & 2) != 0) {
            str2 = sortTypeChoice.title;
        }
        return sortTypeChoice.copy(str, str2);
    }

    public final String component1() {
        return this.identifier;
    }

    public final String component2() {
        return this.title;
    }

    public final SortTypeChoice copy(String str, String str2) {
        j.b(str, "identifier");
        j.b(str2, "title");
        return new SortTypeChoice(str, str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.title, (java.lang.Object) r3.title) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.appdetail.SortTypeChoice
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.common.model.appdetail.SortTypeChoice r3 = (com.farsitel.bazaar.common.model.appdetail.SortTypeChoice) r3
            java.lang.String r0 = r2.identifier
            java.lang.String r1 = r3.identifier
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.appdetail.SortTypeChoice.equals(java.lang.Object):boolean");
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.identifier;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.title;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public final SortTypeChoiceItem toSortTypeChoiceItem() {
        return new SortTypeChoiceItem(this.identifier, this.title);
    }

    public String toString() {
        return "SortTypeChoice(identifier=" + this.identifier + ", title=" + this.title + ")";
    }
}
