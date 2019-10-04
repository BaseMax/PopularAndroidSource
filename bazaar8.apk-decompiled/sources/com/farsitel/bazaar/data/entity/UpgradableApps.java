package com.farsitel.bazaar.data.entity;

import h.f.b.j;
import java.util.List;

/* compiled from: Application.kt */
public final class UpgradableApps {
    public final List<MaliciousApp> maliciousApps;
    public final List<UpgradableApp> upgradableApps;

    public UpgradableApps(List<UpgradableApp> list, List<MaliciousApp> list2) {
        j.b(list, "upgradableApps");
        j.b(list2, "maliciousApps");
        this.upgradableApps = list;
        this.maliciousApps = list2;
    }

    public static /* synthetic */ UpgradableApps copy$default(UpgradableApps upgradableApps2, List<UpgradableApp> list, List<MaliciousApp> list2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = upgradableApps2.upgradableApps;
        }
        if ((i2 & 2) != 0) {
            list2 = upgradableApps2.maliciousApps;
        }
        return upgradableApps2.copy(list, list2);
    }

    public final List<UpgradableApp> component1() {
        return this.upgradableApps;
    }

    public final List<MaliciousApp> component2() {
        return this.maliciousApps;
    }

    public final UpgradableApps copy(List<UpgradableApp> list, List<MaliciousApp> list2) {
        j.b(list, "upgradableApps");
        j.b(list2, "maliciousApps");
        return new UpgradableApps(list, list2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.maliciousApps, (java.lang.Object) r3.maliciousApps) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.UpgradableApps
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.data.entity.UpgradableApps r3 = (com.farsitel.bazaar.data.entity.UpgradableApps) r3
            java.util.List<com.farsitel.bazaar.data.entity.UpgradableApp> r0 = r2.upgradableApps
            java.util.List<com.farsitel.bazaar.data.entity.UpgradableApp> r1 = r3.upgradableApps
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.util.List<com.farsitel.bazaar.data.entity.MaliciousApp> r0 = r2.maliciousApps
            java.util.List<com.farsitel.bazaar.data.entity.MaliciousApp> r3 = r3.maliciousApps
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.UpgradableApps.equals(java.lang.Object):boolean");
    }

    public final List<MaliciousApp> getMaliciousApps() {
        return this.maliciousApps;
    }

    public final List<UpgradableApp> getUpgradableApps() {
        return this.upgradableApps;
    }

    public int hashCode() {
        List<UpgradableApp> list = this.upgradableApps;
        int i2 = 0;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        List<MaliciousApp> list2 = this.maliciousApps;
        if (list2 != null) {
            i2 = list2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "UpgradableApps(upgradableApps=" + this.upgradableApps + ", maliciousApps=" + this.maliciousApps + ")";
    }
}
