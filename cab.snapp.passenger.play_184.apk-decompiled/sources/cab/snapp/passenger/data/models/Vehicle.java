package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class Vehicle {
    @c("bearing")
    private int bearing;
    @c("id")
    private String id;
    @c("lat")
    private double latestLat;
    @c("lng")
    private double latestLng;

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public double getLatestLat() {
        return this.latestLat;
    }

    public void setLatestLat(double d) {
        this.latestLat = d;
    }

    public double getLatestLng() {
        return this.latestLng;
    }

    public void setLatestLng(double d) {
        this.latestLng = d;
    }

    public int getBearing() {
        return this.bearing;
    }

    public void setBearing(int i) {
        this.bearing = i;
    }
}
