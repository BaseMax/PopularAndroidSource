package com.farsitel.bazaar.common.model;

import h.f.b.j;

/* compiled from: SubscriptionDetail.kt */
public final class SubscriptionData {
    public final String actionText;
    public final boolean directBuy;
    public final int duration;
    public final String image;
    public final boolean isTrial;
    public final int price;
    public final String sku;
    public final String title;
    public final String titleBackgroundColor;
    public final String titleTextColor;

    public SubscriptionData(String str, boolean z, int i2, String str2, int i3, String str3, String str4, String str5, String str6, boolean z2) {
        j.b(str, "actionText");
        j.b(str2, "image");
        j.b(str3, "sku");
        j.b(str4, "title");
        j.b(str5, "titleBackgroundColor");
        j.b(str6, "titleTextColor");
        this.actionText = str;
        this.directBuy = z;
        this.duration = i2;
        this.image = str2;
        this.price = i3;
        this.sku = str3;
        this.title = str4;
        this.titleBackgroundColor = str5;
        this.titleTextColor = str6;
        this.isTrial = z2;
    }

    public static /* synthetic */ SubscriptionData copy$default(SubscriptionData subscriptionData, String str, boolean z, int i2, String str2, int i3, String str3, String str4, String str5, String str6, boolean z2, int i4, Object obj) {
        SubscriptionData subscriptionData2 = subscriptionData;
        int i5 = i4;
        return subscriptionData.copy((i5 & 1) != 0 ? subscriptionData2.actionText : str, (i5 & 2) != 0 ? subscriptionData2.directBuy : z, (i5 & 4) != 0 ? subscriptionData2.duration : i2, (i5 & 8) != 0 ? subscriptionData2.image : str2, (i5 & 16) != 0 ? subscriptionData2.price : i3, (i5 & 32) != 0 ? subscriptionData2.sku : str3, (i5 & 64) != 0 ? subscriptionData2.title : str4, (i5 & 128) != 0 ? subscriptionData2.titleBackgroundColor : str5, (i5 & 256) != 0 ? subscriptionData2.titleTextColor : str6, (i5 & 512) != 0 ? subscriptionData2.isTrial : z2);
    }

    public final String component1() {
        return this.actionText;
    }

    public final boolean component10() {
        return this.isTrial;
    }

    public final boolean component2() {
        return this.directBuy;
    }

    public final int component3() {
        return this.duration;
    }

    public final String component4() {
        return this.image;
    }

    public final int component5() {
        return this.price;
    }

    public final String component6() {
        return this.sku;
    }

    public final String component7() {
        return this.title;
    }

    public final String component8() {
        return this.titleBackgroundColor;
    }

    public final String component9() {
        return this.titleTextColor;
    }

    public final SubscriptionData copy(String str, boolean z, int i2, String str2, int i3, String str3, String str4, String str5, String str6, boolean z2) {
        j.b(str, "actionText");
        String str7 = str2;
        j.b(str7, "image");
        String str8 = str3;
        j.b(str8, "sku");
        String str9 = str4;
        j.b(str9, "title");
        String str10 = str5;
        j.b(str10, "titleBackgroundColor");
        String str11 = str6;
        j.b(str11, "titleTextColor");
        SubscriptionData subscriptionData = new SubscriptionData(str, z, i2, str7, i3, str8, str9, str10, str11, z2);
        return subscriptionData;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SubscriptionData) {
                SubscriptionData subscriptionData = (SubscriptionData) obj;
                if (j.a((Object) this.actionText, (Object) subscriptionData.actionText)) {
                    if (this.directBuy == subscriptionData.directBuy) {
                        if ((this.duration == subscriptionData.duration) && j.a((Object) this.image, (Object) subscriptionData.image)) {
                            if ((this.price == subscriptionData.price) && j.a((Object) this.sku, (Object) subscriptionData.sku) && j.a((Object) this.title, (Object) subscriptionData.title) && j.a((Object) this.titleBackgroundColor, (Object) subscriptionData.titleBackgroundColor) && j.a((Object) this.titleTextColor, (Object) subscriptionData.titleTextColor)) {
                                if (this.isTrial == subscriptionData.isTrial) {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getActionText() {
        return this.actionText;
    }

    public final boolean getDirectBuy() {
        return this.directBuy;
    }

    public final int getDuration() {
        return this.duration;
    }

    public final String getImage() {
        return this.image;
    }

    public final int getPrice() {
        return this.price;
    }

    public final String getSku() {
        return this.sku;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getTitleBackgroundColor() {
        return this.titleBackgroundColor;
    }

    public final String getTitleTextColor() {
        return this.titleTextColor;
    }

    public int hashCode() {
        String str = this.actionText;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        boolean z = this.directBuy;
        if (z) {
            z = true;
        }
        int i3 = (((hashCode + (z ? 1 : 0)) * 31) + this.duration) * 31;
        String str2 = this.image;
        int hashCode2 = (((i3 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.price) * 31;
        String str3 = this.sku;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.title;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.titleBackgroundColor;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.titleTextColor;
        if (str6 != null) {
            i2 = str6.hashCode();
        }
        int i4 = (hashCode5 + i2) * 31;
        boolean z2 = this.isTrial;
        if (z2) {
            z2 = true;
        }
        return i4 + (z2 ? 1 : 0);
    }

    public final boolean isTrial() {
        return this.isTrial;
    }

    public String toString() {
        return "SubscriptionData(actionText=" + this.actionText + ", directBuy=" + this.directBuy + ", duration=" + this.duration + ", image=" + this.image + ", price=" + this.price + ", sku=" + this.sku + ", title=" + this.title + ", titleBackgroundColor=" + this.titleBackgroundColor + ", titleTextColor=" + this.titleTextColor + ", isTrial=" + this.isTrial + ")";
    }
}
