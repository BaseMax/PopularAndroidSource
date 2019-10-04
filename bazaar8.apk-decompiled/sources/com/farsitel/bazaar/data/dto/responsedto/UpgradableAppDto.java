package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import com.crashlytics.android.core.SessionProtobufHelper;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import h.f.b.j;

/* compiled from: UpgradableAppsResponseDto.kt */
public final class UpgradableAppDto {
    @c("isFree")
    public final String isFree;
    @c("packageName")
    public final String packageName;
    @c("versionCode")
    public final long versionCode;
    @c("versionName")
    public final String versionName;

    public UpgradableAppDto(String str, String str2, long j2, String str3) {
        j.b(str, "packageName");
        j.b(str2, "versionName");
        j.b(str3, "isFree");
        this.packageName = str;
        this.versionName = str2;
        this.versionCode = j2;
        this.isFree = str3;
    }

    public static /* synthetic */ UpgradableAppDto copy$default(UpgradableAppDto upgradableAppDto, String str, String str2, long j2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = upgradableAppDto.packageName;
        }
        if ((i2 & 2) != 0) {
            str2 = upgradableAppDto.versionName;
        }
        String str4 = str2;
        if ((i2 & 4) != 0) {
            j2 = upgradableAppDto.versionCode;
        }
        long j3 = j2;
        if ((i2 & 8) != 0) {
            str3 = upgradableAppDto.isFree;
        }
        return upgradableAppDto.copy(str, str4, j3, str3);
    }

    public final String component1() {
        return this.packageName;
    }

    public final String component2() {
        return this.versionName;
    }

    public final long component3() {
        return this.versionCode;
    }

    public final String component4() {
        return this.isFree;
    }

    public final UpgradableAppDto copy(String str, String str2, long j2, String str3) {
        j.b(str, "packageName");
        j.b(str2, "versionName");
        j.b(str3, "isFree");
        UpgradableAppDto upgradableAppDto = new UpgradableAppDto(str, str2, j2, str3);
        return upgradableAppDto;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof UpgradableAppDto) {
                UpgradableAppDto upgradableAppDto = (UpgradableAppDto) obj;
                if (j.a((Object) this.packageName, (Object) upgradableAppDto.packageName) && j.a((Object) this.versionName, (Object) upgradableAppDto.versionName)) {
                    if (!(this.versionCode == upgradableAppDto.versionCode) || !j.a((Object) this.isFree, (Object) upgradableAppDto.isFree)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final long getVersionCode() {
        return this.versionCode;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public int hashCode() {
        String str = this.packageName;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.versionName;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        long j2 = this.versionCode;
        int i3 = (((hashCode + hashCode2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        String str3 = this.isFree;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return i3 + i2;
    }

    public final String isFree() {
        return this.isFree;
    }

    public String toString() {
        return "UpgradableAppDto(packageName=" + this.packageName + ", versionName=" + this.versionName + ", versionCode=" + this.versionCode + ", isFree=" + this.isFree + ")";
    }

    public final UpgradableApp toUpgradableApp() {
        String str = this.packageName;
        UpgradableApp upgradableApp = new UpgradableApp(str, str, j.a((Object) this.isFree, (Object) SessionProtobufHelper.SIGNAL_DEFAULT), this.versionCode, false, true);
        return upgradableApp;
    }
}
