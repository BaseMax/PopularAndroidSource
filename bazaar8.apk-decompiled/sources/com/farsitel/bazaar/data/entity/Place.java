package com.farsitel.bazaar.data.entity;

import h.f.b.f;
import h.f.b.j;
import h.k.m;

/* compiled from: Place.kt */
public final class Place {
    public static final Companion Companion = new Companion(null);
    public static final String NA = "NA";
    public final String city;
    public final String country;
    public final String countryCode;
    public final boolean isInIran = m.b(this.countryCode, "ir", true);
    public final Location location;
    public final String province;
    public final long updatedAt;

    /* compiled from: Place.kt */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    public Place(String str, String str2, String str3, String str4, Location location2, long j2) {
        j.b(str, "city");
        j.b(str2, "province");
        j.b(str3, "country");
        j.b(str4, "countryCode");
        j.b(location2, "location");
        this.city = str;
        this.province = str2;
        this.country = str3;
        this.countryCode = str4;
        this.location = location2;
        this.updatedAt = j2;
    }

    public static /* synthetic */ Place copy$default(Place place, String str, String str2, String str3, String str4, Location location2, long j2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = place.city;
        }
        if ((i2 & 2) != 0) {
            str2 = place.province;
        }
        String str5 = str2;
        if ((i2 & 4) != 0) {
            str3 = place.country;
        }
        String str6 = str3;
        if ((i2 & 8) != 0) {
            str4 = place.countryCode;
        }
        String str7 = str4;
        if ((i2 & 16) != 0) {
            location2 = place.location;
        }
        Location location3 = location2;
        if ((i2 & 32) != 0) {
            j2 = place.updatedAt;
        }
        return place.copy(str, str5, str6, str7, location3, j2);
    }

    public final String component1() {
        return this.city;
    }

    public final String component2() {
        return this.province;
    }

    public final String component3() {
        return this.country;
    }

    public final String component4() {
        return this.countryCode;
    }

    public final Location component5() {
        return this.location;
    }

    public final long component6() {
        return this.updatedAt;
    }

    public final Place copy(String str, String str2, String str3, String str4, Location location2, long j2) {
        j.b(str, "city");
        j.b(str2, "province");
        j.b(str3, "country");
        j.b(str4, "countryCode");
        j.b(location2, "location");
        Place place = new Place(str, str2, str3, str4, location2, j2);
        return place;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Place) {
                Place place = (Place) obj;
                if (j.a((Object) this.city, (Object) place.city) && j.a((Object) this.province, (Object) place.province) && j.a((Object) this.country, (Object) place.country) && j.a((Object) this.countryCode, (Object) place.countryCode) && j.a((Object) this.location, (Object) place.location)) {
                    if (this.updatedAt == place.updatedAt) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getCity() {
        return this.city;
    }

    public final String getCountry() {
        return this.country;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final Location getLocation() {
        return this.location;
    }

    public final String getProvince() {
        return this.province;
    }

    public final long getUpdatedAt() {
        return this.updatedAt;
    }

    public int hashCode() {
        String str = this.city;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.province;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.country;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.countryCode;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        Location location2 = this.location;
        if (location2 != null) {
            i2 = location2.hashCode();
        }
        long j2 = this.updatedAt;
        return ((hashCode4 + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final boolean isInIran() {
        return this.isInIran;
    }

    public String toString() {
        return "Place(city=" + this.city + ", province=" + this.province + ", country=" + this.country + ", countryCode=" + this.countryCode + ", location=" + this.location + ", updatedAt=" + this.updatedAt + ")";
    }
}
