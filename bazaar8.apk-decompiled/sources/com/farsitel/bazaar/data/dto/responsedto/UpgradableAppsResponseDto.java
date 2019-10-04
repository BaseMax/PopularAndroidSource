package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import com.farsitel.bazaar.data.entity.UpgradableApps;
import h.a.l;
import h.a.m;
import java.util.ArrayList;
import java.util.List;

/* compiled from: UpgradableAppsResponseDto.kt */
public final class UpgradableAppsResponseDto {
    @c("maliciousApps")
    public final List<MaliciousAppsDto> maliciousApps;
    @c("upgradableApps")
    public final List<UpgradableAppDto> upgradableApps;

    public UpgradableAppsResponseDto(List<UpgradableAppDto> list, List<MaliciousAppsDto> list2) {
        this.upgradableApps = list;
        this.maliciousApps = list2;
    }

    public static /* synthetic */ UpgradableAppsResponseDto copy$default(UpgradableAppsResponseDto upgradableAppsResponseDto, List<UpgradableAppDto> list, List<MaliciousAppsDto> list2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = upgradableAppsResponseDto.upgradableApps;
        }
        if ((i2 & 2) != 0) {
            list2 = upgradableAppsResponseDto.maliciousApps;
        }
        return upgradableAppsResponseDto.copy(list, list2);
    }

    public final List<UpgradableAppDto> component1() {
        return this.upgradableApps;
    }

    public final List<MaliciousAppsDto> component2() {
        return this.maliciousApps;
    }

    public final UpgradableAppsResponseDto copy(List<UpgradableAppDto> list, List<MaliciousAppsDto> list2) {
        return new UpgradableAppsResponseDto(list, list2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.maliciousApps, (java.lang.Object) r3.maliciousApps) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.responsedto.UpgradableAppsResponseDto
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.data.dto.responsedto.UpgradableAppsResponseDto r3 = (com.farsitel.bazaar.data.dto.responsedto.UpgradableAppsResponseDto) r3
            java.util.List<com.farsitel.bazaar.data.dto.responsedto.UpgradableAppDto> r0 = r2.upgradableApps
            java.util.List<com.farsitel.bazaar.data.dto.responsedto.UpgradableAppDto> r1 = r3.upgradableApps
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.util.List<com.farsitel.bazaar.data.dto.responsedto.MaliciousAppsDto> r0 = r2.maliciousApps
            java.util.List<com.farsitel.bazaar.data.dto.responsedto.MaliciousAppsDto> r3 = r3.maliciousApps
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.responsedto.UpgradableAppsResponseDto.equals(java.lang.Object):boolean");
    }

    public final List<MaliciousAppsDto> getMaliciousApps() {
        return this.maliciousApps;
    }

    public final List<UpgradableAppDto> getUpgradableApps() {
        return this.upgradableApps;
    }

    public int hashCode() {
        List<UpgradableAppDto> list = this.upgradableApps;
        int i2 = 0;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        List<MaliciousAppsDto> list2 = this.maliciousApps;
        if (list2 != null) {
            i2 = list2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "UpgradableAppsResponseDto(upgradableApps=" + this.upgradableApps + ", maliciousApps=" + this.maliciousApps + ")";
    }

    public final UpgradableApps toUpgradableApps() {
        List list;
        List list2;
        List<UpgradableAppDto> list3 = this.upgradableApps;
        if (list3 != null) {
            list = new ArrayList(m.a(list3, 10));
            for (UpgradableAppDto upgradableApp : list3) {
                list.add(upgradableApp.toUpgradableApp());
            }
        } else {
            list = l.a();
        }
        List<MaliciousAppsDto> list4 = this.maliciousApps;
        if (list4 != null) {
            list2 = new ArrayList(m.a(list4, 10));
            for (MaliciousAppsDto maliciousApp : list4) {
                list2.add(maliciousApp.toMaliciousApp());
            }
        } else {
            list2 = l.a();
        }
        return new UpgradableApps(list, list2);
    }
}
