package c.c.a.e.d.v.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.subscription.SubscriptionItem;
import com.farsitel.bazaar.common.model.subscription.SubscriptionKind;
import com.farsitel.bazaar.common.model.subscription.SubscriptionStatusChoices;

/* compiled from: SubscriptionResponseDto.kt */
public final class d {
    @c("dealerName")
    public final String dealerName;
    @c("endDateString")
    public final String endDate;
    @c("appIcon")
    public final String iconUrl;
    @c("isRenewable")
    public final boolean isRenewable;
    @c("kind")
    public final int kind;
    @c("price")
    public final int price;
    @c("sku")
    public final String productSku;
    @c("appTitle")
    public final String productTitle;
    @c("startDateString")
    public final String startDate;
    @c("status")
    public final int status;
    @c("title")
    public final String title;

    public final SubscriptionItem a() {
        SubscriptionItem subscriptionItem = new SubscriptionItem(this.title, this.productTitle, SubscriptionKind.Companion.getValue(this.kind), this.startDate, this.endDate, SubscriptionStatusChoices.Companion.getValue(this.status), this.productSku, this.dealerName, this.price, this.isRenewable, this.iconUrl, false, 2048, null);
        return subscriptionItem;
    }
}
