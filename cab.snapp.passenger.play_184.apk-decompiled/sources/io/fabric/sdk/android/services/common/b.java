package io.fabric.sdk.android.services.common;

final class b {
    public final String advertisingId;
    public final boolean limitAdTrackingEnabled;

    b(String str, boolean z) {
        this.advertisingId = str;
        this.limitAdTrackingEnabled = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.limitAdTrackingEnabled != bVar.limitAdTrackingEnabled) {
            return false;
        }
        String str = this.advertisingId;
        String str2 = bVar.advertisingId;
        return str == null ? str2 == null : str.equals(str2);
    }

    public final int hashCode() {
        String str = this.advertisingId;
        return ((str != null ? str.hashCode() : 0) * 31) + (this.limitAdTrackingEnabled ? 1 : 0);
    }
}
