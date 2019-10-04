package com.farsitel.bazaar.data.entity;

import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.farsitel.bazaar.common.model.page.ListItem;
import h.f.b.f;
import h.f.b.j;

/* compiled from: Application.kt */
public final class UpgradableApp extends Application {
    public static final Companion Companion = new Companion(null);
    public final boolean isFree;
    public final boolean isUpdateEnabled;
    public final boolean isUpdateNotified;
    public final String name;
    public final String packageName;
    public final int price;
    public final String priceString;
    public final long versionCode;

    /* compiled from: Application.kt */
    public static final class Companion {
        public Companion() {
        }

        public final UpgradableApp fromAppItem(ListItem.App app) {
            j.b(app, "item");
            String packageName = app.getApp().getPackageName();
            String appName = app.getApp().getAppName();
            boolean isFree = app.getApp().isFree();
            Long installedVersionCode = app.getApp().getInstalledVersionCode();
            UpgradableApp upgradableApp = new UpgradableApp(packageName, appName, isFree, installedVersionCode != null ? installedVersionCode.longValue() : 0, false, false);
            return upgradableApp;
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public UpgradableApp(String str, String str2, boolean z, long j2, boolean z2, boolean z3) {
        super(null);
        j.b(str, "packageName");
        j.b(str2, DefaultAppMeasurementEventListenerRegistrar.NAME);
        this.packageName = str;
        this.name = str2;
        this.isFree = z;
        this.versionCode = j2;
        this.isUpdateNotified = z2;
        this.isUpdateEnabled = z3;
        this.price = isFree() ? 0 : AnswersRetryFilesSender.BACKOFF_MS;
        this.priceString = isFree() ? "" : "1000";
    }

    public static /* synthetic */ UpgradableApp copy$default(UpgradableApp upgradableApp, String str, String str2, boolean z, long j2, boolean z2, boolean z3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = upgradableApp.getPackageName();
        }
        if ((i2 & 2) != 0) {
            str2 = upgradableApp.getName();
        }
        String str3 = str2;
        if ((i2 & 4) != 0) {
            z = upgradableApp.isFree();
        }
        boolean z4 = z;
        if ((i2 & 8) != 0) {
            j2 = upgradableApp.versionCode;
        }
        long j3 = j2;
        if ((i2 & 16) != 0) {
            z2 = upgradableApp.isUpdateNotified;
        }
        boolean z5 = z2;
        if ((i2 & 32) != 0) {
            z3 = upgradableApp.isUpdateEnabled;
        }
        return upgradableApp.copy(str, str3, z4, j3, z5, z3);
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

    public final long component4() {
        return this.versionCode;
    }

    public final boolean component5() {
        return this.isUpdateNotified;
    }

    public final boolean component6() {
        return this.isUpdateEnabled;
    }

    public final UpgradableApp copy(String str, String str2, boolean z, long j2, boolean z2, boolean z3) {
        j.b(str, "packageName");
        j.b(str2, DefaultAppMeasurementEventListenerRegistrar.NAME);
        UpgradableApp upgradableApp = new UpgradableApp(str, str2, z, j2, z2, z3);
        return upgradableApp;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof UpgradableApp) {
                UpgradableApp upgradableApp = (UpgradableApp) obj;
                if (j.a((Object) getPackageName(), (Object) upgradableApp.getPackageName()) && j.a((Object) getName(), (Object) upgradableApp.getName())) {
                    if (isFree() == upgradableApp.isFree()) {
                        if (this.versionCode == upgradableApp.versionCode) {
                            if (this.isUpdateNotified == upgradableApp.isUpdateNotified) {
                                if (this.isUpdateEnabled == upgradableApp.isUpdateEnabled) {
                                    return true;
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

    public String getName() {
        return this.name;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public final int getPrice() {
        return this.price;
    }

    public final String getPriceString() {
        return this.priceString;
    }

    public final long getVersionCode() {
        return this.versionCode;
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
        long j2 = this.versionCode;
        int i4 = (((i3 + (isFree2 ? 1 : 0)) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        boolean z = this.isUpdateNotified;
        if (z) {
            z = true;
        }
        int i5 = (i4 + (z ? 1 : 0)) * 31;
        boolean z2 = this.isUpdateEnabled;
        if (z2) {
            z2 = true;
        }
        return i5 + (z2 ? 1 : 0);
    }

    public boolean isFree() {
        return this.isFree;
    }

    public final boolean isUpdateEnabled() {
        return this.isUpdateEnabled;
    }

    public final boolean isUpdateNotified() {
        return this.isUpdateNotified;
    }

    public String toString() {
        return "UpgradableApp(packageName=" + getPackageName() + ", name=" + getName() + ", isFree=" + isFree() + ", versionCode=" + this.versionCode + ", isUpdateNotified=" + this.isUpdateNotified + ", isUpdateEnabled=" + this.isUpdateEnabled + ")";
    }
}
