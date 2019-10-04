package com.farsitel.bazaar.data.feature.payment;

import h.f.b.j;

/* compiled from: PaymentEntities.kt */
public final class UserActionData extends PaymentData {
    public final Action action;
    public final String data;

    /* compiled from: PaymentEntities.kt */
    public enum Action {
        WEB_VIEW,
        NATIVE
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public UserActionData(Action action2, String str) {
        super(null);
        j.b(action2, "action");
        j.b(str, "data");
        this.action = action2;
        this.data = str;
    }

    public final Action a() {
        return this.action;
    }

    public final String b() {
        return this.data;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.data, (java.lang.Object) r3.data) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.feature.payment.UserActionData
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.data.feature.payment.UserActionData r3 = (com.farsitel.bazaar.data.feature.payment.UserActionData) r3
            com.farsitel.bazaar.data.feature.payment.UserActionData$Action r0 = r2.action
            com.farsitel.bazaar.data.feature.payment.UserActionData$Action r1 = r3.action
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.data
            java.lang.String r3 = r3.data
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.feature.payment.UserActionData.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        Action action2 = this.action;
        int i2 = 0;
        int hashCode = (action2 != null ? action2.hashCode() : 0) * 31;
        String str = this.data;
        if (str != null) {
            i2 = str.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "UserActionData(action=" + this.action + ", data=" + this.data + ")";
    }
}
