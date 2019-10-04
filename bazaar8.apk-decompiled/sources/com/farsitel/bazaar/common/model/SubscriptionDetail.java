package com.farsitel.bazaar.common.model;

import h.f.b.j;

/* compiled from: SubscriptionDetail.kt */
public final class SubscriptionDetail {
    public final boolean hasSubscription;
    public final SubscriptionData subscriptionData;

    public SubscriptionDetail(boolean z, SubscriptionData subscriptionData2) {
        j.b(subscriptionData2, "subscriptionData");
        this.hasSubscription = z;
        this.subscriptionData = subscriptionData2;
    }

    public static /* synthetic */ SubscriptionDetail copy$default(SubscriptionDetail subscriptionDetail, boolean z, SubscriptionData subscriptionData2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = subscriptionDetail.hasSubscription;
        }
        if ((i2 & 2) != 0) {
            subscriptionData2 = subscriptionDetail.subscriptionData;
        }
        return subscriptionDetail.copy(z, subscriptionData2);
    }

    public final boolean component1() {
        return this.hasSubscription;
    }

    public final SubscriptionData component2() {
        return this.subscriptionData;
    }

    public final SubscriptionDetail copy(boolean z, SubscriptionData subscriptionData2) {
        j.b(subscriptionData2, "subscriptionData");
        return new SubscriptionDetail(z, subscriptionData2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SubscriptionDetail) {
                SubscriptionDetail subscriptionDetail = (SubscriptionDetail) obj;
                if (!(this.hasSubscription == subscriptionDetail.hasSubscription) || !j.a((Object) this.subscriptionData, (Object) subscriptionDetail.subscriptionData)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public final boolean getHasSubscription() {
        return this.hasSubscription;
    }

    public final SubscriptionData getSubscriptionData() {
        return this.subscriptionData;
    }

    public int hashCode() {
        boolean z = this.hasSubscription;
        if (z) {
            z = true;
        }
        int i2 = (z ? 1 : 0) * true;
        SubscriptionData subscriptionData2 = this.subscriptionData;
        return i2 + (subscriptionData2 != null ? subscriptionData2.hashCode() : 0);
    }

    public String toString() {
        return "SubscriptionDetail(hasSubscription=" + this.hasSubscription + ", subscriptionData=" + this.subscriptionData + ")";
    }
}
