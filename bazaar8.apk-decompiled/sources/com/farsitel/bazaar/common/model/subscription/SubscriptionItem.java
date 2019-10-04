package com.farsitel.bazaar.common.model.subscription;

import android.content.Context;
import c.c.a.c.a;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.f;
import h.f.b.j;

/* compiled from: SubscriptionItem.kt */
public final class SubscriptionItem implements RecyclerData {
    public final String dealerName;
    public final String endDate;
    public final String iconUrl;
    public boolean isCancelableLoading;
    public final boolean isRenewable;
    public final SubscriptionKind kind;
    public final int price;
    public final String productSku;
    public final String productTitle;
    public final String startDate;
    public SubscriptionStatusChoices status;
    public final String title;
    public final int viewType;

    public SubscriptionItem(String str, String str2, SubscriptionKind subscriptionKind, String str3, String str4, SubscriptionStatusChoices subscriptionStatusChoices, String str5, String str6, int i2, boolean z, String str7, boolean z2) {
        j.b(str, "title");
        j.b(str2, "productTitle");
        j.b(subscriptionKind, "kind");
        j.b(str3, "startDate");
        j.b(str4, "endDate");
        j.b(subscriptionStatusChoices, "status");
        j.b(str5, "productSku");
        j.b(str6, "dealerName");
        j.b(str7, "iconUrl");
        this.title = str;
        this.productTitle = str2;
        this.kind = subscriptionKind;
        this.startDate = str3;
        this.endDate = str4;
        this.status = subscriptionStatusChoices;
        this.productSku = str5;
        this.dealerName = str6;
        this.price = i2;
        this.isRenewable = z;
        this.iconUrl = str7;
        this.isCancelableLoading = z2;
        this.viewType = SubscriptionType.APP.ordinal();
    }

    public static /* synthetic */ SubscriptionItem copy$default(SubscriptionItem subscriptionItem, String str, String str2, SubscriptionKind subscriptionKind, String str3, String str4, SubscriptionStatusChoices subscriptionStatusChoices, String str5, String str6, int i2, boolean z, String str7, boolean z2, int i3, Object obj) {
        SubscriptionItem subscriptionItem2 = subscriptionItem;
        int i4 = i3;
        return subscriptionItem.copy((i4 & 1) != 0 ? subscriptionItem2.title : str, (i4 & 2) != 0 ? subscriptionItem2.productTitle : str2, (i4 & 4) != 0 ? subscriptionItem2.kind : subscriptionKind, (i4 & 8) != 0 ? subscriptionItem2.startDate : str3, (i4 & 16) != 0 ? subscriptionItem2.endDate : str4, (i4 & 32) != 0 ? subscriptionItem2.status : subscriptionStatusChoices, (i4 & 64) != 0 ? subscriptionItem2.productSku : str5, (i4 & 128) != 0 ? subscriptionItem2.dealerName : str6, (i4 & 256) != 0 ? subscriptionItem2.price : i2, (i4 & 512) != 0 ? subscriptionItem2.isRenewable : z, (i4 & 1024) != 0 ? subscriptionItem2.iconUrl : str7, (i4 & 2048) != 0 ? subscriptionItem2.isCancelableLoading : z2);
    }

    public final String component1() {
        return this.title;
    }

    public final boolean component10() {
        return this.isRenewable;
    }

    public final String component11() {
        return this.iconUrl;
    }

    public final boolean component12() {
        return this.isCancelableLoading;
    }

    public final String component2() {
        return this.productTitle;
    }

    public final SubscriptionKind component3() {
        return this.kind;
    }

    public final String component4() {
        return this.startDate;
    }

    public final String component5() {
        return this.endDate;
    }

    public final SubscriptionStatusChoices component6() {
        return this.status;
    }

    public final String component7() {
        return this.productSku;
    }

    public final String component8() {
        return this.dealerName;
    }

    public final int component9() {
        return this.price;
    }

    public final SubscriptionItem copy(String str, String str2, SubscriptionKind subscriptionKind, String str3, String str4, SubscriptionStatusChoices subscriptionStatusChoices, String str5, String str6, int i2, boolean z, String str7, boolean z2) {
        j.b(str, "title");
        String str8 = str2;
        j.b(str8, "productTitle");
        SubscriptionKind subscriptionKind2 = subscriptionKind;
        j.b(subscriptionKind2, "kind");
        String str9 = str3;
        j.b(str9, "startDate");
        String str10 = str4;
        j.b(str10, "endDate");
        SubscriptionStatusChoices subscriptionStatusChoices2 = subscriptionStatusChoices;
        j.b(subscriptionStatusChoices2, "status");
        String str11 = str5;
        j.b(str11, "productSku");
        String str12 = str6;
        j.b(str12, "dealerName");
        String str13 = str7;
        j.b(str13, "iconUrl");
        SubscriptionItem subscriptionItem = new SubscriptionItem(str, str8, subscriptionKind2, str9, str10, subscriptionStatusChoices2, str11, str12, i2, z, str13, z2);
        return subscriptionItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SubscriptionItem) {
                SubscriptionItem subscriptionItem = (SubscriptionItem) obj;
                if (j.a((Object) this.title, (Object) subscriptionItem.title) && j.a((Object) this.productTitle, (Object) subscriptionItem.productTitle) && j.a((Object) this.kind, (Object) subscriptionItem.kind) && j.a((Object) this.startDate, (Object) subscriptionItem.startDate) && j.a((Object) this.endDate, (Object) subscriptionItem.endDate) && j.a((Object) this.status, (Object) subscriptionItem.status) && j.a((Object) this.productSku, (Object) subscriptionItem.productSku) && j.a((Object) this.dealerName, (Object) subscriptionItem.dealerName)) {
                    if (this.price == subscriptionItem.price) {
                        if ((this.isRenewable == subscriptionItem.isRenewable) && j.a((Object) this.iconUrl, (Object) subscriptionItem.iconUrl)) {
                            if (this.isCancelableLoading == subscriptionItem.isCancelableLoading) {
                                return true;
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getDealerName() {
        return this.dealerName;
    }

    public final String getEndDate() {
        return this.endDate;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final SubscriptionKind getKind() {
        return this.kind;
    }

    public final int getPrice() {
        return this.price;
    }

    public final String getProductSku() {
        return this.productSku;
    }

    public final String getProductTitle() {
        return this.productTitle;
    }

    public final boolean getShowMoreMenu() {
        return this.status == SubscriptionStatusChoices.ACTIVE && !this.isCancelableLoading && this.isRenewable;
    }

    public final String getStartDate() {
        return this.startDate;
    }

    public final SubscriptionStatusChoices getStatus() {
        return this.status;
    }

    public final String getSubscriptionPrice(Context context) {
        j.b(context, "context");
        return context.getString(a.subscription_kind, new Object[]{this.kind.getString(context), Integer.valueOf(this.price / 10)});
    }

    public final String getTitle() {
        return this.title;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        String str = this.title;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.productTitle;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        SubscriptionKind subscriptionKind = this.kind;
        int hashCode3 = (hashCode2 + (subscriptionKind != null ? subscriptionKind.hashCode() : 0)) * 31;
        String str3 = this.startDate;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.endDate;
        int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        SubscriptionStatusChoices subscriptionStatusChoices = this.status;
        int hashCode6 = (hashCode5 + (subscriptionStatusChoices != null ? subscriptionStatusChoices.hashCode() : 0)) * 31;
        String str5 = this.productSku;
        int hashCode7 = (hashCode6 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.dealerName;
        int hashCode8 = (((hashCode7 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.price) * 31;
        boolean z = this.isRenewable;
        if (z) {
            z = true;
        }
        int i3 = (hashCode8 + (z ? 1 : 0)) * 31;
        String str7 = this.iconUrl;
        if (str7 != null) {
            i2 = str7.hashCode();
        }
        int i4 = (i3 + i2) * 31;
        boolean z2 = this.isCancelableLoading;
        if (z2) {
            z2 = true;
        }
        return i4 + (z2 ? 1 : 0);
    }

    public final boolean isCancelableLoading() {
        return this.isCancelableLoading;
    }

    public final boolean isRenewable() {
        return this.isRenewable;
    }

    public final void setCancelableLoading(boolean z) {
        this.isCancelableLoading = z;
    }

    public final void setStatus(SubscriptionStatusChoices subscriptionStatusChoices) {
        j.b(subscriptionStatusChoices, "<set-?>");
        this.status = subscriptionStatusChoices;
    }

    public String toString() {
        return "SubscriptionItem(title=" + this.title + ", productTitle=" + this.productTitle + ", kind=" + this.kind + ", startDate=" + this.startDate + ", endDate=" + this.endDate + ", status=" + this.status + ", productSku=" + this.productSku + ", dealerName=" + this.dealerName + ", price=" + this.price + ", isRenewable=" + this.isRenewable + ", iconUrl=" + this.iconUrl + ", isCancelableLoading=" + this.isCancelableLoading + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SubscriptionItem(String str, String str2, SubscriptionKind subscriptionKind, String str3, String str4, SubscriptionStatusChoices subscriptionStatusChoices, String str5, String str6, int i2, boolean z, String str7, boolean z2, int i3, f fVar) {
        this(str, str2, subscriptionKind, str3, str4, subscriptionStatusChoices, str5, str6, i2, z, str7, (i3 & 2048) != 0 ? false : z2);
    }
}
