package c.c.a.e.d.h.d.b;

import c.e.d.a.c;

/* compiled from: ResponseDto.kt */
public final class l {
    @c("actionSubtitle")
    public final String actionSubtitle;
    @c("actionText")
    public final String actionText;

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.actionText, (java.lang.Object) r3.actionText) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.e.d.h.d.b.l
            if (r0 == 0) goto L_0x001d
            c.c.a.e.d.h.d.b.l r3 = (c.c.a.e.d.h.d.b.l) r3
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.d.b.l.equals(java.lang.Object):boolean");
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
        return "SubscriptionStatusDto(actionSubtitle=" + this.actionSubtitle + ", actionText=" + this.actionText + ")";
    }
}
