package com.farsitel.bazaar.data.entity;

/* compiled from: Location.kt */
public final class Location {
    public final double latitude;
    public final double longitude;

    public Location(double d2, double d3) {
        this.latitude = d2;
        this.longitude = d3;
    }

    public static /* synthetic */ Location copy$default(Location location, double d2, double d3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            d2 = location.latitude;
        }
        if ((i2 & 2) != 0) {
            d3 = location.longitude;
        }
        return location.copy(d2, d3);
    }

    public final double component1() {
        return this.latitude;
    }

    public final double component2() {
        return this.longitude;
    }

    public final Location copy(double d2, double d3) {
        return new Location(d2, d3);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (java.lang.Double.compare(r4.longitude, r5.longitude) == 0) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r5) {
        /*
            r4 = this;
            if (r4 == r5) goto L_0x001f
            boolean r0 = r5 instanceof com.farsitel.bazaar.data.entity.Location
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.data.entity.Location r5 = (com.farsitel.bazaar.data.entity.Location) r5
            double r0 = r4.latitude
            double r2 = r5.latitude
            int r0 = java.lang.Double.compare(r0, r2)
            if (r0 != 0) goto L_0x001d
            double r0 = r4.longitude
            double r2 = r5.longitude
            int r5 = java.lang.Double.compare(r0, r2)
            if (r5 != 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r5 = 0
            return r5
        L_0x001f:
            r5 = 1
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.Location.equals(java.lang.Object):boolean");
    }

    public final double getLatitude() {
        return this.latitude;
    }

    public final double getLongitude() {
        return this.longitude;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.latitude);
        long doubleToLongBits2 = Double.doubleToLongBits(this.longitude);
        return (((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
    }

    public String toString() {
        return "Location(latitude=" + this.latitude + ", longitude=" + this.longitude + ")";
    }
}
