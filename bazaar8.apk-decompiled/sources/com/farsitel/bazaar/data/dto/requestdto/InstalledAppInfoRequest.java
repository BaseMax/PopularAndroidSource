package com.farsitel.bazaar.data.dto.requestdto;

import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

/* compiled from: GetUpgradableAppsRequestDto.kt */
public final class InstalledAppInfoRequest {
    @c("installDelta")
    public final long installDelta;
    @c("isPreInstall")
    public final boolean isPreInstall;
    @c("packageName")
    public final String packageName;
    @c("signs")
    public final List<String> signs;
    @c("updateDelta")
    public final long updateDelta;
    @c("versionCode")
    public final long versionCode;

    public InstalledAppInfoRequest(String str, long j2, long j3, long j4, boolean z, List<String> list) {
        j.b(str, "packageName");
        j.b(list, "signs");
        this.packageName = str;
        this.versionCode = j2;
        this.installDelta = j3;
        this.updateDelta = j4;
        this.isPreInstall = z;
        this.signs = list;
    }

    public static /* synthetic */ InstalledAppInfoRequest copy$default(InstalledAppInfoRequest installedAppInfoRequest, String str, long j2, long j3, long j4, boolean z, List list, int i2, Object obj) {
        InstalledAppInfoRequest installedAppInfoRequest2 = installedAppInfoRequest;
        return installedAppInfoRequest.copy((i2 & 1) != 0 ? installedAppInfoRequest2.packageName : str, (i2 & 2) != 0 ? installedAppInfoRequest2.versionCode : j2, (i2 & 4) != 0 ? installedAppInfoRequest2.installDelta : j3, (i2 & 8) != 0 ? installedAppInfoRequest2.updateDelta : j4, (i2 & 16) != 0 ? installedAppInfoRequest2.isPreInstall : z, (i2 & 32) != 0 ? installedAppInfoRequest2.signs : list);
    }

    public final String component1() {
        return this.packageName;
    }

    public final long component2() {
        return this.versionCode;
    }

    public final long component3() {
        return this.installDelta;
    }

    public final long component4() {
        return this.updateDelta;
    }

    public final boolean component5() {
        return this.isPreInstall;
    }

    public final List<String> component6() {
        return this.signs;
    }

    public final InstalledAppInfoRequest copy(String str, long j2, long j3, long j4, boolean z, List<String> list) {
        j.b(str, "packageName");
        List<String> list2 = list;
        j.b(list2, "signs");
        InstalledAppInfoRequest installedAppInfoRequest = new InstalledAppInfoRequest(str, j2, j3, j4, z, list2);
        return installedAppInfoRequest;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof InstalledAppInfoRequest) {
                InstalledAppInfoRequest installedAppInfoRequest = (InstalledAppInfoRequest) obj;
                if (j.a((Object) this.packageName, (Object) installedAppInfoRequest.packageName)) {
                    if (this.versionCode == installedAppInfoRequest.versionCode) {
                        if (this.installDelta == installedAppInfoRequest.installDelta) {
                            if (this.updateDelta == installedAppInfoRequest.updateDelta) {
                                if (!(this.isPreInstall == installedAppInfoRequest.isPreInstall) || !j.a((Object) this.signs, (Object) installedAppInfoRequest.signs)) {
                                    return false;
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final long getInstallDelta() {
        return this.installDelta;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final List<String> getSigns() {
        return this.signs;
    }

    public final long getUpdateDelta() {
        return this.updateDelta;
    }

    public final long getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        String str = this.packageName;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        long j2 = this.versionCode;
        long j3 = this.installDelta;
        long j4 = this.updateDelta;
        int i3 = ((((((hashCode * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        boolean z = this.isPreInstall;
        if (z) {
            z = true;
        }
        int i4 = (i3 + (z ? 1 : 0)) * 31;
        List<String> list = this.signs;
        if (list != null) {
            i2 = list.hashCode();
        }
        return i4 + i2;
    }

    public final boolean isPreInstall() {
        return this.isPreInstall;
    }

    public String toString() {
        return "InstalledAppInfoRequest(packageName=" + this.packageName + ", versionCode=" + this.versionCode + ", installDelta=" + this.installDelta + ", updateDelta=" + this.updateDelta + ", isPreInstall=" + this.isPreInstall + ", signs=" + this.signs + ")";
    }
}
