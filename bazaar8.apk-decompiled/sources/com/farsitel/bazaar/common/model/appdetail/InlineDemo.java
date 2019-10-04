package com.farsitel.bazaar.common.model.appdetail;

/* compiled from: AppDetail.kt */
public final class InlineDemo {
    public final String button;
    public final String text;

    public InlineDemo(String str, String str2) {
        this.text = str;
        this.button = str2;
    }

    public static /* synthetic */ InlineDemo copy$default(InlineDemo inlineDemo, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = inlineDemo.text;
        }
        if ((i2 & 2) != 0) {
            str2 = inlineDemo.button;
        }
        return inlineDemo.copy(str, str2);
    }

    public final String component1() {
        return this.text;
    }

    public final String component2() {
        return this.button;
    }

    public final InlineDemo copy(String str, String str2) {
        return new InlineDemo(str, str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.button, (java.lang.Object) r3.button) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.appdetail.InlineDemo
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.common.model.appdetail.InlineDemo r3 = (com.farsitel.bazaar.common.model.appdetail.InlineDemo) r3
            java.lang.String r0 = r2.text
            java.lang.String r1 = r3.text
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.button
            java.lang.String r3 = r3.button
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.appdetail.InlineDemo.equals(java.lang.Object):boolean");
    }

    public final String getButton() {
        return this.button;
    }

    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        String str = this.text;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.button;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "InlineDemo(text=" + this.text + ", button=" + this.button + ")";
    }
}
