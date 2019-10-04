package com.farsitel.bazaar.data.entity;

import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import h.f.b.j;

/* compiled from: LocalDownloadedApp.kt */
public final class LocalDownloadedApp {
    public final long createdAt;
    public final boolean isFree;
    public final String name;
    public final String packageName;

    public LocalDownloadedApp(String str, String str2, boolean z, long j2) {
        j.b(str, "packageName");
        j.b(str2, DefaultAppMeasurementEventListenerRegistrar.NAME);
        this.packageName = str;
        this.name = str2;
        this.isFree = z;
        this.createdAt = j2;
    }

    public static /* synthetic */ LocalDownloadedApp copy$default(LocalDownloadedApp localDownloadedApp, String str, String str2, boolean z, long j2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = localDownloadedApp.packageName;
        }
        if ((i2 & 2) != 0) {
            str2 = localDownloadedApp.name;
        }
        String str3 = str2;
        if ((i2 & 4) != 0) {
            z = localDownloadedApp.isFree;
        }
        boolean z2 = z;
        if ((i2 & 8) != 0) {
            j2 = localDownloadedApp.createdAt;
        }
        return localDownloadedApp.copy(str, str3, z2, j2);
    }

    public final String component1() {
        return this.packageName;
    }

    public final String component2() {
        return this.name;
    }

    public final boolean component3() {
        return this.isFree;
    }

    public final long component4() {
        return this.createdAt;
    }

    public final LocalDownloadedApp copy(String str, String str2, boolean z, long j2) {
        j.b(str, "packageName");
        j.b(str2, DefaultAppMeasurementEventListenerRegistrar.NAME);
        LocalDownloadedApp localDownloadedApp = new LocalDownloadedApp(str, str2, z, j2);
        return localDownloadedApp;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof LocalDownloadedApp) {
                LocalDownloadedApp localDownloadedApp = (LocalDownloadedApp) obj;
                if (j.a((Object) this.packageName, (Object) localDownloadedApp.packageName) && j.a((Object) this.name, (Object) localDownloadedApp.name)) {
                    if (this.isFree == localDownloadedApp.isFree) {
                        if (this.createdAt == localDownloadedApp.createdAt) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final long getCreatedAt() {
        return this.createdAt;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public int hashCode() {
        String str = this.packageName;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.name;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        int i3 = (hashCode + i2) * 31;
        boolean z = this.isFree;
        if (z) {
            z = true;
        }
        long j2 = this.createdAt;
        return ((i3 + (z ? 1 : 0)) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final boolean isFree() {
        return this.isFree;
    }

    public String toString() {
        return "LocalDownloadedApp(packageName=" + this.packageName + ", name=" + this.name + ", isFree=" + this.isFree + ", createdAt=" + this.createdAt + ")";
    }
}
