package com.farsitel.bazaar.ui.upgradableapps;

import com.farsitel.bazaar.common.model.page.FeatureHeaderItem;

/* compiled from: UpgradableAppsAdapter.kt */
public final class UpgradableAppsHeaderItem extends FeatureHeaderItem {
    public boolean showInstall;
    public final int upgradableAppCount;

    public UpgradableAppsHeaderItem(int i2, boolean z) {
        this.upgradableAppCount = i2;
        this.showInstall = z;
    }

    public final boolean a() {
        return this.showInstall;
    }

    public final int b() {
        return this.upgradableAppCount;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof UpgradableAppsHeaderItem) {
                UpgradableAppsHeaderItem upgradableAppsHeaderItem = (UpgradableAppsHeaderItem) obj;
                if (this.upgradableAppCount == upgradableAppsHeaderItem.upgradableAppCount) {
                    if (this.showInstall == upgradableAppsHeaderItem.showInstall) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int a2 = Integer.valueOf(this.upgradableAppCount).hashCode() * 31;
        boolean z = this.showInstall;
        if (z) {
            z = true;
        }
        return a2 + (z ? 1 : 0);
    }

    public String toString() {
        return "UpgradableAppsHeaderItem(upgradableAppCount=" + this.upgradableAppCount + ", showInstall=" + this.showInstall + ")";
    }

    public final void a(boolean z) {
        this.showInstall = z;
    }
}
