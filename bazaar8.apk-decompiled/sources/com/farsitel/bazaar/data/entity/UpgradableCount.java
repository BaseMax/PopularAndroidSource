package com.farsitel.bazaar.data.entity;

/* compiled from: Application.kt */
public final class UpgradableCount {
    public final int maliciousAppCount;
    public final int maliciousAppNotifier;
    public final boolean needToShowBadge;
    public final int upgradableAppNotifier;
    public final int upgradeableAppCount;

    public UpgradableCount(int i2, int i3, int i4, int i5) {
        this.upgradeableAppCount = i2;
        this.maliciousAppCount = i3;
        this.upgradableAppNotifier = i4;
        this.maliciousAppNotifier = i5;
        this.needToShowBadge = this.maliciousAppNotifier + this.upgradableAppNotifier > 0;
    }

    public static /* synthetic */ UpgradableCount copy$default(UpgradableCount upgradableCount, int i2, int i3, int i4, int i5, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            i2 = upgradableCount.upgradeableAppCount;
        }
        if ((i6 & 2) != 0) {
            i3 = upgradableCount.maliciousAppCount;
        }
        if ((i6 & 4) != 0) {
            i4 = upgradableCount.upgradableAppNotifier;
        }
        if ((i6 & 8) != 0) {
            i5 = upgradableCount.maliciousAppNotifier;
        }
        return upgradableCount.copy(i2, i3, i4, i5);
    }

    public final int component1() {
        return this.upgradeableAppCount;
    }

    public final int component2() {
        return this.maliciousAppCount;
    }

    public final int component3() {
        return this.upgradableAppNotifier;
    }

    public final int component4() {
        return this.maliciousAppNotifier;
    }

    public final UpgradableCount copy(int i2, int i3, int i4, int i5) {
        return new UpgradableCount(i2, i3, i4, i5);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof UpgradableCount) {
                UpgradableCount upgradableCount = (UpgradableCount) obj;
                if (this.upgradeableAppCount == upgradableCount.upgradeableAppCount) {
                    if (this.maliciousAppCount == upgradableCount.maliciousAppCount) {
                        if (this.upgradableAppNotifier == upgradableCount.upgradableAppNotifier) {
                            if (this.maliciousAppNotifier == upgradableCount.maliciousAppNotifier) {
                                return true;
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int getMaliciousAppCount() {
        return this.maliciousAppCount;
    }

    public final int getMaliciousAppNotifier() {
        return this.maliciousAppNotifier;
    }

    public final boolean getNeedToShowBadge() {
        return this.needToShowBadge;
    }

    public final int getUpgradableAppNotifier() {
        return this.upgradableAppNotifier;
    }

    public final int getUpgradeableAppCount() {
        return this.upgradeableAppCount;
    }

    public int hashCode() {
        return (((((this.upgradeableAppCount * 31) + this.maliciousAppCount) * 31) + this.upgradableAppNotifier) * 31) + this.maliciousAppNotifier;
    }

    public String toString() {
        return "UpgradableCount(upgradeableAppCount=" + this.upgradeableAppCount + ", maliciousAppCount=" + this.maliciousAppCount + ", upgradableAppNotifier=" + this.upgradableAppNotifier + ", maliciousAppNotifier=" + this.maliciousAppNotifier + ")";
    }
}
