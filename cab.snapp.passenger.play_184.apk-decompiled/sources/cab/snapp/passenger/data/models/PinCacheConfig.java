package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class PinCacheConfig {
    @c("cache_geohash_characters")
    private int cacheGeohashCharacters;
    @c("cache_reverse_geocode_ttl")
    private int cacheReverseGeocodeTtl;
    @c("cache_vehicles_ttl")
    private int cacheVehiclesTtl;
    @c("delay_in_request")
    private int delayInRequest;

    public int getCacheVehiclesTtl() {
        return this.cacheVehiclesTtl;
    }

    public void setCacheVehiclesTtl(int i) {
        this.cacheVehiclesTtl = i;
    }

    public int getCacheReverseGeocodeTtl() {
        return this.cacheReverseGeocodeTtl;
    }

    public void setCacheReverseGeocodeTtl(int i) {
        this.cacheReverseGeocodeTtl = i;
    }

    public int getCacheGeohashCharacters() {
        return this.cacheGeohashCharacters;
    }

    public void setCacheGeohashCharacters(int i) {
        this.cacheGeohashCharacters = i;
    }

    public int getDelayInRequest() {
        return this.delayInRequest;
    }

    public void setDelayInRequest(int i) {
        this.delayInRequest = i;
    }

    public String toString() {
        return "PinCacheConfig{cacheVehiclesTtl=" + this.cacheVehiclesTtl + ", cacheReverseGeocodeTtl=" + this.cacheReverseGeocodeTtl + ", cacheGeohashCharacters=" + this.cacheGeohashCharacters + ", delayInRequest=" + this.delayInRequest + '}';
    }
}
