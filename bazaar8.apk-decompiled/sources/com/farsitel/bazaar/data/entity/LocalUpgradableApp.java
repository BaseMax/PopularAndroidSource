package com.farsitel.bazaar.data.entity;

import h.f.b.f;
import h.f.b.j;

/* compiled from: LocalUpgradableApp.kt */
public final class LocalUpgradableApp {
    public final boolean isFree;
    public final boolean isNotified;
    public final boolean isUpdateEnabled;
    public final long lastUpdateTime;
    public final String packageName;
    public final long versionCode;

    public LocalUpgradableApp(String str, long j2, boolean z, boolean z2, boolean z3, long j3) {
        j.b(str, "packageName");
        this.packageName = str;
        this.versionCode = j2;
        this.isFree = z;
        this.isNotified = z2;
        this.isUpdateEnabled = z3;
        this.lastUpdateTime = j3;
    }

    public static /* synthetic */ LocalUpgradableApp copy$default(LocalUpgradableApp localUpgradableApp, String str, long j2, boolean z, boolean z2, boolean z3, long j3, int i2, Object obj) {
        LocalUpgradableApp localUpgradableApp2 = localUpgradableApp;
        return localUpgradableApp.copy((i2 & 1) != 0 ? localUpgradableApp2.packageName : str, (i2 & 2) != 0 ? localUpgradableApp2.versionCode : j2, (i2 & 4) != 0 ? localUpgradableApp2.isFree : z, (i2 & 8) != 0 ? localUpgradableApp2.isNotified : z2, (i2 & 16) != 0 ? localUpgradableApp2.isUpdateEnabled : z3, (i2 & 32) != 0 ? localUpgradableApp2.lastUpdateTime : j3);
    }

    public final String component1() {
        return this.packageName;
    }

    public final long component2() {
        return this.versionCode;
    }

    public final boolean component3() {
        return this.isFree;
    }

    public final boolean component4() {
        return this.isNotified;
    }

    public final boolean component5() {
        return this.isUpdateEnabled;
    }

    public final long component6() {
        return this.lastUpdateTime;
    }

    public final LocalUpgradableApp copy(String str, long j2, boolean z, boolean z2, boolean z3, long j3) {
        j.b(str, "packageName");
        LocalUpgradableApp localUpgradableApp = new LocalUpgradableApp(str, j2, z, z2, z3, j3);
        return localUpgradableApp;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof LocalUpgradableApp) {
                LocalUpgradableApp localUpgradableApp = (LocalUpgradableApp) obj;
                if (j.a((Object) this.packageName, (Object) localUpgradableApp.packageName)) {
                    if (this.versionCode == localUpgradableApp.versionCode) {
                        if (this.isFree == localUpgradableApp.isFree) {
                            if (this.isNotified == localUpgradableApp.isNotified) {
                                if (this.isUpdateEnabled == localUpgradableApp.isUpdateEnabled) {
                                    if (this.lastUpdateTime == localUpgradableApp.lastUpdateTime) {
                                        return true;
                                    }
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

    public final long getLastUpdateTime() {
        return this.lastUpdateTime;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final long getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        String str = this.packageName;
        int hashCode = str != null ? str.hashCode() : 0;
        long j2 = this.versionCode;
        int i2 = ((hashCode * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        boolean z = this.isFree;
        if (z) {
            z = true;
        }
        int i3 = (i2 + (z ? 1 : 0)) * 31;
        boolean z2 = this.isNotified;
        if (z2) {
            z2 = true;
        }
        int i4 = (i3 + (z2 ? 1 : 0)) * 31;
        boolean z3 = this.isUpdateEnabled;
        if (z3) {
            z3 = true;
        }
        long j3 = this.lastUpdateTime;
        return ((i4 + (z3 ? 1 : 0)) * 31) + ((int) (j3 ^ (j3 >>> 32)));
    }

    public final boolean isFree() {
        return this.isFree;
    }

    public final boolean isNotified() {
        return this.isNotified;
    }

    public final boolean isUpdateEnabled() {
        return this.isUpdateEnabled;
    }

    public String toString() {
        return "LocalUpgradableApp(packageName=" + this.packageName + ", versionCode=" + this.versionCode + ", isFree=" + this.isFree + ", isNotified=" + this.isNotified + ", isUpdateEnabled=" + this.isUpdateEnabled + ", lastUpdateTime=" + this.lastUpdateTime + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LocalUpgradableApp(String str, long j2, boolean z, boolean z2, boolean z3, long j3, int i2, f fVar) {
        this(str, j2, z, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? true : z3, j3);
    }
}
