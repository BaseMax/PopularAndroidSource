package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class LocationInfo {
    @c("bearing")
    private int bearing;
    @c("lat")
    private double lat;
    @c("lng")
    private double lng;

    public double getLat() {
        return this.lat;
    }

    public void setLat(double d) {
        this.lat = d;
    }

    public double getLng() {
        return this.lng;
    }

    public void setLng(double d) {
        this.lng = d;
    }

    public int getBearing() {
        return this.bearing;
    }

    public void setBearing(int i) {
        this.bearing = i;
    }

    public String toString() {
        return "LocationInfo{org_lat=" + this.lat + ", org_lng=" + this.lng + ", bearing=" + this.bearing + '}';
    }
}
