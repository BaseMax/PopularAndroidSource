package com.farsitel.bazaar.common.model.cinema;

import h.f.b.j;
import java.io.Serializable;

/* compiled from: Cinema.kt */
public final class RefreshData implements Serializable {
    public final int rate;
    public final String vendorData;

    public RefreshData(int i2, String str) {
        this.rate = i2;
        this.vendorData = str;
    }

    public static /* synthetic */ RefreshData copy$default(RefreshData refreshData, int i2, String str, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = refreshData.rate;
        }
        if ((i3 & 2) != 0) {
            str = refreshData.vendorData;
        }
        return refreshData.copy(i2, str);
    }

    public final int component1() {
        return this.rate;
    }

    public final String component2() {
        return this.vendorData;
    }

    public final RefreshData copy(int i2, String str) {
        return new RefreshData(i2, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RefreshData) {
                RefreshData refreshData = (RefreshData) obj;
                if (!(this.rate == refreshData.rate) || !j.a((Object) this.vendorData, (Object) refreshData.vendorData)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public final int getRate() {
        return this.rate;
    }

    public final String getVendorData() {
        return this.vendorData;
    }

    public int hashCode() {
        int i2 = this.rate * 31;
        String str = this.vendorData;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "RefreshData(rate=" + this.rate + ", vendorData=" + this.vendorData + ")";
    }
}
