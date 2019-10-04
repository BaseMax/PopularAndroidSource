package com.farsitel.bazaar.common.model.appdetail;

import com.crashlytics.android.core.CodedOutputStream;
import h.f.b.j;
import java.util.List;

/* compiled from: AppDetail.kt */
public final class Package {
    public final String changeLog;
    public final Boolean haveAdNetwork;
    public final int id;
    public final String lastUpdated;
    public final Long lastUpdatedTimeFromEpoch;
    public final String minSdkVersion;
    public final List<PackageDiff> packageDiffs;
    public final String packageHash;
    public final Long packageSize;
    public final String packageToken;
    public final List<String> permissionDescriptions;
    public final List<String> permissions;
    public final String verboseSize;
    public final String verboseSizeLabel;
    public final long versionCode;
    public final String versionName;

    public Package(int i2, Long l2, String str, String str2, long j2, String str3, String str4, String str5, String str6, Long l3, List<String> list, Boolean bool, List<PackageDiff> list2, List<String> list3, String str7, String str8) {
        j.b(str5, "minSdkVersion");
        this.id = i2;
        this.packageSize = l2;
        this.packageToken = str;
        this.packageHash = str2;
        this.versionCode = j2;
        this.versionName = str3;
        this.changeLog = str4;
        this.minSdkVersion = str5;
        this.lastUpdated = str6;
        this.lastUpdatedTimeFromEpoch = l3;
        this.permissions = list;
        this.haveAdNetwork = bool;
        this.packageDiffs = list2;
        this.permissionDescriptions = list3;
        this.verboseSize = str7;
        this.verboseSizeLabel = str8;
    }

    public static /* synthetic */ Package copy$default(Package packageR, int i2, Long l2, String str, String str2, long j2, String str3, String str4, String str5, String str6, Long l3, List list, Boolean bool, List list2, List list3, String str7, String str8, int i3, Object obj) {
        Package packageR2 = packageR;
        int i4 = i3;
        return packageR.copy((i4 & 1) != 0 ? packageR2.id : i2, (i4 & 2) != 0 ? packageR2.packageSize : l2, (i4 & 4) != 0 ? packageR2.packageToken : str, (i4 & 8) != 0 ? packageR2.packageHash : str2, (i4 & 16) != 0 ? packageR2.versionCode : j2, (i4 & 32) != 0 ? packageR2.versionName : str3, (i4 & 64) != 0 ? packageR2.changeLog : str4, (i4 & 128) != 0 ? packageR2.minSdkVersion : str5, (i4 & 256) != 0 ? packageR2.lastUpdated : str6, (i4 & 512) != 0 ? packageR2.lastUpdatedTimeFromEpoch : l3, (i4 & 1024) != 0 ? packageR2.permissions : list, (i4 & 2048) != 0 ? packageR2.haveAdNetwork : bool, (i4 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? packageR2.packageDiffs : list2, (i4 & 8192) != 0 ? packageR2.permissionDescriptions : list3, (i4 & 16384) != 0 ? packageR2.verboseSize : str7, (i4 & 32768) != 0 ? packageR2.verboseSizeLabel : str8);
    }

    public final int component1() {
        return this.id;
    }

    public final Long component10() {
        return this.lastUpdatedTimeFromEpoch;
    }

    public final List<String> component11() {
        return this.permissions;
    }

    public final Boolean component12() {
        return this.haveAdNetwork;
    }

    public final List<PackageDiff> component13() {
        return this.packageDiffs;
    }

    public final List<String> component14() {
        return this.permissionDescriptions;
    }

    public final String component15() {
        return this.verboseSize;
    }

    public final String component16() {
        return this.verboseSizeLabel;
    }

    public final Long component2() {
        return this.packageSize;
    }

    public final String component3() {
        return this.packageToken;
    }

    public final String component4() {
        return this.packageHash;
    }

    public final long component5() {
        return this.versionCode;
    }

    public final String component6() {
        return this.versionName;
    }

    public final String component7() {
        return this.changeLog;
    }

    public final String component8() {
        return this.minSdkVersion;
    }

    public final String component9() {
        return this.lastUpdated;
    }

    public final Package copy(int i2, Long l2, String str, String str2, long j2, String str3, String str4, String str5, String str6, Long l3, List<String> list, Boolean bool, List<PackageDiff> list2, List<String> list3, String str7, String str8) {
        int i3 = i2;
        j.b(str5, "minSdkVersion");
        Package packageR = new Package(i2, l2, str, str2, j2, str3, str4, str5, str6, l3, list, bool, list2, list3, str7, str8);
        return packageR;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Package) {
                Package packageR = (Package) obj;
                if ((this.id == packageR.id) && j.a((Object) this.packageSize, (Object) packageR.packageSize) && j.a((Object) this.packageToken, (Object) packageR.packageToken) && j.a((Object) this.packageHash, (Object) packageR.packageHash)) {
                    if (!(this.versionCode == packageR.versionCode) || !j.a((Object) this.versionName, (Object) packageR.versionName) || !j.a((Object) this.changeLog, (Object) packageR.changeLog) || !j.a((Object) this.minSdkVersion, (Object) packageR.minSdkVersion) || !j.a((Object) this.lastUpdated, (Object) packageR.lastUpdated) || !j.a((Object) this.lastUpdatedTimeFromEpoch, (Object) packageR.lastUpdatedTimeFromEpoch) || !j.a((Object) this.permissions, (Object) packageR.permissions) || !j.a((Object) this.haveAdNetwork, (Object) packageR.haveAdNetwork) || !j.a((Object) this.packageDiffs, (Object) packageR.packageDiffs) || !j.a((Object) this.permissionDescriptions, (Object) packageR.permissionDescriptions) || !j.a((Object) this.verboseSize, (Object) packageR.verboseSize) || !j.a((Object) this.verboseSizeLabel, (Object) packageR.verboseSizeLabel)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getChangeLog() {
        return this.changeLog;
    }

    public final Boolean getHaveAdNetwork() {
        return this.haveAdNetwork;
    }

    public final int getId() {
        return this.id;
    }

    public final String getLastUpdated() {
        return this.lastUpdated;
    }

    public final Long getLastUpdatedTimeFromEpoch() {
        return this.lastUpdatedTimeFromEpoch;
    }

    public final String getMinSdkVersion() {
        return this.minSdkVersion;
    }

    public final List<PackageDiff> getPackageDiffs() {
        return this.packageDiffs;
    }

    public final String getPackageHash() {
        return this.packageHash;
    }

    public final Long getPackageSize() {
        return this.packageSize;
    }

    public final String getPackageToken() {
        return this.packageToken;
    }

    public final List<String> getPermissionDescriptions() {
        return this.permissionDescriptions;
    }

    public final List<String> getPermissions() {
        return this.permissions;
    }

    public final String getVerboseSize() {
        return this.verboseSize;
    }

    public final String getVerboseSizeLabel() {
        return this.verboseSizeLabel;
    }

    public final long getVersionCode() {
        return this.versionCode;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public int hashCode() {
        int i2 = this.id * 31;
        Long l2 = this.packageSize;
        int i3 = 0;
        int hashCode = (i2 + (l2 != null ? l2.hashCode() : 0)) * 31;
        String str = this.packageToken;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.packageHash;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        long j2 = this.versionCode;
        int i4 = (((hashCode2 + hashCode3) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        String str3 = this.versionName;
        int hashCode4 = (i4 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.changeLog;
        int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.minSdkVersion;
        int hashCode6 = (hashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.lastUpdated;
        int hashCode7 = (hashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31;
        Long l3 = this.lastUpdatedTimeFromEpoch;
        int hashCode8 = (hashCode7 + (l3 != null ? l3.hashCode() : 0)) * 31;
        List<String> list = this.permissions;
        int hashCode9 = (hashCode8 + (list != null ? list.hashCode() : 0)) * 31;
        Boolean bool = this.haveAdNetwork;
        int hashCode10 = (hashCode9 + (bool != null ? bool.hashCode() : 0)) * 31;
        List<PackageDiff> list2 = this.packageDiffs;
        int hashCode11 = (hashCode10 + (list2 != null ? list2.hashCode() : 0)) * 31;
        List<String> list3 = this.permissionDescriptions;
        int hashCode12 = (hashCode11 + (list3 != null ? list3.hashCode() : 0)) * 31;
        String str7 = this.verboseSize;
        int hashCode13 = (hashCode12 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.verboseSizeLabel;
        if (str8 != null) {
            i3 = str8.hashCode();
        }
        return hashCode13 + i3;
    }

    public String toString() {
        return "Package(id=" + this.id + ", packageSize=" + this.packageSize + ", packageToken=" + this.packageToken + ", packageHash=" + this.packageHash + ", versionCode=" + this.versionCode + ", versionName=" + this.versionName + ", changeLog=" + this.changeLog + ", minSdkVersion=" + this.minSdkVersion + ", lastUpdated=" + this.lastUpdated + ", lastUpdatedTimeFromEpoch=" + this.lastUpdatedTimeFromEpoch + ", permissions=" + this.permissions + ", haveAdNetwork=" + this.haveAdNetwork + ", packageDiffs=" + this.packageDiffs + ", permissionDescriptions=" + this.permissionDescriptions + ", verboseSize=" + this.verboseSize + ", verboseSizeLabel=" + this.verboseSizeLabel + ")";
    }
}
