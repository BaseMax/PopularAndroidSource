package com.farsitel.bazaar.common.model.cinema;

import h.f.b.j;
import java.io.Serializable;

/* compiled from: Cinema.kt */
public final class SubscriptionStatus implements Serializable {
    public final String actionSubtitle;
    public final String actionText;

    public SubscriptionStatus(String str, String str2) {
        j.b(str, "actionSubtitle");
        j.b(str2, "actionText");
        this.actionSubtitle = str;
        this.actionText = str2;
    }

    public static /* synthetic */ SubscriptionStatus copy$default(SubscriptionStatus subscriptionStatus, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = subscriptionStatus.actionSubtitle;
        }
        if ((i2 & 2) != 0) {
            str2 = subscriptionStatus.actionText;
        }
        return subscriptionStatus.copy(str, str2);
    }

    public final String component1() {
        return this.actionSubtitle;
    }

    public final String component2() {
        return this.actionText;
    }

    public final SubscriptionStatus copy(String str, String str2) {
        j.b(str, "actionSubtitle");
        j.b(str2, "actionText");
        return new SubscriptionStatus(str, str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.actionText, (java.lang.Object) r3.actionText) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.cinema.SubscriptionStatus
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.common.model.cinema.SubscriptionStatus r3 = (com.farsitel.bazaar.common.model.cinema.SubscriptionStatus) r3
            java.lang.String r0 = r2.actionSubtitle
            java.lang.String r1 = r3.actionSubtitle
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.actionText
            java.lang.String r3 = r3.actionText
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.cinema.SubscriptionStatus.equals(java.lang.Object):boolean");
    }

    public final String getActionSubtitle() {
        return this.actionSubtitle;
    }

    public final String getActionText() {
        return this.actionText;
    }

    public int hashCode() {
        String str = this.actionSubtitle;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.actionText;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "SubscriptionStatus(actionSubtitle=" + this.actionSubtitle + ", actionText=" + this.actionText + ")";
    }
}
