package com.farsitel.bazaar.data.entity;

import h.f.b.f;
import h.f.b.j;

/* compiled from: MaliciousAppEntity.kt */
public final class MaliciousAppEntity {
    public final boolean isNotified;
    public final String packageName;
    public final String reasonInfo;
    public final String reasonTitle;
    public final long versionCode;
    public final String versionName;

    public MaliciousAppEntity(String str, String str2, long j2, String str3, String str4, boolean z) {
        j.b(str, "packageName");
        this.packageName = str;
        this.versionName = str2;
        this.versionCode = j2;
        this.reasonTitle = str3;
        this.reasonInfo = str4;
        this.isNotified = z;
    }

    public static /* synthetic */ MaliciousAppEntity copy$default(MaliciousAppEntity maliciousAppEntity, String str, String str2, long j2, String str3, String str4, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = maliciousAppEntity.packageName;
        }
        if ((i2 & 2) != 0) {
            str2 = maliciousAppEntity.versionName;
        }
        String str5 = str2;
        if ((i2 & 4) != 0) {
            j2 = maliciousAppEntity.versionCode;
        }
        long j3 = j2;
        if ((i2 & 8) != 0) {
            str3 = maliciousAppEntity.reasonTitle;
        }
        String str6 = str3;
        if ((i2 & 16) != 0) {
            str4 = maliciousAppEntity.reasonInfo;
        }
        String str7 = str4;
        if ((i2 & 32) != 0) {
            z = maliciousAppEntity.isNotified;
        }
        return maliciousAppEntity.copy(str, str5, j3, str6, str7, z);
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

    public final boolean component6() {
        return this.isNotified;
    }

    public final MaliciousAppEntity copy(String str, String str2, long j2, String str3, String str4, boolean z) {
        j.b(str, "packageName");
        MaliciousAppEntity maliciousAppEntity = new MaliciousAppEntity(str, str2, j2, str3, str4, z);
        return maliciousAppEntity;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MaliciousAppEntity) {
                MaliciousAppEntity maliciousAppEntity = (MaliciousAppEntity) obj;
                if (j.a((Object) this.packageName, (Object) maliciousAppEntity.packageName) && j.a((Object) this.versionName, (Object) maliciousAppEntity.versionName)) {
                    if ((this.versionCode == maliciousAppEntity.versionCode) && j.a((Object) this.reasonTitle, (Object) maliciousAppEntity.reasonTitle) && j.a((Object) this.reasonInfo, (Object) maliciousAppEntity.reasonInfo)) {
                        if (this.isNotified == maliciousAppEntity.isNotified) {
                            return true;
                        }
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
        int i4 = (hashCode3 + i2) * 31;
        boolean z = this.isNotified;
        if (z) {
            z = true;
        }
        return i4 + (z ? 1 : 0);
    }

    public final boolean isNotified() {
        return this.isNotified;
    }

    public final MaliciousApp toMaliciousApp() {
        MaliciousApp maliciousApp = new MaliciousApp(this.packageName, this.versionName, this.versionCode, this.reasonTitle, this.reasonInfo, this.isNotified);
        return maliciousApp;
    }

    public String toString() {
        return "MaliciousAppEntity(packageName=" + this.packageName + ", versionName=" + this.versionName + ", versionCode=" + this.versionCode + ", reasonTitle=" + this.reasonTitle + ", reasonInfo=" + this.reasonInfo + ", isNotified=" + this.isNotified + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MaliciousAppEntity(String str, String str2, long j2, String str3, String str4, boolean z, int i2, f fVar) {
        this(str, str2, j2, str3, str4, (i2 & 32) != 0 ? false : z);
    }
}
