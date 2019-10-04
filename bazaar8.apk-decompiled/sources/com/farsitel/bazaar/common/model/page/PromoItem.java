package com.farsitel.bazaar.common.model.page;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.f;
import h.f.b.j;

/* compiled from: PromoItem.kt */
public final class PromoItem implements RecyclerData {
    public final String image;
    public String link;
    public String referrer;
    public String title;
    public final int viewType;

    public PromoItem(String str, String str2, String str3, String str4) {
        j.b(str, "image");
        this.image = str;
        this.title = str2;
        this.link = str3;
        this.referrer = str4;
        this.viewType = CommonItemType.VITRIN_PROMO.getValue();
    }

    public static /* synthetic */ PromoItem copy$default(PromoItem promoItem, String str, String str2, String str3, String str4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = promoItem.image;
        }
        if ((i2 & 2) != 0) {
            str2 = promoItem.title;
        }
        if ((i2 & 4) != 0) {
            str3 = promoItem.link;
        }
        if ((i2 & 8) != 0) {
            str4 = promoItem.referrer;
        }
        return promoItem.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.image;
    }

    public final String component2() {
        return this.title;
    }

    public final String component3() {
        return this.link;
    }

    public final String component4() {
        return this.referrer;
    }

    public final PromoItem copy(String str, String str2, String str3, String str4) {
        j.b(str, "image");
        return new PromoItem(str, str2, str3, str4);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002e, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x0033;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0033
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.page.PromoItem
            if (r0 == 0) goto L_0x0031
            com.farsitel.bazaar.common.model.page.PromoItem r3 = (com.farsitel.bazaar.common.model.page.PromoItem) r3
            java.lang.String r0 = r2.image
            java.lang.String r1 = r3.image
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.link
            java.lang.String r1 = r3.link
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.referrer
            java.lang.String r3 = r3.referrer
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0031
            goto L_0x0033
        L_0x0031:
            r3 = 0
            return r3
        L_0x0033:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.page.PromoItem.equals(java.lang.Object):boolean");
    }

    public final String getImage() {
        return this.image;
    }

    public final String getLink() {
        return this.link;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getTitle() {
        return this.title;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        String str = this.image;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.title;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.link;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.referrer;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return hashCode3 + i2;
    }

    public final void setLink(String str) {
        this.link = str;
    }

    public final void setReferrer(String str) {
        this.referrer = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "PromoItem(image=" + this.image + ", title=" + this.title + ", link=" + this.link + ", referrer=" + this.referrer + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PromoItem(String str, String str2, String str3, String str4, int i2, f fVar) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4);
    }
}
