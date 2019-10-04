package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class PlaceDetailGeometry {
    @c("location")
    private PlaceDetailLocation location;

    public PlaceDetailLocation getLocation() {
        return this.location;
    }

    public void setLocation(PlaceDetailLocation placeDetailLocation) {
        this.location = placeDetailLocation;
    }

    public String toString() {
        return "PlaceDetailGeometry{location=" + this.location + '}';
    }
}
