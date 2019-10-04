package c.c.a.e.d.c.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.InlineDemo;

/* compiled from: AppDetailResponseDto.kt */
public final class l {
    @c("button")
    public final String button;
    @c("text")
    public final String text;

    public final InlineDemo a() {
        return new InlineDemo(this.text, this.button);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.button, (java.lang.Object) r3.button) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.e.d.c.a.l
            if (r0 == 0) goto L_0x001d
            c.c.a.e.d.c.a.l r3 = (c.c.a.e.d.c.a.l) r3
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.c.a.l.equals(java.lang.Object):boolean");
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
        return "InlineDemoDto(text=" + this.text + ", button=" + this.button + ")";
    }
}
