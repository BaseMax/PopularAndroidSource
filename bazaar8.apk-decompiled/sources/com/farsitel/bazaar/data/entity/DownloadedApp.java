package com.farsitel.bazaar.data.entity;

import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import h.f.b.j;

/* compiled from: Application.kt */
public final class DownloadedApp extends Application {
    public final boolean isFree;
    public final String name;
    public final String packageName;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DownloadedApp(String str, String str2, boolean z) {
        super(null);
        j.b(str, "packageName");
        j.b(str2, DefaultAppMeasurementEventListenerRegistrar.NAME);
        this.packageName = str;
        this.name = str2;
        this.isFree = z;
    }

    public static /* synthetic */ DownloadedApp copy$default(DownloadedApp downloadedApp, String str, String str2, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = downloadedApp.getPackageName();
        }
        if ((i2 & 2) != 0) {
            str2 = downloadedApp.getName();
        }
        if ((i2 & 4) != 0) {
            z = downloadedApp.isFree();
        }
        return downloadedApp.copy(str, str2, z);
    }

    public final String component1() {
        return getPackageName();
    }

    public final String component2() {
        return getName();
    }

    public final boolean component3() {
        return isFree();
    }

    public final DownloadedApp copy(String str, String str2, boolean z) {
        j.b(str, "packageName");
        j.b(str2, DefaultAppMeasurementEventListenerRegistrar.NAME);
        return new DownloadedApp(str, str2, z);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DownloadedApp) {
                DownloadedApp downloadedApp = (DownloadedApp) obj;
                if (j.a((Object) getPackageName(), (Object) downloadedApp.getPackageName()) && j.a((Object) getName(), (Object) downloadedApp.getName())) {
                    if (isFree() == downloadedApp.isFree()) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public String getName() {
        return this.name;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int hashCode() {
        String packageName2 = getPackageName();
        int i2 = 0;
        int hashCode = (packageName2 != null ? packageName2.hashCode() : 0) * 31;
        String name2 = getName();
        if (name2 != null) {
            i2 = name2.hashCode();
        }
        int i3 = (hashCode + i2) * 31;
        boolean isFree2 = isFree();
        if (isFree2) {
            isFree2 = true;
        }
        return i3 + (isFree2 ? 1 : 0);
    }

    public boolean isFree() {
        return this.isFree;
    }

    public String toString() {
        return "DownloadedApp(packageName=" + getPackageName() + ", name=" + getName() + ", isFree=" + isFree() + ")";
    }
}
