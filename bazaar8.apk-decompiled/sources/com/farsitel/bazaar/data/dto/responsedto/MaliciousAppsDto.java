package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import com.farsitel.bazaar.data.entity.MaliciousApp;
import h.f.b.j;

/* compiled from: UpgradableAppsResponseDto.kt */
public final class MaliciousAppsDto {
    @c("packageName")
    public final String packageName;
    @c("reasonInfo")
    public final String reasonInfo;
    @c("reasonTitle")
    public final String reasonTitle;
    @c("versionCode")
    public final long versionCode;
    @c("versionName")
    public final String versionName;

    public MaliciousAppsDto(String str, String str2, long j2, String str3, String str4) {
        j.b(str, "packageName");
        this.packageName = str;
        this.versionName = str2;
        this.versionCode = j2;
        this.reasonTitle = str3;
        this.reasonInfo = str4;
    }

    public static /* synthetic */ MaliciousAppsDto copy$default(MaliciousAppsDto maliciousAppsDto, String str, String str2, long j2, String str3, String str4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = maliciousAppsDto.packageName;
        }
        if ((i2 & 2) != 0) {
            str2 = maliciousAppsDto.versionName;
        }
        String str5 = str2;
        if ((i2 & 4) != 0) {
            j2 = maliciousAppsDto.versionCode;
        }
        long j3 = j2;
        if ((i2 & 8) != 0) {
            str3 = maliciousAppsDto.reasonTitle;
        }
        String str6 = str3;
        if ((i2 & 16) != 0) {
            str4 = maliciousAppsDto.reasonInfo;
        }
        return maliciousAppsDto.copy(str, str5, j3, str6, str4);
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
        return this.reasonTitle;
    }

    public final String component5() {
        return this.reasonInfo;
    }

    public final MaliciousAppsDto copy(String str, String str2, long j2, String str3, String str4) {
        j.b(str, "packageName");
        MaliciousAppsDto maliciousAppsDto = new MaliciousAppsDto(str, str2, j2, str3, str4);
        return maliciousAppsDto;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MaliciousAppsDto) {
                MaliciousAppsDto maliciousAppsDto = (MaliciousAppsDto) obj;
                if (j.a((Object) this.packageName, (Object) maliciousAppsDto.packageName) && j.a((Object) this.versionName, (Object) maliciousAppsDto.versionName)) {
                    if (!(this.versionCode == maliciousAppsDto.versionCode) || !j.a((Object) this.reasonTitle, (Object) maliciousAppsDto.reasonTitle) || !j.a((Object) this.reasonInfo, (Object) maliciousAppsDto.reasonInfo)) {
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

    public final String getReasonInfo() {
        return this.reasonInfo;
    }

    public final String getReasonTitle() {
        return this.reasonTitle;
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
        String str3 = this.reasonTitle;
        int hashCode3 = (i3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.reasonInfo;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return hashCode3 + i2;
    }

    public final MaliciousApp toMaliciousApp() {
        MaliciousApp maliciousApp = new MaliciousApp(this.packageName, this.versionName, this.versionCode, this.reasonTitle, this.reasonInfo, false);
        return maliciousApp;
    }

    public String toString() {
        return "MaliciousAppsDto(packageName=" + this.packageName + ", versionName=" + this.versionName + ", versionCode=" + this.versionCode + ", reasonTitle=" + this.reasonTitle + ", reasonInfo=" + this.reasonInfo + ")";
    }
}
