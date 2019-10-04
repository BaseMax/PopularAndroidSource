package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class PlaceLatLng {
    @c("latitude")
    private double latitude;
    @c("longitude")
    private double longitude;

    public PlaceLatLng() {
    }

    public PlaceLatLng(double d, double d2) {
        this.latitude = d;
        this.longitude = d2;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public void setLatitude(double d) {
        this.latitude = d;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public void setLongitude(double d) {
        this.longitude = d;
    }

    public String toString() {
        return "PlaceLatLng{latitude=" + this.latitude + ", longitude=" + this.longitude + '}';
    }
}
