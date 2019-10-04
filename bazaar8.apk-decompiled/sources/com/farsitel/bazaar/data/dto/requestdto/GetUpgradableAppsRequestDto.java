package com.farsitel.bazaar.data.dto.requestdto;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

@h("singleRequest.getUpgradableAppsRequest")
/* compiled from: GetUpgradableAppsRequestDto.kt */
public final class GetUpgradableAppsRequestDto {
    @c("deviceID")
    public final int deviceID;
    @c("installedAppsInfo")
    public final List<InstalledAppInfoRequest> installedApps;
    @c("sdkVersion")
    public final int sdkVersion;

    public GetUpgradableAppsRequestDto(int i2, int i3, List<InstalledAppInfoRequest> list) {
        j.b(list, "installedApps");
        this.deviceID = i2;
        this.sdkVersion = i3;
        this.installedApps = list;
    }

    public static /* synthetic */ GetUpgradableAppsRequestDto copy$default(GetUpgradableAppsRequestDto getUpgradableAppsRequestDto, int i2, int i3, List<InstalledAppInfoRequest> list, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = getUpgradableAppsRequestDto.deviceID;
        }
        if ((i4 & 2) != 0) {
            i3 = getUpgradableAppsRequestDto.sdkVersion;
        }
        if ((i4 & 4) != 0) {
            list = getUpgradableAppsRequestDto.installedApps;
        }
        return getUpgradableAppsRequestDto.copy(i2, i3, list);
    }

    public final int component1() {
        return this.deviceID;
    }

    public final int component2() {
        return this.sdkVersion;
    }

    public final List<InstalledAppInfoRequest> component3() {
        return this.installedApps;
    }

    public final GetUpgradableAppsRequestDto copy(int i2, int i3, List<InstalledAppInfoRequest> list) {
        j.b(list, "installedApps");
        return new GetUpgradableAppsRequestDto(i2, i3, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof GetUpgradableAppsRequestDto) {
                GetUpgradableAppsRequestDto getUpgradableAppsRequestDto = (GetUpgradableAppsRequestDto) obj;
                if (this.deviceID == getUpgradableAppsRequestDto.deviceID) {
                    if (!(this.sdkVersion == getUpgradableAppsRequestDto.sdkVersion) || !j.a((Object) this.installedApps, (Object) getUpgradableAppsRequestDto.installedApps)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int getDeviceID() {
        return this.deviceID;
    }

    public final List<InstalledAppInfoRequest> getInstalledApps() {
        return this.installedApps;
    }

    public final int getSdkVersion() {
        return this.sdkVersion;
    }

    public int hashCode() {
        int i2 = ((this.deviceID * 31) + this.sdkVersion) * 31;
        List<InstalledAppInfoRequest> list = this.installedApps;
        return i2 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "GetUpgradableAppsRequestDto(deviceID=" + this.deviceID + ", sdkVersion=" + this.sdkVersion + ", installedApps=" + this.installedApps + ")";
    }
}
