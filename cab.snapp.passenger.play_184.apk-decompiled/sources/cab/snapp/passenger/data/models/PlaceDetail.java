package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class PlaceDetail {
    @c("formatted_address")
    private String address;
    @c("geometry")
    private PlaceDetailGeometry geometry;
    @c("name")
    private String name;
    @c("place_id")
    private String placeId;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public PlaceDetailGeometry getGeometry() {
        return this.geometry;
    }

    public void setGeometry(PlaceDetailGeometry placeDetailGeometry) {
        this.geometry = placeDetailGeometry;
    }

    public String getPlaceId() {
        return this.placeId;
    }

    public void setPlaceId(String str) {
        this.placeId = str;
    }

    public String toString() {
        return "PlaceDetail{name='" + this.name + '\'' + ", address='" + this.address + '\'' + ", geometry=" + this.geometry + ", placeId='" + this.placeId + '\'' + '}';
    }
}
