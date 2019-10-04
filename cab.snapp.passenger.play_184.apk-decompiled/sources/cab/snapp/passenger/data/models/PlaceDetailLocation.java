package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class PlaceDetailLocation {
    @c("lat")
    private double latitude;
    @c("lng")
    private double longitude;

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
        return "PlaceDetailLocation{latitude=" + this.latitude + ", longitude=" + this.longitude + '}';
    }
}
