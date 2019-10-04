package com.farsitel.bazaar.common.model.ui;

import h.f.b.j;

/* compiled from: PackageChangeModel.kt */
public final class PackageChangeModel {
    public final PackageChangeType changeType;
    public final String packageName;

    public PackageChangeModel(String str, PackageChangeType packageChangeType) {
        j.b(str, "packageName");
        j.b(packageChangeType, "changeType");
        this.packageName = str;
        this.changeType = packageChangeType;
    }

    public static /* synthetic */ PackageChangeModel copy$default(PackageChangeModel packageChangeModel, String str, PackageChangeType packageChangeType, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = packageChangeModel.packageName;
        }
        if ((i2 & 2) != 0) {
            packageChangeType = packageChangeModel.changeType;
        }
        return packageChangeModel.copy(str, packageChangeType);
    }

    public final String component1() {
        return this.packageName;
    }

    public final PackageChangeType component2() {
        return this.changeType;
    }

    public final PackageChangeModel copy(String str, PackageChangeType packageChangeType) {
        j.b(str, "packageName");
        j.b(packageChangeType, "changeType");
        return new PackageChangeModel(str, packageChangeType);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.changeType, (java.lang.Object) r3.changeType) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.ui.PackageChangeModel
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.common.model.ui.PackageChangeModel r3 = (com.farsitel.bazaar.common.model.ui.PackageChangeModel) r3
            java.lang.String r0 = r2.packageName
            java.lang.String r1 = r3.packageName
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.common.model.ui.PackageChangeType r0 = r2.changeType
            com.farsitel.bazaar.common.model.ui.PackageChangeType r3 = r3.changeType
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.ui.PackageChangeModel.equals(java.lang.Object):boolean");
    }

    public final PackageChangeType getChangeType() {
        return this.changeType;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public int hashCode() {
        String str = this.packageName;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        PackageChangeType packageChangeType = this.changeType;
        if (packageChangeType != null) {
            i2 = packageChangeType.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "PackageChangeModel(packageName=" + this.packageName + ", changeType=" + this.changeType + ")";
    }
}
