package c.c.a.b.f;

import h.f.b.f;
import h.f.b.j;

/* compiled from: NotificationDataHolder.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final String f4672a;

    /* renamed from: b  reason: collision with root package name */
    public final Integer f4673b;

    public d(String str, Integer num) {
        j.b(str, "notificationValue");
        this.f4672a = str;
        this.f4673b = num;
    }

    public final d a(String str, Integer num) {
        j.b(str, "notificationValue");
        return new d(str, num);
    }

    public final String a() {
        return this.f4672a;
    }

    public final Integer b() {
        return this.f4673b;
    }

    public final boolean c() {
        return this.f4673b != null;
    }

    public final boolean d() {
        return this.f4673b == null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f4673b, (java.lang.Object) r3.f4673b) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.b.f.d
            if (r0 == 0) goto L_0x001d
            c.c.a.b.f.d r3 = (c.c.a.b.f.d) r3
            java.lang.String r0 = r2.f4672a
            java.lang.String r1 = r3.f4672a
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.Integer r0 = r2.f4673b
            java.lang.Integer r3 = r3.f4673b
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.b.f.d.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f4672a;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Integer num = this.f4673b;
        if (num != null) {
            i2 = num.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "NotificationData(notificationValue=" + this.f4672a + ", progress=" + this.f4673b + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d(String str, Integer num, int i2, f fVar) {
        this(str, (i2 & 2) != 0 ? null : num);
    }
}
