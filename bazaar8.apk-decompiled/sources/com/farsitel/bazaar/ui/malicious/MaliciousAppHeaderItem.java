package com.farsitel.bazaar.ui.malicious;

import com.farsitel.bazaar.common.model.page.FeatureHeaderItem;

/* compiled from: MaliciousAdapter.kt */
public final class MaliciousAppHeaderItem extends FeatureHeaderItem {
    public final int maliciousAppCount;

    public MaliciousAppHeaderItem(int i2) {
        this.maliciousAppCount = i2;
    }

    public final int a() {
        return this.maliciousAppCount;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MaliciousAppHeaderItem) {
                if (this.maliciousAppCount == ((MaliciousAppHeaderItem) obj).maliciousAppCount) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Integer.valueOf(this.maliciousAppCount).hashCode();
    }

    public String toString() {
        return "MaliciousAppHeaderItem(maliciousAppCount=" + this.maliciousAppCount + ")";
    }
}
