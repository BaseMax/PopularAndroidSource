package c.c.a.e.d.m.a;

import com.crashlytics.android.core.MetaDataStore;
import h.f.b.j;

/* compiled from: PaymentLocalDataSource.kt */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final String f5251a;

    /* renamed from: b  reason: collision with root package name */
    public final String f5252b;

    /* renamed from: c  reason: collision with root package name */
    public final String f5253c;

    public e(String str, String str2, String str3) {
        j.b(str, MetaDataStore.KEY_USER_ID);
        j.b(str2, "vendorPackageName");
        j.b(str3, "productId");
        this.f5251a = str;
        this.f5252b = str2;
        this.f5253c = str3;
    }

    public final String a() {
        return this.f5253c;
    }

    public final String b() {
        return this.f5251a;
    }

    public final String c() {
        return this.f5252b;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f5253c, (java.lang.Object) r3.f5253c) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.e.d.m.a.e
            if (r0 == 0) goto L_0x0027
            c.c.a.e.d.m.a.e r3 = (c.c.a.e.d.m.a.e) r3
            java.lang.String r0 = r2.f5251a
            java.lang.String r1 = r3.f5251a
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.f5252b
            java.lang.String r1 = r3.f5252b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.f5253c
            java.lang.String r3 = r3.f5253c
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            r3 = 0
            return r3
        L_0x0029:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.a.e.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f5251a;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f5252b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f5253c;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "PurchaseCacheModel(userId=" + this.f5251a + ", vendorPackageName=" + this.f5252b + ", productId=" + this.f5253c + ")";
    }
}
