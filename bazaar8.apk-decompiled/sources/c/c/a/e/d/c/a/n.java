package c.c.a.e.d.c.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.Package;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AppDetailResponseDto.kt */
public final class n {
    @c("changeLog")
    public final String changeLog;
    @c("haveAdNetwork")
    public final Boolean haveAdNetwork;
    @c("packageID")
    public final int id;
    @c("lastUpdated")
    public final String lastUpdated;
    @c("lastUpdatedTimeFromEpoch")
    public final Long lastUpdatedTimeFromEpoch;
    @c("minimumSDKVersion")
    public final String minSdkVersion;
    @c("packageDiffs")
    public final List<m> packageDiffs;
    @c("packageHash")
    public final String packageHash;
    @c("packageSize")
    public final Long packageSize;
    @c("packageToken")
    public final String packageToken;
    @c("permissionDescriptions")
    public final List<String> permissionDescriptions;
    @c("permissions")
    public final List<String> permissions;
    @c("verboseSize")
    public final String verboseSize;
    @c("verboseSizeLabel")
    public final String verboseSizeLabel;
    @c("versionCode")
    public final long versionCode;
    @c("versionName")
    public final String versionName;

    public final Package a() {
        Boolean bool;
        ArrayList arrayList;
        int i2 = this.id;
        Long l2 = this.packageSize;
        String str = this.packageToken;
        String str2 = this.packageHash;
        long j2 = this.versionCode;
        String str3 = this.versionName;
        String str4 = this.changeLog;
        String str5 = this.minSdkVersion;
        String str6 = this.lastUpdated;
        Long l3 = this.lastUpdatedTimeFromEpoch;
        List<String> list = this.permissions;
        Boolean bool2 = this.haveAdNetwork;
        List<m> list2 = this.packageDiffs;
        if (list2 != null) {
            bool = bool2;
            arrayList = new ArrayList(m.a(list2, 10));
            for (m a2 : list2) {
                arrayList.add(a2.a());
            }
        } else {
            bool = bool2;
            arrayList = null;
        }
        Package packageR = new Package(i2, l2, str, str2, j2, str3, str4, str5, str6, l3, list, bool, arrayList, this.permissionDescriptions, this.verboseSize, this.verboseSizeLabel);
        return packageR;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof n) {
                n nVar = (n) obj;
                if ((this.id == nVar.id) && j.a((Object) this.packageSize, (Object) nVar.packageSize) && j.a((Object) this.packageToken, (Object) nVar.packageToken) && j.a((Object) this.packageHash, (Object) nVar.packageHash)) {
                    if (!(this.versionCode == nVar.versionCode) || !j.a((Object) this.versionName, (Object) nVar.versionName) || !j.a((Object) this.changeLog, (Object) nVar.changeLog) || !j.a((Object) this.minSdkVersion, (Object) nVar.minSdkVersion) || !j.a((Object) this.lastUpdated, (Object) nVar.lastUpdated) || !j.a((Object) this.lastUpdatedTimeFromEpoch, (Object) nVar.lastUpdatedTimeFromEpoch) || !j.a((Object) this.permissions, (Object) nVar.permissions) || !j.a((Object) this.haveAdNetwork, (Object) nVar.haveAdNetwork) || !j.a((Object) this.packageDiffs, (Object) nVar.packageDiffs) || !j.a((Object) this.permissionDescriptions, (Object) nVar.permissionDescriptions) || !j.a((Object) this.verboseSize, (Object) nVar.verboseSize) || !j.a((Object) this.verboseSizeLabel, (Object) nVar.verboseSizeLabel)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
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
        List<m> list2 = this.packageDiffs;
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
        return "PackageDto(id=" + this.id + ", packageSize=" + this.packageSize + ", packageToken=" + this.packageToken + ", packageHash=" + this.packageHash + ", versionCode=" + this.versionCode + ", versionName=" + this.versionName + ", changeLog=" + this.changeLog + ", minSdkVersion=" + this.minSdkVersion + ", lastUpdated=" + this.lastUpdated + ", lastUpdatedTimeFromEpoch=" + this.lastUpdatedTimeFromEpoch + ", permissions=" + this.permissions + ", haveAdNetwork=" + this.haveAdNetwork + ", packageDiffs=" + this.packageDiffs + ", permissionDescriptions=" + this.permissionDescriptions + ", verboseSize=" + this.verboseSize + ", verboseSizeLabel=" + this.verboseSizeLabel + ")";
    }
}
